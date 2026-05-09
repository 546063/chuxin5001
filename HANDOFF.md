# Handoff

Last updated: 2026-05-09

## Goal

- Keep Codex work portable between the company iMac and the home MacMini.
- Use GitHub as the durable handoff layer for project notes and repository state.
- Preserve useful conversation context without committing passwords, tokens, keys, or full private network details.

## Current State

- SSH access from the home MacMini to the company iMac was verified successfully.
- The company iMac repository at `~/Documents/Codex/chuxin5001` is the active GitHub-backed handoff repository.
- The repository was clean before updating this file.
- This file is the current handoff artifact for continuing work across machines.

## Conversation Summary

- The user asked how to continue Codex Desktop work from a company computer at home.
- The recommended workflow is:
  - Keep project code and handoff notes in a GitHub repository.
  - Before leaving one machine, update this handoff file with current goals, completed work, modified files, and next steps.
  - Commit and push the handoff.
  - On the other machine, pull the repository and ask Codex to continue from this file.
- Codex Desktop account/cloud state may help with continuity, but GitHub plus this handoff file is the reliable fallback.

## Decisions

- Do not commit account passwords, macOS login passwords, private keys, raw tokens, or full sensitive connection notes.
- Treat SSH/VPN/ZeroTier details as operational secrets; keep them in local configuration or a password manager, not in the repository.
- Use `HANDOFF.md` as the default cross-machine continuation file.

## Open Questions

- Confirm whether this GitHub repository is private and appropriate for cross-machine operational notes.
- Confirm whether future handoffs should include only summaries or also sanitized command transcripts.
- Confirm whether a separate private repository should be used for machine setup notes.

## Next Steps

- [ ] Pull this repository on the home MacMini.
- [ ] Ask Codex to read `HANDOFF.md` before continuing work.
- [ ] Before switching machines again, update this file with the new project state.
- [ ] Commit and push after each meaningful handoff update.

## Environment Notes

- Company machine: iMac reachable over the user's approved SSH/overlay-network setup.
- Home machine: MacMini reachable locally by the user.
- Authentication: SSH key-based login was used; no password was read or stored in this file.
- Sensitive connection details should remain outside Git history.

## Last Verified

- Date: 2026-05-09
- Machine: company iMac, checked remotely from the home environment
- Check: SSH connectivity and Git repository status
- Result: SSH succeeded; `~/Documents/Codex/chuxin5001` was clean before this handoff update.
