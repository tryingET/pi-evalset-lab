---
summary: "Session handoff prompt for pi-evalset-lab."
read_when:
  - "Starting the next focused development session."
system4d:
  container: "Session handoff artifact."
  compass: "Resume work quickly with explicit priorities."
  engine: "Capture context, constraints, and next actions."
  fog: "Staleness risk if not updated after major changes."
---

# Next session prompt for pi-evalset-lab

## Current state snapshot

- `pi-evalset-lab@0.1.0` is published on npm (bootstrap token publish succeeded).
- npm trusted publisher was configured, but end-to-end trusted publish flow still needs verification on a new release.
- GitHub repo metadata was updated (description + topics).
- Local repo has uncommitted changes.

### Local working tree (pi-evalset-lab)

Modified:
- `AGENTS.md`
- `CHANGELOG.md`
- `README.md`
- `docs/dev/next_steps.md`
- `docs/dev/status.md`
- `docs/project/resources.md`
- `docs/project/tactical_goals.md`
- `package.json`
- `scripts/docs-list.sh`

Untracked:
- `examples/evalset-compare-sample-embedded.html`
- `examples/evalset-compare-sample.png`

## Main goals for next session

1. **Finalize and commit pi-evalset-lab changes** in clean groups:
   - metadata/docs/package publish-surface updates
   - sample visual assets (`examples/*.html`, `examples/*.png`)
   - decide whether `AGENTS.md` and `scripts/docs-list.sh` are intentional for this release
2. **Run checks**:
   - `npm run check`
   - `npm pack --dry-run`
3. **Release verification**:
   - create a releasable user-facing commit (`fix:`/`feat:`)
   - run release-please flow
   - publish from GitHub release
   - confirm npm version updates without token secret (trusted publishing path)
4. **Post-verify hardening**:
   - revoke bootstrap npm token (if still active)
   - keep OIDC/trusted publishing as the default

## Template repo follow-up (separate repo)

Also pending in `~/programming/pi-extensions/template`:
- `npm-bootstrap-publish` CLI + guardrails/docs updates are present but not committed/pushed.
- Commit those changes in one focused template commit after confirming scope.

## Suggested first commands

```bash
git status --short
npm run check
npm pack --dry-run
```

Then decide commit grouping before staging.
