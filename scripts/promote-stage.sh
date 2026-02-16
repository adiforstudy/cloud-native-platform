#!/bin/bash
set -e

VERSION=$(cat VERSION)

echo "Promoting $VERSION to stage..."

sed -i "s/^[[:space:]]*tag:.*/  tag: $VERSION/" environments/stage/values.yaml

git add environments/stage/values.yaml
git commit -m "ci: promote $VERSION to stage" || exit 0
git push origin main
