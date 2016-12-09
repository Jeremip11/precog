FROM ubuntu:latest
MAINTAINER Travis Vachon "travis@circleci.com"
RUN apt-get update -y
RUN apt-get install -y python-pip python-dev build-essential curl
COPY . /app
WORKDIR /app
RUN pip install -r requirements.txt
# this doesn't seem to do anything
EXPOSE 5000
ENTRYPOINT ["python"]
CMD ["make-it-so.py"]
