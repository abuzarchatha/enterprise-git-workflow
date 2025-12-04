# Developer Guide

This guide helps contributors get started.

Local setup (Node example)

```powershell
# install dependencies
npm ci
# run lint
npm run lint
# run tests
npm test
```

Pull request checklist

- Follow branching strategy
- Add tests where applicable
- Update `CHANGELOG.md` if needed (semantic-release will update automatically)

Secrets to configure in GitHub repository settings

- `GITHUB_TOKEN` (automatically provided by Actions but sometimes configured)
- `NPM_TOKEN` (if publishing to npm)

