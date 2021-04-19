#!/bin/bash

while true; do { \
  echo -ne "HTTP/1.0 200 OK\r\nContent-Length: $(wc -c <index.htm)\r\n\r\n"; \
  cat index.htm; } | nc -l -p 8080 ; \ 
done
