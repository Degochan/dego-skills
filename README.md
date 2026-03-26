# dego-skills

Backup and source-of-truth repository for Codex skills.

## What lives here

- Each skill has its own folder.
- Edit skills here first.
- Then install them into `~/.codex/skills/` when needed.

## Current skills

- `lafragata-carousel/`

## Recovery on a new Mac or PC

Clone the repository:

```bash
git clone git@github.com:Degochan/dego-skills.git /Users/diego/Sitios/IAcode/skills
```

Install all skills:

```bash
cd /Users/diego/Sitios/IAcode/skills
./setup/install-all.sh
```

Or install a single skill:

```bash
cd /Users/diego/Sitios/IAcode/skills/lafragata-carousel
./install.sh
```

## Workflow

1. Edit the skill in this repo.
2. Test it locally in Codex by installing it into `~/.codex/skills/`.
3. Commit and push the change.

## Notes

- This repo is the source of truth.
- `~/.codex/skills/` is only the local installed copy.
