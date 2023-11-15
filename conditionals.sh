#!/bin/bash

read -p "What is your name?" name

[[ ${name} == "Talisa" ]]
if [[ -z ${name} ]]
then
	echo "Please enter your name!"
else
    echo "Hi there ${name}"
fi

#!/bin/bash

admin="bash_talisa"

read -p "Enter your username? " username

# Check if the username provided is the admin

if [[ "${username}" == "${admin}" ]] ; then
    echo "You are the admin user!"
else
    echo "You are NOT the admin user!"
fi

#!/bin/bash
if (( $EUID == 0 )); then
    echo "Please do not run as root"
    exit
fi

#!/bin/bash

admin="bash_talisa"

read -p "Enter your username? " username

# Check if the username provided is the admin

if [[ "${username}" != "${admin}" ]] || [[ $EUID != 0 ]] ; then
    echo "You are not the admin or root user, but please be safe!"
else
    echo "You are the admin user! This could be very destructive!"
fi

#!/bin/bash

read -p "Enter a number: " num

if [[ $num -gt 0 ]] ; then
    echo "The number is positive"
elif [[ $num -lt 0 ]] ; then
    echo "The number is negative"
else
    echo "The number is 0"
fi