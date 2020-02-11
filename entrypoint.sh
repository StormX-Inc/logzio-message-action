#!/bin/sh

LOGZIO_TOKEN=${LOGZIO_TOKEN:?Need to set LOGZIO_TOKEN}
MESSAGE=${MESSAGE:?Need to set MESSAGE}
MESSAGE_LEVEL=${MESSAGE_LEVEL:?Need to set MESSAGE_LEVEL}
LOG_TYPE=${LOG_TYPE:?Need to set LOG_TYPE}

set -e

echo {\"message\": \"$MESSAGE\", \"level\": \"$MESSAGE_LEVEL\"} | curl "https://listener.logz.io:8071?token=$LOGZIO_TOKEN&type=$LOG_TYPE" --data-binary @-
