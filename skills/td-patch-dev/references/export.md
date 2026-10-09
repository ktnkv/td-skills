# Export

Checks happen before `save`. Export is the moment the number is frozen into the file.

1. **Structure.** The root holds only In/Out operators, child COMPs, operators that stand alone, `readme` and `changelog`. Stable groups are in child COMPs. No errors in the patch.
2. **Interface.** `Updateall` was run after the last promote. The root has two custom pages, `Interface` and `About`, in this order.
3. **Texts.** `readme` matches the behavior and its box fits the text. The `changelog` DAT has a section for this version on top.
4. **The number is already written** on About (value and default) before the build stamp, and matches the changelog heading and the file name.

Then, with `patch = op('/path/to/patch')`:

```python
patch.par.Toxsavebuild = app.build
patch.par.Toxsavebuild.default = app.build
patch.save('<library folder>/name.family.Version.tox')
```

Ask the user for the library folder if it is not known. After `save`, delete the previous `name.family.old.tox` there.
