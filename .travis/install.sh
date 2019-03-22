#!/usr/bin/env sh
# Configure Build Environment

set -e

# install requisite packages
sudo apt-get update && \
  sudo apt-get install --yes bsdtar ruby-dev

# install requisite ruby gems
bundle install --jobs 3 --retry 3
