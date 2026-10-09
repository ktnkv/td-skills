#!/bin/sh
# Replace the Promote tox bundled with td-patch-dev by the latest release.
# The release in ktnkv/td-par-promoter is the only source; never edit the copy.
set -e
assets="$(dirname "$0")/../skills/td-patch-dev/assets"
rm -f "$assets"/Promote.*.tox
gh release download --repo ktnkv/td-par-promoter --pattern 'Promote.*.tox' --dir "$assets"
ls "$assets"
