# Protected Branches

Recommended protection rules for `main` and `develop` branches.

## Branch Protection Settings

### For `main` (production)

**Enforce these rules via GitHub:**

1. **Require pull request reviews before merging**
   - Required approving reviews: **1**
   - Dismiss stale PR approvals: **Yes**
   - Require review from code owners: **Yes** (uses `CODEOWNERS` file)

2. **Require status checks to pass before merging**
   - Require branches to be up to date before merging: **Yes**
   - Require passing status checks:
     - `validate` (CI job from `validate.yml`)
     - Any other checks (linter, tests, security scans)

3. **Require signed commits**
   - Optional but recommended for production

4. **Restrict who can push to matching branches**
   - Allow only admins to push directly: **Yes**

### For `develop` (integration)

1. **Require pull request reviews**: 1 approval
2. **Require status checks**: `validate`
3. **Allow force pushes**: No
4. **Allow deletions**: No

## GitHub CLI Commands

Apply protection rules to `main`:

```bash
gh api --method PUT \
  -H "Accept: application/vnd.github+json" \
  /repos/OWNER/REPO/branches/main/protection \
  -f required_status_checks='{"strict":true,"contexts":["validate"]}' \
  -f enforce_admins=true \
  -f required_pull_request_reviews='{"required_approving_review_count":1,"dismiss_stale_reviews":true,"require_code_owner_reviews":true}' \
  -f restrictions='null'
```

Replace `OWNER` and `REPO` with your values.

## UI Setup

1. Go to **Settings → Branches**
2. Click **Add rule** under "Branch protection rules"
3. Set branch name pattern (e.g., `main`)
4. Check all boxes as described above
5. Click **Create**

## Enforcement

- Admins can still push to protected branches directly (unless "Restrict who can push" is enabled).
- All other contributors must use PRs.
- PRs require approval from a code owner (checked against `CODEOWNERS`).
