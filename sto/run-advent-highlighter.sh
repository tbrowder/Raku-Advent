#!/bin/bash

# set token in envvar ACME_ADVENT_HIGHLIGHTER_TOKEN

if [[ -z $1 ]] ; then
    echo "Usage: $0 <article.md>"
    exit
fi

if [[ ! -f $1 ]] ; then
    echo "FAILURE: File '$1' does not exist."
    exit
fi

CMD=advent-highligher.p6

$CMD --wrap --multi $1
