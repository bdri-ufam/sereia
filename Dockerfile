FROM python:3.10

RUN pip install --upgrade pip

WORKDIR /app/

COPY requirements.txt ./requirements.txt

RUN pip install -r ./requirements.txt

COPY app .

COPY ./querysets /app/querysets

COPY nltk_data/ /usr/local/nltk_data

ENV PYTHONPATH /
