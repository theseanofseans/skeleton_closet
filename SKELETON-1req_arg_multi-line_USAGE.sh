### SKELETON-1req_arg_multi-line_USAGE.sh  VERSION=0.02 

#!/bin/bash
THIS_SCRIPT_VERSION=0.01

source ./script_usage_message.conf 
# --- single line USAGE_MESSAGE 
export USAGE_MESSAGE="USAGE: $0 REQUIRED_ARGS [OPTIONAL_ARGS]" 
# --- multi-line USAGE_MESSAGE 
#export USAGE_MESSAGE="USAGE: \n" 
#USAGE_MESSAGE="${USAGE_MESSAGE} line 1 \n" 
#USAGE_MESSAGE="${USAGE_MESSAGE} line 2 \n" 
#USAGE_MESSAGE="${USAGE_MESSAGE} line 3 \n" 
#USAGE_MESSAGE="${USAGE_MESSAGE}$0 REQUIRED_ARGS [OPTIONAL_ARGS]" 
# --- 

# REQ_ARG_1
ARG1=$1
# REQ_ARG_2
ARG2=$2
if [[ ! -n "$ARG1" || "$ARG1" == "-h" ]] ; then
	[[ ! -n "$ARG1" ]] && echo "ERROR: ARG1 is not defined" && exit 1
	script_usage_message; exit 0
fi
if [[ ! -n "$ARG2" ]] ; then
	[ -n "$ARG1" ] && echo "REQ_ARG_1='$ARG1'"
	[[ ! -n "$ARG2" ]] && echo "ERROR: ARG2 is not defined"
	script_usage_message; exit 1
fi
REQ_ARG_1=$ARG1
REQ_ARG_2=$ARG2


