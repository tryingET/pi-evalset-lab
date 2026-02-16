---
summary: "Changelog for scaffold evolution."
read_when:
  - "Preparing a release or reviewing history."
system4d:
  container: "Release log for this extension package."
  compass: "Track meaningful deltas per version."
  engine: "Document changes at release boundaries."
  fog: "Versioning policy may evolve with team preference."
---

# Changelog

All notable changes to this project should be documented here.

## [Unreleased]

### Added

- Added `/evalset` MVP command with subcommands:
  - `init` to generate a starter fixed-task-set dataset
  - `run` to evaluate one variant against a dataset
  - `compare` to evaluate baseline vs candidate system prompts
- Added example files in `examples/`:
  - `fixed-task-set.json`
  - `fixed-task-set-v2.json`
  - `fixed-task-set-v3.json`
  - `system-baseline.txt`
  - `system-candidate.txt`
- Added report output support to `.evalset/reports/*.json` with per-case and aggregate metrics.
- Added run identity metadata to reports (`runId`, `datasetHash`, `casesHash`, `variantHash`).
- Reduced session message payload size by storing only lightweight report metadata instead of full report bodies.

### Changed

- Clarified `/evalset` invocation docs: use `pi -p` (or `pi -e ... -p`) for non-interactive runs; `/evalset` is not a standalone shell binary.
- Added the same non-interactive invocation note to `/evalset help` output.

## [0.1.0] - 2026-02-08

### Added

- Initial production-ready scaffold generated from template v2.
