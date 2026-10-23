#!/bin/sh
# Wraps app.html (the published Artifact source) in a full document so index.html opens by double-clicking.
cd "$(dirname "$0")"
{
  printf '<!doctype html>\n<html lang="en-GB">\n<head>\n<meta charset="utf-8">\n<meta name="viewport" content="width=device-width, initial-scale=1, viewport-fit=cover">\n</head>\n<body>\n'
  cat app.html
  printf '\n</body>\n</html>\n'
} > index.html
