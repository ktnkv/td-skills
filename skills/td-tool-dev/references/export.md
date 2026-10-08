# Export

Checks happen before `save`. Export is the moment the number is frozen into the file.

All three points are required.

1. **Tests.** `tests/` is in place and its files were run. New behavior is covered. If older behavior turns out to be under-covered, say so.
2. **Documentation.** The three README headings are in place and the install step names the tox as `Name.*.tox`, with no version. The changelog has a section for this version and no foreign changes. `Version` on About, the changelog heading and the file name carry one number. The documentation matches the behavior.
3. **The number is already written** on About (value and default) before the build stamp.

Then, with `tool = op('/tools/Name')`:

```python
tool.op('NameExt').text = open('src/NameExt.py').read()  # other src/*.py files likewise
tool.par.reinitextensions.pulse()
tool.par.Toxsavebuild = app.build
tool.par.Toxsavebuild.default = app.build
tool.save('Name.Version.tox')
```

After `save`, compare the DAT texts with the files. Delete the previous `Name.old.tox`.
