### SKELETON-no_req_arg_no_library.sh  VERSION=0.01 

#!/bin/bash
THIS_SCRIPT__VERSION=0.01

export USAGE_MESSAGE="$0 VERSION=${THIS_SCRIPT__VERSION}\n"
USAGE_MESSAGE="${USAGE_MESSAGE}USAGE: REQUIRED_ARGS [OPTIONAL_ARGS]"  

EXIT_CODE=0

ARG1=$1
if [[ "$ARG1" == "-h" ]] ; then
	printf "${USAGE_MESSAGE}\n"
	exit $EXIT_CODE
fi
# do something automatic for ARG1


