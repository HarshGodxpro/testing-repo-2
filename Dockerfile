FROM FROM python:3.10.8-slim-bullseye

RUN apt-get update && apt-get install -y git
RUN apt install git -y
COPY requirements.txt /requirements.txt

RUN cd /
RUN pip3 install -U pip && pip3 install -U -r requirements.txt
RUN mkdir /spidy-filter-bot
WORKDIR /spidy-filter-bot
COPY start.sh /start.sh
CMD ["/bin/bash", "/start.sh"]
