#!/bin/bash
set -e

VERSION=$1

if [ -z "$VERSION" ]; then
  echo "Usage: promote-prod.sh <version>"
  exit 1
fi

echo "Promoting $VERSION to production..."

sed -i "s/^[[:space:]]*tag:.*/  tag: $VERSION/" environments/prod/values.yaml

git config user.name "github-actions"
git config user.email "ci@github.com"

git add environments/prod/values.yaml
git commit -m "ci: promote $VERSION to prod" || echo "No changes"
git push

