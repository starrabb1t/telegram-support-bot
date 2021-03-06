FROM python:3.8-slim-buster
WORKDIR /
COPY main.py /
COPY handlers.py /
COPY settings.py /
RUN pip3 install python-telegram-bot==13.3 &&\
    chmod -R 777 /opt/app/ *
ENTRYPOINT [ "/main.py" ]