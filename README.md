# Enterprise Git Workflow (Course Project)

This repository contains a complete, production-ready Git workflow scaffold used for a DevOps project course. It includes branching strategy, protected branch guidance, PR/Issue templates, `CODEOWNERS`, CI validation, automated releases using semantic versioning, changelog automation, and developer documentation.

See `docs/` for details and the `.github/` folder for GitHub templates and workflows.

Quick start

1. Initialize a git repo and push to GitHub.
2. Update repository secrets: `GITHUB_TOKEN`, `NPM_TOKEN` (if publishing to npm), and any other CI secrets.
3. Customize the files in `docs/` and workflows as needed.

Supported release flow: Node + `semantic-release` (default). If you prefer a language-agnostic tag-based release, tell me and I'll switch.
