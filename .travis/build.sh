#!/usr/bin/env sh
# Build Jekyll Site

set -e

# fetch latest template
curl --silent --location --show-error https://github.com/ashenm/jekyll-sidebar/archive/master.zip | \
  bsdtar --extract --keep-old-files --file - --strip-components 1

# build jekyll site
jekyll build --profile --destination "${BUILD_DESTINATION}"
