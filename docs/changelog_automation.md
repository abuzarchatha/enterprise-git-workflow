# Changelog Automation

This repo uses `semantic-release` to automate:
- Version bumps using semantic versioning
- CHANGELOG generation
- GitHub Releases creation

Configuration files:
- `.releaserc.json` controls plugins and changelog file
- `package.json` defines `release` script

Secrets required in GitHub:
- `GITHUB_TOKEN` (Actions)
- `NPM_TOKEN` (only if publishing to npm)

To run locally:

```powershell
npx semantic-release --no-ci
```

(You usually run semantic-release in CI only.)
