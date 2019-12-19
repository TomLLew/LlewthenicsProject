FROM ubuntu:latest

WORKDIR /app

RUN sudo apt-get update -y && sudo apt-get upgrade -y 

RUN apt-get install python3-pip -y

COPY . .

RUN pip3 install -r requirements.txt

EXPOSE 5000

ENTRYPOINT ["/usr/bin/python3", "app.py"]
