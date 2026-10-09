# Tests

Every tool has `tests/` in the repository root. It is part of the tool, not a draft for the handover: the files stay after a run.

New behavior gets a file in `tests/` before export. The run before export takes this folder, not a one-off script beside it.

The files are Python that runs in a live TouchDesigner. A separate pytest is not needed.

Convention:

- `tests/run_tests.py` is the runner: `exec(open(project.folder + '/tests/run_tests.py').read())`. It loads every `tests/test_*.py`, runs each `test_*(t)` function, prints failures and a count, and supports `ONLY = 'part of a name'`.
- `t` gives the tool, a fresh scratch COMP with a fixed name and a few asserts. The scratch is destroyed after every test, pass or fail. Other people's operators and the test files are never deleted.
- Do not call a tool entry point that walks the whole project (like Updateall). Call its inner function on the scratch COMPs, or the test rewrites the user's patch.
- Tests that use undo put steps on the project's undo stack. Say so in `tests/README.md`.
- Hooks in `/ui` are inspected, not changed.
- `tests/README.md` says how to run and what each file covers.

The public git set includes `tests/` together with `README.md`, `CHANGELOG.md`, the current tox and `src/`.

A list of checks in a tool's `CLAUDE.md` / `AGENTS.md` / `GEMINI.md` does not replace the `tests/` folder.
