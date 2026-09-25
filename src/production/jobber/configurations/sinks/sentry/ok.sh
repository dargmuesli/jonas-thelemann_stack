#!/bin/sh

curl "${SENTRY_CRONS}?check_in_id=$(cat /tmp/sentry-check-in-id)&status=ok"
