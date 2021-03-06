FROM python:3.8-slim-buster
WORKDIR /opt/app
COPY main.py /opt/app/
COPY handlers.py /opt/app/
COPY settings.py /opt/app/
RUN pip3 install python-telegram-bot==13.3 &&\
    chmod -R 777 /opt/app/ *.py
ENTRYPOINT [ "/opt/app/main.py" ]