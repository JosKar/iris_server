# Iris

A self hosted notification server without google cloud messaging, firebase cloud messaging or apple push notification service.

## Motivation
The driving force behind this project is my need for a tool that:
- Notifies the user when something is happening in a service/application.
- The user can deploy it in her/his premises.
- Uses a self hosted and open source message broker and not an external one.

## Project Status

[![Build Status](https://api.travis-ci.org/7-iris/iris_server.svg?branch=master)](https://travis-ci.org/7-iris/iris_server)
[![Coverage Status](https://coveralls.io/repos/github/7-iris/iris_server/badge.svg?branch=master)](https://coveralls.io/github/7-iris/iris_server?branch=master)

This project is under development, it is not ready for production use yet.

## Usage example

To send a notification from bash:

```
echo '{"service_token":"xyz","title":"Testing","text":"notification message"}' | curl -H "Content-Type: application/json" -XPOST -d @-  http://localhost:4000/api/messages
```

## Installation

### Prerequisites
  In order to get iris to work you need to install the emqttd server first.
  You can find  the instructions [here](http://emqtt.io/docs/v2/install.html).

### Installing via DEB package
  TODO

### Installing via docker image
  TODO

## Built With

* [Phoenix](https://github.com/phoenixframework/phoenix)
* [Hulaaki](https://github.com/suvash/hulaaki)
* [Emqttd](https://github.com/emqtt/emqttd)
* [Bootstrap](https://github.com/twbs/bootstrap)
* [Bootswatch](https://github.com/thomaspark/bootswatch)
* And many more...

## Resources

* [Project roadmap](https://github.com/7-iris/iris_server/wiki/Roadmap)
* [What is mqtt?](http://mqtt.org/faq)
* [What is emqttd?](http://emqtt.io/about)

## Naming
Iris in Greek mythology was one of the messengers of the Olympian gods.

## Authors

* Stelios Joseph Karras [stylkarr@gmail.com](mailto://stylkarr@gmail.com)

## License

This project is licensed under the MIT License - see the [LICENSE.md](LICENSE) file for details

## Acknowledgments

* Inspired by [pushbullet](http://pushbullet.com/), [pushover](http://pushover.net/) and [pushjet](http://pushjet.io/)
