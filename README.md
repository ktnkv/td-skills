# td-tool-dev

A Claude Code plugin with one skill: the conventions for building and releasing a TouchDesigner tool, a utility component that is dropped into a project. It covers the repository layout, tests that run in a live TouchDesigner, the README and changelog format, versioning, the About page, tox export and the GitHub Release.

## Install

```bash
claude plugin marketplace add ktnkv/td-tool-dev
```

```bash
claude plugin install td-tool-dev@td-tool-dev
```

The skill is then available in every project and loads when the work is about a TouchDesigner tool.

## Contents

- [skills/td-tool-dev/SKILL.md](skills/td-tool-dev/SKILL.md): the rules in short and the order of work.
- [skills/td-tool-dev/references/](skills/td-tool-dev/references/): one file per topic, read when the topic comes up.
