#!/bin/bash

service rabbitmq-server start

tbears start -c tbears_server_config.json

exec /bin/bash
