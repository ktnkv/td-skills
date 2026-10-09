# Interface

The parameters of a patch sit on the custom page `Interface` of its root. That page is built only by the Promote tool. Do not append parameters to it, write binds on it or reorder it by hand.

Promote creates a matching custom parameter on every COMP from the owner's parent up to the patch and binds each level to the one above. The result is plain custom parameters and binds: the saved patch does not need the tool.

## Getting the tool

The tool is bundled: `assets/Promote.*.tox` next to this skill. Do not download it.

1. Look for `/tools/promote` in the project and read `Version` on its About page.
2. If it is absent, load the bundled tox into `/tools` (create that COMP at the project root if needed) and name it `promote`.
3. If it is older than the bundled one, tell the user and replace it. The tool keeps no state of its own, so a replacement loses nothing.

The tool is not part of the patch and is not saved into its tox.

## Promoting

```python
promote = op('/tools/promote').ext.PromoteExt
patch = op('/path/to/patch')

promote.Promote(patch.op('src/rect').par.sizex, patch)      # one parameter
promote.Promote(patch.op('loop/transform').parGroup.s, patch)  # the whole group
promote.Updateall()                                          # once, at the end
```

`Promote` returns the script names it created, top level last. A refusal raises `PromoteError` and changes nothing; read the message instead of working around it.

A script name is built from the path below the patch plus the parameter name: `src/rect` and `sizex` give `Srcrectsizex`, under a header labeled `src.rect`.

Renaming an operator on that path and running `Updateall` renames the parameter on the patch. That breaks whoever uses the patch, so it is a MAJOR change (versioning.md). Say so before renaming, not after.

## A value with no parameter behind it

A script or expression often needs a value that is not a parameter of any operator. Do not create it on the root.

1. Put the logic into a child COMP.
2. Create the custom parameter on that child, on a page whose name is not `Interface`.
3. Read it there: `parent().par.Gain`.
4. Promote it like any other parameter.

The same holds for a parameter driven by an expression. Promote refuses it; promote the value the expression reads instead. `noise1.par.amp` with the expression `parent().par.Gain * 2` stays as it is, and `Gain` on the child COMP is promoted.

## What the interface cannot hold

Promote refuses these, and a patch does not expose them:

- operator references: take the operator through an In operator;
- Python and sequence parameters: use plain parameters, or take a list through an In DAT.
