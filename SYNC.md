# Sync Setup

This workspace uses Git for code, Markdown/GitHub for context, and SSH only when the company environment is required.

## One-Time Git Setup On Each Computer

Set your identity:

```bash
git config --global user.name "Your Name"
git config --global user.email "you@example.com"
```

Add the remote after you create the repository on GitHub/GitLab:

```bash
git remote add origin git@github.com:USER/REPO.git
git branch -M main
git push -u origin main
```

On the second computer, clone it:

```bash
git clone git@github.com:USER/REPO.git
cd REPO
```

## Normal Handoff

Before leaving one computer:

```bash
git status
git pull --rebase
# edit HANDOFF.md
git add .
git commit -m "Update handoff"
git push
```

When starting on the other computer:

```bash
git pull --rebase
sed -n '1,220p' HANDOFF.md
```

## GitHub/GitLab Context

Use issues for tasks and PRs for implementation context.

Recommended habit:

- Issue: requirement, acceptance criteria, questions.
- PR: implementation summary, test results, known risks.
- `HANDOFF.md`: short local continuation state.

## SSH To Company Machine

Use SSH when home needs to run commands inside the company-only environment.

1. Copy `SSH_CONFIG.example` into `~/.ssh/config` on the home computer and fill in the placeholders.
2. Test:

   ```bash
   ssh company-codex
   ```

3. From the SSH session, use the company checkout directly:

   ```bash
   cd /path/to/repo
   git pull --rebase
   ```

Do not sync Codex Desktop App local thread files through iCloud. Keep Codex threads local and move durable project state through Git and docs.
