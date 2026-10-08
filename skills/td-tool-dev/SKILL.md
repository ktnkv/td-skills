---
name: td-tool-dev
description: >-
  Conventions for building and releasing a TouchDesigner tool (тул): SemVer,
  changelog, README headings, tests/, project layout, About page, tox export,
  and GitHub Release. Use when creating or changing a TouchDesigner tool,
  starting a new one, bumping a version, editing About, saving or exporting a
  tox, tagging, or publishing a GitHub Release.
---
# TouchDesigner tool development

A tool is a utility component that is dropped into a project. Rules:

- Starting a new tool: [references/new-tool.md](references/new-tool.md). Every tool has an `Active` parameter the user can switch off.
- Day-to-day development: [references/development.md](references/development.md). If the tool patches `/ui` or `/sys`, also [references/ui-hook.md](references/ui-hook.md).
- The README has three sections: How to use, How it works, Limitations. See [references/readme.md](references/readme.md).
- The repository root has `tests/`. See [references/tests.md](references/tests.md).
- The version is SemVer and is the same in the changelog, on About and in the tox name. See [references/versioning.md](references/versioning.md) and [references/changelog.md](references/changelog.md).
- The last custom page of the component is About: `Version` and `.tox Save Build`. See [references/about.md](references/about.md).
- The tool lives in `/tools/<name>` at the project root. See [references/layout.md](references/layout.md).
- Before a release read [references/export.md](references/export.md), then [references/release.md](references/release.md).

## Order of work

1. Change `src/`, load it into the DAT.
2. Add or update a file in `tests/`, run the folder.
3. Update README and CHANGELOG.
4. Agree the version with the user, write it on About.
5. Export the tox.
6. Release (commit, push, tag, GitHub Release) only when the user asks for it. It publishes outside the machine; approval for an export is not approval for a release.

## Language

These rules are in English. The README, CHANGELOG, code comments and commit messages of a tool are in English. Talk to the user in the language they use.

Behavior of a specific tool stays in that repository's `CLAUDE.md`. This skill does not replace it.
