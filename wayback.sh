#!/bin/bash

#API here: https://archive.readme.io/docs/creating-a-snapshot

wbID=`curl -s -X POST -H "Content-Type: application/json" -d '{"url": "'$1'", "annotation": {"id": "lst-ib", "message": ""}}' https://pragma.archivelab.org 2>&1 | jq '."wayback_id"'`
trimmed="${wbID:1:-1}"
echo "http://web.archive.org"$trimmed
