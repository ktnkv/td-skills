# Development

The source of truth is `src/*.py`. The DAT holds a copy of the text. The `file` parameter is empty, there is no file sync. The DAT name equals the file name.

After an edit, load the text into the DAT. If the extension class changed, pulse `reinitextensions` afterwards.

The public git set is `README.md`, `CHANGELOG.md`, the current `Name.version.tox`, `src/**/*.py` and `tests/**/*.py` with `tests/README.md`. The tool's `CLAUDE.md` and the test `.toe` stay local. Git ignores them, so `git add` on them needs `-f`; do not.

Project mutations: validate everything first, then one undo block. On a refusal nothing changes. Do not delete other people's operators without asking. Experiment in a scratch COMP.

Do not swap the code of the live tool to see whether tests catch a break. A broken variant can loop forever and freeze TouchDesigner, and everything unsaved is lost if it has to be killed. Check test sensitivity on a copy, or not at all.

`project.save()` saves the `.toe` and moves the previous `.N` to `Backup/`. Exporting a tox does not call it. `project.load()` from a session starts a new TouchDesigner process.

Do not read `.width` and `.height` of panels: a known bug freezes the layout.
