#!/bin/bash

my_dir="$(dirname "$0")"
source "$my_dir/logging.sh"

if [ $# -eq 0 ]; then
  echo "Error: File missing (e.g. ./my_mind_wanders.sh quotes.json)"
  warn "Error: File missing (e.g. ./my_mind_wanders.sh quotes.json)"
  exit 1
fi

# Get length of quotes array
length=$(jq '.quotes | length' "$1")

# Generate a random index
rand_index=$(( RANDOM % length ))

# Extract a random quote object
object=$(jq ".quotes[$rand_index]" "$1")

# Extract text and author
MMW_QUOTE=$(echo "$object" | jq -r '.quote')
MMW_AUTHOR=$(echo "$object" | jq -r '.author')

debug "MMW_AUTHOR=$MMW_AUTHOR"
debug "MMW_QUOTE=$MMW_QUOTE"

echo "My mind now wanders about what ${MMW_AUTHOR} once said: \"${MMW_QUOTE}\""

notify "all good"