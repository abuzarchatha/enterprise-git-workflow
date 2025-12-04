#!/bin/bash
# Apply branch protection rules to main and develop
# Usage: bash apply_protections.sh <owner> <repo>

OWNER=$1
REPO=$2

if [ -z "$OWNER" ] || [ -z "$REPO" ]; then
  echo "Usage: bash apply_protections.sh <owner> <repo>"
  exit 1
fi

echo "Protecting 'main'..."
gh api --method PUT \
  -H "Accept: application/vnd.github+json" \
  "/repos/$OWNER/$REPO/branches/main/protection" \
  -f required_status_checks='{"strict":true,"contexts":["validate"]}' \
  -f enforce_admins=true \
  -f required_pull_request_reviews='{"required_approving_review_count":1,"dismiss_stale_reviews":true,"require_code_owner_reviews":true}' \
  -f restrictions='null'

echo "Protecting 'develop'..."
gh api --method PUT \
  -H "Accept: application/vnd.github+json" \
  "/repos/$OWNER/$REPO/branches/develop/protection" \
  -f required_status_checks='{"strict":true,"contexts":["validate"]}' \
  -f enforce_admins=false \
  -f required_pull_request_reviews='{"required_approving_review_count":1,"dismiss_stale_reviews":false,"require_code_owner_reviews":false}' \
  -f restrictions='null'

echo "Done!"
