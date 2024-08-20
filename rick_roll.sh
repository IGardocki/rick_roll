#!/bin/bash

# URL for the Rick Astley video
URL="https://www.youtube.com/watch?v=dQw4w9WgXcQ"

# Function to open the URL in the default web browser
open_url() {
  if command -v xdg-open &> /dev/null; then
    xdg-open "$URL"
  elif command -v gnome-open &> /dev/null; then
    gnome-open "$URL"
  elif command -v open &> /dev/null; then
    open "$URL"
  else
    echo "No suitable command found to open the URL."
    exit 1
  fi
}

# Print a fun message
echo "Get ready for a surprise!"

# Wait for a few seconds
sleep 2

# Open the Rick Roll video
open_url
