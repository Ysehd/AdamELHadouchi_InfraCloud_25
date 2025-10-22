#!/usr/bin/env bash
APIKEY="cisco|b_cg9W3xT9J3KXzIF7hJOsREv7XMmE9-X4uo3jor5zQ"

for BOOK in {911..950}
do
  echo $BOOK
  DELETE_URL="http://library.demo.local/api/v1/books/$BOOK"
  echo $DELETE_URL
  curl -X DELETE $DELETE_URL \
    -H "accept: application/json" \
    -H "X-API-Key: $APIKEY" \
    -H "Content-Type: application/json"
done