FROM python:3.7
LABEL maintainer "k4ssyi <hoge@example.com>"

ENV LC_ALL=C.UTF-8 LANG=C.UTF-8

RUN apt-get update
RUN apt-get -y install \
    tesseract-ocr \
    libtesseract-dev \
    tesseract-ocr-jpn \
    vim
RUN apt-get clean

ADD . /var/app
WORKDIR /var/app
RUN pip install --upgrade pip setuptools wheel; \
    pip install -r ./requirements.txt
