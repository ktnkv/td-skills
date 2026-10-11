# Composite patch

A composite patch is a patch built from other patches and kept together with them. Everything else in this skill applies to it unchanged; this file adds where its files live and how its parts are kept in step.

## When a patch is composite

The user decides. Suggest it only when there is a reason to, not for every patch that has a nested COMP.

What speaks for it:

- The patch is a module of a larger system, such as the audio analysis of a performance rig. It is expected to live for months or years and change rarely.
- Its parts make sense as patches of their own: each has inputs, outputs and a version, and is worth changing and checking apart from the rest.

What does not make a patch composite:

- Size or difficulty. A creative patch, one of many, that carries out one visual or sonic idea stays an ordinary patch however involved its network is, whatever its family.

## Layout

A composite patch has a folder of its own in the library, named after the patch. It does not sit among the ordinary patches.

```
music_features/
  music_features.chop.1.0.0.tox     the composite patch
  src/
    bpm_tracker.chop.0.1.0.tox      its parts
    autoscale.chop.0.1.0.tox
```

The parts lie in `src/`. Each part is a patch in full: its own name, version, readme, changelog and About page, exported by export.md. `src/` holds one current tox per part.

## Source of truth

The tox files in `src/` are the source of truth for what is inside the composite patch. The composite patch carries a copy of each part and does not load it from the file: no `externaltox`, nothing is imported when a project opens. The saved composite patch works without its folder.

This is the arrangement td-tool-dev uses for code, where `src/*.py` is the source of truth and the DAT holds a copy.

- Change a part as a patch, export it to `src/`, then replace its copy inside the composite patch. Do not edit a copy in place: the file in `src/` would fall behind with nothing to show it.
- A part used in several places is one file in `src/` and a copy in each place.
- Replacing a copy removes the binds Promote put on its parameters. Promote them again and run `Updateall`. The names on `Interface` stay the same unless names inside the part changed.

## Version and export

The composite patch has its own version, by versioning.md, counted from its own In and Out operators and `Interface` page. A new version of a part does not by itself change it: decide from what the change does to the composite patch.

Its changelog is written for whoever uses the composite patch and does not repeat the changelogs of the parts.

Before export, on top of export.md: for every part, compare `Version` on the About page of the copy inside with the file in `src/`. Say which differ and do not save until the user has decided for each.
