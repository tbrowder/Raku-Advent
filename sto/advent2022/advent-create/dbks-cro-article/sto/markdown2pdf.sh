#!/bin/bash

TITLE1="Creating a Cro App, Part 1, by @tony-o"
TITLE2="Creating a Cro App, Part 2, by @tony-o"

FILE1="20220224-building-a-cro-app-part-1.md"
FILE2="20220923-building-a-cro-app-part-b.md"

PDF1="Creating-a-Cro-App-Part1-by-Tony-O.pdf"
PDF2="Creating-a-Cro-App-Part2-by-Tony-O.pdf"

from-markdown --to=pod6 --output=$PDF1 $FILE1
from-markdown --to=pod6 --output=$PDF2 $FILE2
