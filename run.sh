#!/bin/sh

if ! [ -x "$(command -v ffmpeg)" ]; then
  echo 'Error: ffmpeg is not installed.' >&2
  exit 1
fi


# Set up env and install deps
python -m venv env
source env/bin/activate
pip install PySide6

# Run code
python main.py