# td-tool-dev

An agent skill with the conventions for building and releasing a TouchDesigner tool, a utility component that is dropped into a project. It covers the repository layout, tests that run in a live TouchDesigner, the README and changelog format, versioning, the About page, tox export and the GitHub Release.

The skill is a plain [Agent Skills](https://agentskills.io) folder, so any agent that reads this format can use it. The repository is also a Claude Code plugin.

## Install

Once installed, the skill is available in every project and loads when the work is about a TouchDesigner tool.

### Claude Code

```bash
claude plugin marketplace add ktnkv/td-tool-dev
```

```bash
claude plugin install td-tool-dev@td-tool-dev
```

Update with `claude plugin update td-tool-dev@td-tool-dev`.

### Codex, Cursor, Gemini CLI, GitHub Copilot in VS Code

These agents read user skills from `~/.agents/skills/`. Clone the repository anywhere and link the skill folder there:

```bash
git clone https://github.com/ktnkv/td-tool-dev.git ~/td-tool-dev
```

```bash
mkdir -p ~/.agents/skills && ln -s ~/td-tool-dev/skills/td-tool-dev ~/.agents/skills/td-tool-dev
```

Update with `git pull` in the clone.

The [skills CLI](https://github.com/vercel-labs/skills) does the same in one step and knows more agents:

```bash
npx skills add ktnkv/td-tool-dev -g
```

## Contents

- [skills/td-tool-dev/SKILL.md](skills/td-tool-dev/SKILL.md): the rules in short and the order of work.
- [skills/td-tool-dev/references/](skills/td-tool-dev/references/): one file per topic, read when the topic comes up.

## License

[MIT](LICENSE)
