#!/bin/sh
command="curl -X POST $3 $([ "$4" != "" ] && echo -u $4) --data \"\$1\" $2"
eval $command
