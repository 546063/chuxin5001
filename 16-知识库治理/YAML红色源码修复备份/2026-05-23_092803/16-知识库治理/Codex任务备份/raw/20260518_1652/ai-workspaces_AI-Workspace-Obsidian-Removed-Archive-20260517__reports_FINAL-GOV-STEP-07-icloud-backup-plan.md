# FINAL-GOV-STEP-07: iCloud Backup Plan

Date: 2026-05-17
Target: /Users/mac/Library/Mobile Documents/iCloud~md~obsidian/Documents/AI-Workspace-Obsidian

---

## iCloud Target Status

| Property | Value |
|----------|-------|
| Path | /Users/mac/Library/Mobile Documents/iCloud~md~obsidian/Documents/AI-Workspace-Obsidian |
| Exists | YES (empty directory) |
| File Count | 0 |
| Last Modified | 2026-05-17 17:58 |

**Current State**: The target directory exists but is empty. The iCloud sync has not populated it yet.

---

## Backup Recommendation

### Method: rsync (preferred) over copy

**Reason**: rsync is superior for iCloud target because:
1. **Efficiency**: Only transfers changed files, avoiding re-upload of unchanged content
2. **Safety**: `--archive` preserves permissions/timestamps
3. **Dry-run capability**: Can verify before execution
4. **Resume capability**: Can be interrupted and resumed without corruption

### Command Template

```bash
# Dry run first
rsync -avn --delete "/Users/mac/ai-workspaces/AI-Workspace-Obsidian/" \
    "/Users/mac/Library/Mobile Documents/iCloud~md~obsidian/Documents/AI-Workspace-Obsidian/"

# Actual sync (after verifying dry-run output)
rsync -av --delete "/Users/mac/ai-workspaces/AI-Workspace-Obsidian/" \
    "/Users/mac/Library/Mobile Documents/iCloud~md~obsidian/Documents/AI-Workspace-Obsidian/"
```

### Alternative: Apple Finder Copy

If rsync fails (iCloud path quirks), use Finder:
1. Open both source and iCloud target in Finder
2. Drag and drop with Option+View to see size comparison
3. Replace all files in target

---

## Pre-Flight Checks

Before backup, verify:
1. iCloud sync status: Check System Settings > Apple ID > iCloud > Documents
2. Source vault integrity: Confirm no incomplete writes in source
3. Target emptiness confirmed: 0 files is expected if iCloud hasn't synced yet

---

## Risks & Mitigations

| Risk | Mitigation |
|------|------------|
| iCloud path not accessible | Use Finder fallback |
| Sync conflict with existing iCloud content | --delete flag removes old, ensure target is clean first |
| Large vault = long upload time | Run during stable internet connection |

---