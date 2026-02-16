---
summary: "Near-term execution goals tied to current sprint cycles."
read_when:
  - "Planning immediate tasks and delivery scope."
system4d:
  container: "Tactical work queue framing."
  compass: "Ship the next smallest valuable increment safely."
  engine: "Break work into verifiable, low-risk tasks."
  fog: "Unexpected integration constraints may reprioritize tasks."
---

# Tactical goals

## Current cycle goals
1. Add a short troubleshooting note explaining why `/evalset` must run inside pi (or via `pi -e ... -p`) and where output appears.
2. Ensure compare/run commands always produce discoverable report paths.
3. Add smoke tests for argument parsing and report file creation.
4. Keep docs and changelog synchronized with behavior changes.

## Hard constraints
- Time: keep work in small slices that can be reviewed quickly.
- Quality: no regressions in existing `/evalset` commands.
- Security: no insecure defaults in scripts or extension loading.
- Scope: prioritize reproducibility and UX clarity over feature breadth.

## Success criteria
- `npm run check` passes.
- At least one documented troubleshooting path for `pi -e` confusion exists.
- Reports include stable run metadata and are easy to locate.
- New maintainers can execute a compare workflow from README without intervention.
