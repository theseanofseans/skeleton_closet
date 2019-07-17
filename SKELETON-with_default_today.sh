### SKELETON-with_default_today.sh  VERSION=0.01

#!/bin/bash
THIS_SCRIPT_VERSION=0.01

source ./script_usage_message.conf
export USAGE_MESSAGE="USAGE: $0 [DAY(YYYYMMDD)|today|yesterday|TODAY d:TODAY]"

DAY=''
ARG1=$1
## X?
#ARG2=$2
if [[ "$ARG1" == "-h" ]] ; then
#if [[ "$ARG1" == "-h" || ! -n "$ARG1" ]] ; then
#if [[ "$ARG1" == "-h" || ! -n "$ARG1" || ! -n "$ARG2" ]] ; then
	script_usage_message
	exit 0
elif [[ "$ARG1" == "yesterday" ]] ; then
	TODAY=` date +'%Y%m%d'`
	DAY=$(( $TODAY - 1 ))
	echo "TODAY=$TODAY yesterday=$DAY "
elif [[ ! -n "$ARG1" || "$ARG1" == "TODAY" || "$ARG1" == "today" ]] ; then
	DAY=` date +'%Y%m%d'`
	echo "setting DAY to TODAY=$DAY " 
else
	DAY=$ARG1
fi
echo "DAY='$DAY'"


