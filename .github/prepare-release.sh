#!/bin/sh

if [ $# -ne 1 ]; then exit 1; fi

NEW_VERSION=$1
DATE=$(date "+%-Y.%-m.%-d")

# Do some stuff here

sed -Ei "s/^(DOCUMENT_VERSION: ).*/\1${NEW_VERSION}/" docs/first.md

zip "documents-${NEW_VERSION}-${DATE}.zip" ./docs/*.md