#!/bin/bash
# auto build docker image and re-run new container

source .rc

script_function()
{
    echo "write your script function"
}

default()
{
    help
}

help()
{
    echo "list script:"
    echo "* source script.sh script_function()"
}

error()
{
    echo "error: $1"
}

if [ -n "$1" ]
then
    $1
else
    error "no func call."
    default
fi
