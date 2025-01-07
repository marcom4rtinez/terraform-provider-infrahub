#!/bin/bash

branch=$(git rev-parse --abbrev-ref HEAD)

if [[ -n "$INFRAHUB_SERVER" ]]; then
  url=$INFRAHUB_SERVER
else
  url="http://localhost:8000"
fi



if [[ "$branch" != "main" ]]; then
     curl -o schema.graphql $url/schema.graphql?branch=$branch
else
     curl -o schema.graphql $url/schema.graphql
fi