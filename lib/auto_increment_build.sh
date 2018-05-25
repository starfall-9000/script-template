#!/bin/bash
# auto increment version build number

if [ -e .rc ]
then
    source .rc
else
    echo "warning: can't find .rc file. use custom variable"
    VERSION=0
fi

VERSION=$[VERSION + 1]
echo "VERSION=$VERSION" > .rc