#!/bin/bash

for i in `defaults domains | tr ',' '\n'`; do 
    echo "***** now exporting $i *****"
    defaults export $i ./plist/$i.plist
done
