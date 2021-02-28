#!/usr/bin/env bash
# exit on error
set -o errexit

# Initial setup
mix deps.get --only prod
MIX_ENV=prod mix compile

# Compile assets
npm install --prefix ./apps/blog/assets
NODE_ENV=production npm run deploy --prefix ./apps/blog/assets

npm install --prefix ./apps/proxy_web/assets
NODE_ENV=production npm run deploy --prefix ./apps/proxy_web/assets


mix phx.digest

# Build the release and overwrite the existing release directory
MIX_ENV=prod mix release --overwrite

