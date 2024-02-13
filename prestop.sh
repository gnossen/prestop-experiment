#!/bin/bash

TAKE_ME=/var/run/take_me

touch "${TAKE_ME}"

while [ -e "${TAKE_ME}" ]; do
	echo "${TAKE_ME} still exists"
	sleep 2
done

touch /hook/take_me
