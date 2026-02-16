---
summary: "PR template for scoped changes with explicit validation."
read_when:
  - "Opening a pull request for review."
system4d:
  container: "Reviewer-ready pull request intake format."
  compass: "Clarity, verification, and rollback awareness."
  engine: "Summarize -> validate -> assess risk -> request review."
  fog: "Integration side effects may appear after merge."
---

## Summary

- What changed?
- Why now?

## Validation

```bash
npm run check
```

Paste relevant output (and any additional checks) below.

## Risk and rollback

- Risk level: low / medium / high
- Rollback plan if this regresses production behavior:

## Checklist

- [ ] Scope is focused and reviewable.
- [ ] Docs/changelog updated when behavior changed.
- [ ] No secrets or credentials added.
