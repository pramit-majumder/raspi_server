#!/bin/bash

nmcli -t -f CONNECTIVITY g > status.txt

content=$(cat status.txt)

name="Custom Username"
topic="Custom NTFY topic"
email="Placeholder Email"
user="Placeholder Name"

sudo tailscale up --ssh

curl -d "Raspberry PI now online" ntfy.sh/topic

msg="To: $user\nSubject: Raspberry Pi is now Online\n\n This is the $name module talking who is now online\n I repeat Raspberry Pi is now Online"

#echo $msg
if [ "$content" = "full" ]; then
	printf "$msg" | msmtp email
fi

