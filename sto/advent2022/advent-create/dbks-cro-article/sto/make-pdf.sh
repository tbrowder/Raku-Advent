#!/bin/bash

TITLE1="Creating a Cro App, Part 1, by @tony-o"
TITLE2="Creating a Cro App, Part 2, by @tony-o"

OBJ1="https://deathbykeystroke.com/articles/20220224-building-a-cro-app-part-1.html"
OBJ2="https://deathbykeystroke.com/articles/20220923-building-a-cro-app-part-b.html"

PDF1="Creating-a-Cro-App-Part1-by-Tony-O.pdf"
PDF2="Creating-a-Cro-App-Part2-by-Tony-O.pdf"

#wkhtmltopdf --page-size Letter --grayscale --title ${TITLE} $OBJ1 $PDF1
#wkhtmltopdf --page-size Letter --grayscale --title $TITLE2 $OBJ2 $PDF2

wkhtmltopdf --page-size Letter --grayscale $OBJ1 $PDF1
wkhtmltopdf --page-size Letter --grayscale $OBJ2 $PDF2
#wkhtmltopdf $OBJ2 $PDF2
