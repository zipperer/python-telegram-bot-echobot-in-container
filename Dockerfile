FROM python:3.8-slim-buster
COPY requirements.txt /requirements.txt
RUN [ "pip", "install", "-r", "requirements.txt" ]
ADD https://raw.githubusercontent.com/python-telegram-bot/python-telegram-bot/v13.x/examples/echobot.py /
RUN [ "sed", "-i", "s/TOKEN/TOKEN_BOTFATHER_GAVE_YOU_FOR_YOUR_BOT/g", "/echobot.py" ]
ENTRYPOINT [ "python", "/echobot.py" ]
