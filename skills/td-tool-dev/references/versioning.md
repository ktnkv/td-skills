# Version

Versions follow [Semantic Versioning](https://semver.org/spec/v2.0.0.html): `MAJOR.MINOR.PATCH`.

The built tool is called `Name.version.tox` and lives in the repository root. Example: `Promote.0.6.2.tox`. No unversioned `Name.tox`. The repository holds one current tox: at a release the old file is deleted and the tox is saved again under the new name.

The number is a human decision, not a fact of the build. Propose a bump (fix: PATCH, new or changed behavior: MINOR, breaking: MAJOR; below 1.0 a break is MINOR) and ask. It is set on About before export. The same number is in the changelog section heading and in the tox file name. The README does not carry the number.
