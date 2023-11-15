#!/bin/bash

##
# BASH menu script that checks:
#   - Memory usage
#   - CPU load
#   - Number of TCP connections 
#   - Kernel version
##

server_name=$(hostname)

function memory_check() {
    echo ""
	echo "Memory usage on ${server_name} is: "
	free -h
	echo ""
}

function cpu_check() {
    echo ""
	echo "CPU load on ${server_name} is: "
    echo ""
	uptime
    echo ""
}

function tcp_check() {
    echo ""
	echo "TCP connections on ${server_name}: "
    echo ""
	cat  /proc/net/tcp | wc -l
    echo ""
}

function kernel_check() {
    echo ""
	echo "Kernel version on ${server_name} is: "
	echo ""
	uname -r
    echo ""
}

function all_checks() {
	memory_check
	cpu_check
	tcp_check
	kernel_check
}

##
# Color  Variables
##
magenta='\e[35m'
lightcyan='\e[96m'
clear='\e[0m'

##
# Color Functions
##

ColorMagenta(){
	echo -ne $magenta$1$clear
}
ColorLightcyan(){
	echo -ne $lightcyan$1$clear
}

menu(){
echo -ne "
My First Menu
$(ColorMagenta '1)') Memory usage
$(ColorMagenta '2)') CPU load
$(ColorMagenta '3)') Number of TCP connections 
$(ColorMagenta '4)') Kernel version
$(ColorMagenta '5)') Check All
$(ColorMagenta '0)') Exit
$(ColorLightcyan 'Choose an option:') "
        read a
        case $a in
	        1) memory_check ; menu ;;
	        2) cpu_check ; menu ;;
	        3) tcp_check ; menu ;;
	        4) kernel_check ; menu ;;
	        5) all_checks ; menu ;;
		0) exit 0 ;;
		*) echo -e $red"Wrong option."$clear; WrongCommand;;
        esac
}

# Call the menu function
menu
