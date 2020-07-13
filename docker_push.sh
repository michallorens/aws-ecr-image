#!/bin/bash
jq -n "{ image: \"$1\", output: \"$(docker push "$1")\" }"