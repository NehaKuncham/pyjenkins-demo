FROM ubuntu
EXPOSE 5000
RUN apt-get update
RUN apt-get install -y python3
RUN apt-get install -y python3-pip
RUN pip3 install flask

COPY simple-web-app.py /opt/
ENTRYPOINT FLASK_APP=/opt/simple-web-app.py flask run --host=0.0.0.0 --port=8080
