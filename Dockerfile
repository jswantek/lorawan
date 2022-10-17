# TODO: pick something more specific later (this is too big: 893MB)
#FROM python:3-buster
FROM rakwireless/udp-packet-forwarder:v1

# put all of our apps code in /app
WORKDIR /app
