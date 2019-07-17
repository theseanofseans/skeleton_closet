### SKELETON-1req_arg.sh  VERSION=0.02.02 

#!/bin/bash
THIS_SCRIPT__VERSION=0.01

source ~/script_lib/script_usage_message.conf 
# --- single line USAGE_MESSAGE 
export USAGE_MESSAGE="$0 VERSION=${THIS_SCRIPT__VERSION}\nUSAGE: $0 REQUIRED_ARGS [OPTIONAL_ARGS]"  
# --- 

# REQ_ARG_1
ARG1=$1
if [[ ! -n "$ARG1" || "$ARG1" == "-h" ]] ; then
	script_usage_message
	[[ ! -n "$ARG1" ]] && echo "ERROR: ARG1 is not defined" && exit 1
	exit 0
fi
REQ_ARG_1=$ARG1


