#!/usr/bin/env bash

analyze_image() {
  if [ -z "$1" ]; then
    echo "Error: Please provide an image file or a directory as an argument."
    exit 1
  fi
  prompt="Describe this image in the most understandable way possible for an LLM. In other words, create a text that makes an LLM able to understand what is seen in this image, even without seeing it."
  if [ -d "$1" ]; then
    for image_file in "$1"/*; do
      if [ -f "$image_file" ]; then
        image_name=$(basename "$image_file" | cut -d '.' -f 1)
        aichat --file "$image_file" --prompt "$prompt" > "$1/${image_name}.txt" 2>&1
      fi
    done
  else
    image_name=$(basename "$1" | cut -d '.' -f 1)
    aichat --file "$1" --prompt "$prompt" > "${image_name}.txt" 2>&1
  fi
}
