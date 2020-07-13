#!/bin/bash
jq -n "{ image: \"$2\", output: \"$(docker build "$1" --tag "$2" | tr -d '\"')\" }"