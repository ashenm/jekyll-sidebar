#!/usr/bin/env sh
# Serve Jekyll Site

exec jekyll serve --profile --watch \
  --port ${PORT:-8080} --host ${HOST:-0.0.0.0}
