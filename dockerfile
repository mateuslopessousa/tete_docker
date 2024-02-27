FROM python:3.9

ENV TZ=America/Sao_Paulo \
    APPLICATION_PATH=/app

RUN apt-get update -y

RUN apt-get install nano

RUN python -m pip install --upgrade pip

COPY ./requirements.txt /app/requirements.txt

WORKDIR /app

RUN pip install -r requirements.txt

EXPOSE 8443 8080

CMD ["uvicorn", "main:app", "--reload", "--host 0.0.0.0", "--port 8443"]

# ENTRYPOINT ["uvicorn", "main:app"]