FROM python:3.10
WORKDIR /Video-caller-beta
COPY requirements.txt /video-caller-beta/
RUN pip3 install -r requirements.txt
COPY . /video-caller-beta
CMD python3 server.py
