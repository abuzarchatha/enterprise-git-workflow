# Branching Strategy

Recommended branching model (GitHub flow + release branches):

- `main` — protected, always deployable. Only release merges land here.
- `develop` — integration branch for features; optional depending on team.
- `feature/*` — short-lived feature branches off `develop` or `main`.
- `hotfix/*` — critical fixes that go to `main` and `develop`.
- `release/*` — used for release preparation when necessary.

Pull request process

- Use PRs for all merges into `develop` or `main`.
- Enforce at least one approval from `CODEOWNERS` and passing CI.

Commit message format

- Use Conventional Commits (feat, fix, chore, docs, refactor, perf, test)

Example: `feat(auth): add token refresh handler`
