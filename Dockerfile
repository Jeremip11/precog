FROM ubuntu:latest
MAINTAINER Travis Vachon "travis@circleci.com"
RUN apt-get update -y
RUN apt-get install -y python-pip python-dev build-essential curl
COPY . /app
WORKDIR /app
RUN pip install -r requirements.txt
ENTRYPOINT ["gunicorn", "make-it-so:app"]
CMD ["--bind=0.0.0.0:8000", "--log-config", "logging.conf"]]
