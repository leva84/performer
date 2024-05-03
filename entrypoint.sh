#!/bin/bash
set -e

echo 'Waiting for postgres...'

while ! nc -z postgres 5432; do
  >&2 echo 'The database is unavailable, we are waiting...'
  sleep 1
done

echo 'PostgreSQL started'

exec "$@"
