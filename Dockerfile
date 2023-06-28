FROM nvidia/cuda:10.1-cudnn7-devel-ubuntu18.04

COPY members.txt ./
RUN cat members.txt >> /etc/passwd
RUN apt-get update

RUN pip install --upgrade pip
COPY requirements.txt ./
RUN pip install -r requirements.txt

WORKDIR /home

