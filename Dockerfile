# TODO: pick something more specific later (this is too big: 893MB)
#FROM python:3-buster
FROM rakwireless/udp-packet-forwarder:v1

# put all of our apps code in /app
WORKDIR /app

# TEMP to get the main.py in here for testing
COPY . .

# this will go in the kubernetes config
## this might need to be RAK2287
ENV MODEL="RAK7248"

# TOOD: need to be sure we want to limit this here, this is what was done in by Larry
ENV BAND="US_902_928"

# TODO: i think this is what will re-broadcast the data to our local server
## for upload to beehive (may want to specicify a port here too)
ENV SERVER_HOST=""
ENV SERVER_PORT="1700"
# ENV SERVER_HOST="wes-rabbitmq"
# ENV SERVER_PORT="1883"
