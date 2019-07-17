### SKELETON-no_req_arg_single-line_USAGE.sh  VERSION=0.03 

#!/bin/bash
THIS_SCRIPT__VERSION=0.01.02

source ./script_usage_message.conf 
# --- single line USAGE_MESSAGE 
export USAGE_MESSAGE="$0 VERSION=${THIS_SCRIPT__VERSION}\nUSAGE: [OPTIONAL_ARGS]"  

# OPT_ARG_1
ARG1=$1
if [[ "$ARG1" == "-h" ]] ; then
	script_usage_message
	exit 0
fi
# do something if ARG1 not defined
OPT_ARG_1=$ARG1


