#!/bin/bash
input="taglist"
while IFS=":" read -r name tag id
do
  docker tag "$id" "$name:$tag"
  echo "$name:$tag is taged $id"
done < "$input"
