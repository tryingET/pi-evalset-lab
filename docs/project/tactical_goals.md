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

## Current cycle status

### Completed
- Added troubleshooting notes for `/evalset` invocation (interactive vs `pi -p` non-interactive).
- Kept run/compare reports discoverable under `.evalset/reports/`.
- Added stronger example datasets (`fixed-task-set-v2.json`, `fixed-task-set-v3.json`).
- Synchronized docs and changelog with behavior updates.

### Remaining
1. Add smoke tests for argument parsing and report/scoring behavior.
2. Add a repeatable JSON -> HTML report export helper.
3. Complete npm publish after npmjs auth/registry setup.

## Hard constraints
- Time: keep work in small slices that can be reviewed quickly.
- Quality: no regressions in existing `/evalset` commands.
- Security: no insecure defaults in scripts or extension loading.
- Scope: prioritize reproducibility and UX clarity over feature breadth.

## Success criteria
- [x] `npm run check` passes.
- [x] Documented troubleshooting path for `pi -e` confusion exists.
- [x] Reports include stable run metadata and are easy to locate.
- [x] New maintainers can execute a compare workflow from README without intervention.
- [ ] Automated tests cover parser/scoring basics.
- [ ] Package is published on npm.
