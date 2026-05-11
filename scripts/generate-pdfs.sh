#!/bin/bash

for file in install-instructions/*.MD; do
    [ -e "$file" ] || continue

    filename=$(basename "$file")
    filename="${filename%.*}"

    echo "Processing: $file"
    md-to-pdf "$file"
done
