#!/bin/bash

bibfiles=`find . -type f -name "*.bib"`
echo "hello" 
echo $bibfiles
bib2bib \
        -oc /dev/null \
        --remove abstract \
        --remove bibitemlabel \
        --remove comment \
        --remove file \
        --remove keywords \
        --remove owner \
        --remove review \
        --remove timestamp \
        --no-comment \
        --expand \
        --expand-xrefs \
        -s '$key' \
        -c 'not ($type = "proceedings")' \
        $bibfiles |
    perl -p0 -e '
        s/\s*(\@comment\{\{[^}]*\}\}\s*)+/\n\n/g;
        s/\n  address = \{\},//g;
        s/^\n+//;
    ' > "all.bib"
