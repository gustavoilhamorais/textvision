#!/usr/bin/env bash

install_aichat() {
  if [[ "$OSTYPE" == "darwin"* ]]; then
    if ! command -v brew &> /dev/null; then
      echo "Error: Homebrew is not installed."
      echo "Please install Homebrew and run the script again."
      echo "You can install it from https://brew.sh/"
      exit 1
    fi
    if ! command -v cargo &> /dev/null; then
      echo "Installing cargo..."
      brew install rust
    fi
  elif [[ "$OSTYPE" == "linux"* ]]; then
    if ! command -v cargo &> /dev/null; then
      echo "Error: Cargo is not installed."
      echo "Installing Rust using the official installer..."
      curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
      source ~/.cargo/env
    fi
  elif [[ "$OSTYPE" == "msys" ]] || [[ "$OSTYPE" == "cygwin" ]]; then
    if ! command -v scoop &> /dev/null; then
      echo "Error: Scoop is not installed."
      echo "Please install Scoop and run the script again."
      echo "You can install it from https://scoop.sh/"
      exit 1
    fi
  else
    echo "Unsupported operating system."
    exit 1
  fi
  echo "Installing aichat..."
  if [[ "$OSTYPE" == "msys" ]] || [[ "$OSTYPE" == "cygwin" ]]; then
    scoop install aichat
  else
    cargo install aichat
  fi
  echo "Running aichat for the first time to configure it..."
  echo "You should be able to use TEXTVISION successfully after this first run."
  aichat
}
