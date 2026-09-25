#!/bin/sh

# The terminal check-in runs as a separate jobber process, so the id that ties
# both check-ins to one Sentry run is handed over on disk.
cat /proc/sys/kernel/random/uuid >/tmp/sentry-check-in-id
curl "${SENTRY_CRONS}?check_in_id=$(cat /tmp/sentry-check-in-id)&status=in_progress"
