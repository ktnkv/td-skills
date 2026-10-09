# td-skills

Agent skills for working with TouchDesigner.

Each skill is a plain [Agent Skills](https://agentskills.io) folder under [skills/](skills/), so any agent that reads this format can use it.

## Skills

| Skill | What it covers |
| --- | --- |
| [td&#8209;tool&#8209;dev](skills/td-tool-dev/SKILL.md) | Conventions for building and releasing a TouchDesigner tool, a utility component that is dropped into a project: repository layout, tests that run in a live TouchDesigner, README and changelog format, versioning, the About page, tox export and the GitHub Release. |
| [td&#8209;patch&#8209;dev](skills/td-patch-dev/SKILL.md) | Conventions for building a TouchDesigner patch, a reusable component with optional inputs and outputs: file name, In/Out operators, grouping into child COMPs, the Interface page built with the bundled [Promote](https://github.com/ktnkv/td-par-promoter) tool, the README annotation, the changelog DAT, versioning, the About page and tox export. |

## Install

Once installed, the skills are available in every project and each one loads when the work matches its description.

### Claude Code

The repository is a plugin that carries all the skills.

```bash
claude plugin marketplace add ktnkv/td-skills
```

```bash
claude plugin install td-skills@td-skills
```

Update with `claude plugin update td-skills@td-skills`.

### Other agents

The [skills CLI](https://github.com/vercel-labs/skills) installs the skills for Codex, Cursor, Gemini CLI, GitHub Copilot and many other agents. It needs Node.js.

```bash
npx skills add ktnkv/td-skills -g
```

To install a single skill, name it:

```bash
npx skills add ktnkv/td-skills -g --skill td-tool-dev
```

Update with `npx skills update -g`.

## License

[MIT](LICENSE)
