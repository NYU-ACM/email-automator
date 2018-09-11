#!/bin/bash

echo "EMAIL AUTOMATOR"

while IFS='' read -r line || [[ -n "$line" ]]; do
    gyb --email $1 --action backup --search "label:$line" --local-folder $line
done < $2