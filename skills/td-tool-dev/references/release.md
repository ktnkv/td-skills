# GitHub Release

Only when the user asks for it, after a successful export, as a separate step. Commit, push, tag and release publish outside the machine and are hard to take back, so ask first even if an export was just approved. Four steps, in this order.

1. Commit the public set: `README.md`, `CHANGELOG.md`, `src/**/*.py`, `tests/`, the new tox and the removal of the old one. The message is about this release. `CLAUDE.md` and the test `.toe` are not committed.
2. Push the current branch.
3. Tag `vMAJOR.MINOR.PATCH` on that commit. The file `Name.0.6.2.tox` gets the tag `v0.6.2`.
4. GitHub Release via `gh release create` with the same tag. The title is the name and version. The body is the changelog section of this version. The tox is attached.

```bash
notes=$(mktemp)    # fill it with the changelog section of this version only
git tag v0.6.2
git push origin v0.6.2
gh release create v0.6.2 --title "Name 0.6.2" --notes-file "$notes" Name.0.6.2.tox
```

The notes file holds only the changelog section of this version, with no heading of other versions.
