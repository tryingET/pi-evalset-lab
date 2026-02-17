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
- Published `pi-evalset-lab@0.1.0` to npm (bootstrap-token path).
- Configured npm trusted publisher for GitHub release-based publishing.
- Clarified `/evalset` invocation behavior (`pi -p` / `pi -e ... -p`) and report location docs.
- Added sample visual report artifacts in `examples/`.
- Added repeatable JSON -> static HTML export helper (`npm run evalset:export-html`).

### Remaining
1. Ship the next user-facing release and verify trusted publishing works without npm token secrets.
2. Add smoke tests for argument parsing and scoring behavior.
3. Revoke the bootstrap npm token if it is still active.

## Hard constraints
- Time: keep work in small slices that can be reviewed quickly.
- Quality: no regressions in existing `/evalset` commands.
- Security: no insecure defaults in scripts, release workflows, or extension loading.
- Scope: prioritize reproducibility and UX clarity over feature breadth.

## Success criteria
- [ ] Working tree is clean with intentional, reviewable commits.
- [x] `npm run check` passes.
- [x] `npm pack --dry-run` succeeds with expected package contents.
- [ ] Trusted publishing is verified on a new npm release.
- [ ] Automated tests cover parser/scoring basics.
- [x] JSON -> HTML report export helper is available and documented.
