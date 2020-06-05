#!/bin/bash

service apache2 start
service redis-server start
tail -f /var/log/apache2/error.log
