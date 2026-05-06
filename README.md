# Codex Cross-Device Workspace

This repository is set up so work can move cleanly between the company computer and the home computer.

## Daily Flow

1. Start work by pulling the latest code:

   ```bash
   git pull --rebase
   ```

2. Read the handoff file:

   ```bash
   sed -n '1,220p' HANDOFF.md
   ```

3. Before switching computers, update `HANDOFF.md`, then commit and push:

   ```bash
   git status
   git add .
   git commit -m "Update handoff"
   git push
   ```

4. On the other computer, pull and continue:

   ```bash
   git pull --rebase
   ```

See `SYNC.md` for the full setup and SSH notes.
