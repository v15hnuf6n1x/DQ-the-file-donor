FROM python:3.10.8-slim-buster

RUN apt update && apt upgrade -y
RUN apt install git -y
COPY requirements.txt /requirements.txt

RUN cd /
RUN python -m pip install pymongo
RUN pip3 install -U pip && pip3 install -U -r requirements.txt
RUN mkdir /DQTheFileDonor
WORKDIR /DQTheFileDonor
COPY start.sh /start.sh
CMD ["/bin/bash", "/start.sh"]
