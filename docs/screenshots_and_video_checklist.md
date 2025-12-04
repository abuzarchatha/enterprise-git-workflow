# Screenshots & Video Demo Checklist

## Screenshots to capture

1. **Repository Settings**
   - Branch protection rules enabled for `main` and `develop`
   - Screenshot: Settings > Branches > Protection Rules

2. **Pull Request with Validation**
   - Show PR with passing CI checks
   - Show code owner review requirement
   - Screenshot: PR checks passing, CODEOWNERS notification

3. **Commit Message & Conventional Commits**
   - Example PR title/commit: `feat(auth): add oauth integration`
   - Screenshot: commit message following conventional commit format

4. **GitHub Actions Workflows Running**
   - Show `validate.yml` workflow running on PR
   - Show `release.yml` workflow running on merge to `main`
   - Screenshots: Actions tab, workflow logs

5. **Release & Changelog**
   - Show automatically generated GitHub Release
   - Show CHANGELOG.md with auto-populated entries
   - Screenshots: Releases page, CHANGELOG.md content

6. **CODEOWNERS in Action**
   - Show PR requesting review from code owner
   - Screenshot: PR review request from CODEOWNERS

7. **Project Board**
   - Show GitHub Projects board with issues/PRs automated into columns
   - Screenshot: Projects board with Backlog, In Progress, In Review, Done columns

## Video Demo Script (2-3 minutes)

1. **Intro (15s)**
   - "This is an enterprise-grade Git workflow for a team"

2. **Branching Strategy (20s)**
   - Show branch structure (main, develop, feature/*)
   - Explain when to branch off main vs develop

3. **Create a Feature (30s)**
   - Create a branch: `git checkout -b feature/new-api-endpoint`
   - Make a commit with conventional commit message

4. **Open PR (30s)**
   - Push branch and open PR
   - Show PR template auto-populated
   - Mention code owner requirement

5. **CI Validation (20s)**
   - Show validate.yml workflow running
   - Tests passing, checks green

6. **Code Owner Review (20s)**
   - Show CODEOWNERS requirement
   - Show approval process

7. **Merge & Release (30s)**
   - Merge PR to main
   - Show release.yml workflow running
   - Show new GitHub Release created with semantic version
   - Show CHANGELOG.md auto-updated

8. **Project Board (15s)**
   - Show PR automatically moved to Done column

9. **Outro (5s)**
   - "All automated, scalable, and production-ready"

## Tools needed

- Screenshots: Snagit, ShareX, or OS built-in tool
- Video: OBS Studio (free), ScreenFlow (macOS), or Camtasia

## Recording tips

- Use 1080p or higher resolution
- Speak clearly, add captions if possible
- Keep terminal visible and readable
- Use dark theme for terminal (easier on eyes)
