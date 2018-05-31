#!/bin/bash
#############################################################
#
# Messaging Script for JenkinsRepo.
# Let's post the Error / Success Message as a Slack Message
#
############################################################
CURL='/usr/bin/curl'

#Curl Command to send a POST Request to Slack API
curl -X POST \
  https://slack.com/api/chat.postMessage \
  -H 'authorization: Bearer YOUR TOKEN' \
  -H 'content-type: application/json; charset=utf-8' \
  -d '{"channel":"#YOUR CHANNEL NAME","text":"'"$1"'","as_user":"YOUR USERNAME"}'
