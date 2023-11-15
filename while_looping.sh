#!/bin/bash

counter=1

while [[ $counter -le 20 ]]
do
	echo $counter
	((counter++))
done
