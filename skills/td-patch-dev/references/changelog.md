# Changelog

The changelog is a Text DAT named `changelog` at the root of the patch, with the node color `(0.5, 0.05, 0.05)`. It travels inside the tox; there is no separate file.

Its position is fixed: see structure.md, "Placement of readme and changelog".

Entries follow [Keep a Changelog](https://keepachangelog.com/en/1.1.0/), in English, newest version on top. A version lists only the categories that have something in them, in this order:

- **Added** — new functionality
- **Changed** — changed existing functionality
- **Deprecated** — functionality marked as obsolete
- **Removed** — something was removed
- **Fixed** — a bug fix

```markdown
## 1.2.0

### Added

- One sentence about the new behavior.

### Fixed

- One sentence about the bug and the result.
```

Write an entry from the point of view of whoever uses the patch: inputs, outputs, parameters, the look of the result. An internal rewiring that changes none of these is not an entry.
