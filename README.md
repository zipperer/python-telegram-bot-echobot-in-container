# python-telegram-bot-echobot-in-container

## How to use this repository to run a Telegram bot

```
$ git clone https://github.com/zipperer/python-telegram-bot-echobot-in-container.git
```

```
$ cd python-telegram-bot-echobot-in-container
```

In Dockerfile, replace `TOKEN_BOTFATHER_GAVE_YOU_FOR_YOUR_BOT` with the token Botfather gave you for your bot.
If you do not yet have a token, see [section below](https://github.com/zipperer/python-telegram-bot-echobot-in-container/main/README.md#how-to-get-a-token-for-a-telegram-bot).

```
$ docker build --tag python-telegram-bot-echobot-in-container .
```

```
$ docker run --detach --name container-name-you-prefer python-telegram-bot-echobot-in-container 
```

In Telegram, create a chat thread with your bot and send messages to your bot.

## How to customize your bot

The Dockerfile in this repository includes this line
```
ADD https://raw.githubusercontent.com/python-telegram-bot/python-telegram-bot/v13.x/examples/echobot.py /
```

To customize your bot, 
 - download a copy of that file as echobot.py
 - edit the local copy of echobot.py
 - in the Dockerfile replace the line `ADD https:... ` with
```
COPY echobot.py /
```

For documentation of how to edit the file to add new behavior, see [the examples the python-telegram-bot library provides](https://github.com/python-telegram-bot/python-telegram-bot/tree/v13.x/examples) and [the documentation for that library](https://docs.python-telegram-bot.org/en/v13.11/).
 


## How to get a token for a Telegram bot
See [Telegram documentation](https://core.telegram.org/bots/features#botfather). 

In short:
 - in Telegram, start a chat thread with @BotFather
 - in this thread, send a message with this text: /start
 - in this thread, send a message with this text: /newbot
 - follow the instructions @BotFather provides
 
 
