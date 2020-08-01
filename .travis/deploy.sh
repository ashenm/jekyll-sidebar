#!/usr/bin/env sh
# Deploy Jekyll Sidebar

curl --fail --silent --show-error \
  --request POST \
  --output /dev/null \
  --header "Content-Type: application/json" \
  --header "Accept: application/json" \
  --header "Travis-API-Version: 3" \
  --header "Authorization: token $TRAVIS_API_TOKEN" \
  --data "{ \"request\": { \"branch\": \"docs\", \"message\": \"Build to parity with commit `expr substr $TRAVIS_COMMIT 1 7` on $TRAVIS_BRANCH\" } }" \
  --url "https://api.travis-ci.com/repo/ashenm%2Fjekyll-sidebar/requests"
