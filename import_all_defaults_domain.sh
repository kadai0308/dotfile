#!/bin/bash

for i in `defaults domains | tr ',' '\n'`; do 
    echo "***** now importing $i *****"
    defaults import $i ./plist/$i.plist
done