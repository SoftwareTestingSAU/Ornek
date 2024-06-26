FROM python:3.10.7-alpine

RUN pip install --upgrade pip

COPY ./requirements.txt .
RUN pip install -r requirements.txt

COPY ./myproject /app

WORKDIR /app

COPY ./entrypoint.sh /
ENTRYPOINT [ "sh", "/entrypoint.sh" ]