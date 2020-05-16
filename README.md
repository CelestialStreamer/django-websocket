# django-websocket

This is a project which explores using [websockets](https://en.wikipedia.org/wiki/WebSocket) in [django](https://www.djangoproject.com/) (Using the [channels](https://channels.readthedocs.io/en/latest/) library). The docker environment is set up to be as close to production-ready as possible. (SSL certificates are not implemented, though it doesn't take much to add self-signed certificates)

## Installation
Copy `.env-sample` to `.env`. Fill in database user and password. (the database is not public, and it's not even used at this point so make them simple if you want). Follow instructions in the `.env` file on how to create a `SECRET_KEY`.

Run `docker-compose up --build`

## Usage
Assuming you left `PUBLIC_API_PORT=80`, go to `localhost/chat`. You should see a box to enter a chat room. Type in whatever. On another tab/browser/phone/whatever, go to the same room. Start chatting and you should the messages showing up in both tabs. If you were to join a separate room, nothing would show from the other chats.
