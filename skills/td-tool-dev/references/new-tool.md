# New tool

Layout of a tool repository:

```
README.md            public: three sections, see readme.md
CHANGELOG.md         public
Name.0.1.0.tox       public: the one current build
src/                 public: one .py per DAT, same name as the DAT
src/README.md        public: says the DAT text is a copy of these files
tests/               public: see tests.md
<test project>.toe   local
CLAUDE.md / AGENTS.md / GEMINI.md
                     local: behavior and pitfalls of this tool, for the agent
```

Inside the project:

- One baseCOMP at `/tools/<name>`. See layout.md.
- Logic is an extension on that COMP (class `NameExt`, DAT `NameExt` with `file` empty). Other DATs (callbacks, Execute DATs) are children of it.
- Custom pages first, `About` last. Every tool has a toggle `Active` (Toggle, on by default) so the user can switch the tool off. Off means the tool does nothing and leaves nothing active in the project: hooks removed, callbacks and Execute DATs inert. Turning it on again restores the behavior. If the tool patches `/ui` or `/sys`, read ui-hook.md.
- Start at `0.1.0`. Write it on About (about.md).
- `.gitignore` is a whitelist: ignore everything, then allow `README.md`, `CHANGELOG.md`, `**/*.tox`, `src/**/*.py`, `src/README.md` and `tests/**/*.py`.
- `CLAUDE.md` / `AGENTS.md` / `GEMINI.md` holds what is specific to the tool: files and their roles, how it works and why, pitfalls found, the test project.
