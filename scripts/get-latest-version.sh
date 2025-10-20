#!/bin/bash

set -e

RELEASE_JSON=$(gh release view --repo Serg-Norseman/GEDKeeper --json tagName,assets)
LATEST_TAG=$(echo "$RELEASE_JSON" | jq -r '.tagName')
LATEST_VERSION=${LATEST_TAG#v}

CURRENT_VERSION=$(grep -E '^\s*version\s+' Casks/gedkeeper3.rb | cut -d'"' -f2)

echo "Current version: $CURRENT_VERSION"
echo "Latest version: $LATEST_VERSION"

DIGEST=$(echo "$RELEASE_JSON" | jq -r --arg version "$LATEST_VERSION" '.assets[] | select(.name == "gedkeeper_" + $version + ".dmg") | .digest')

if [ "$DIGEST" = "null" ] || [ -z "$DIGEST" ]; then
  echo "Error: SHA256 digest not found in release assets for gedkeeper_${LATEST_VERSION}.dmg"
  exit 1
fi

SHA256=${DIGEST#sha256:}

echo "SHA256: $SHA256"

export LATEST_VERSION
export CURRENT_VERSION
export SHA256