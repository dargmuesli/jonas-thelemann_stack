#!/bin/sh

cat /proc/sys/kernel/random/uuid >/tmp/sentry-check-in-id
curl "${SENTRY_CRONS}?check_in_id=$(cat /tmp/sentry-check-in-id)&status=in_progress"
