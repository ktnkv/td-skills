---
name: td-patch-dev
description: >-
  Conventions for building a TouchDesigner patch (патч): a reusable .tox
  component with optional inputs and outputs. Covers
  the file name, In/Out operators, grouping into child COMPs, the Interface
  page built with the bundled Promote tool, the README annotation, the
  changelog DAT, SemVer, the About page and tox export, and the two-level
  layout of an audio-reactive or otherwise data-driven patch. Use when creating
  or changing a patch, exposing its parameters, making it react to audio or
  other live data, bumping its version, or saving it as a tox.
---
# TouchDesigner patch development

A patch is one COMP saved as a `.tox`. Inputs and outputs are both optional: a patch that only runs scripts has neither. Patches live together in a library folder; a patch has no repository, tests or GitHub Release of its own. Rules:

- The file is `name.family.version.tox`, where the family is that of the main output, or `comp` when there is none: `feedbackTrails.top.1.2.0.tox`. See [references/naming.md](references/naming.md).
- The root of the patch holds In/Out operators, child COMPs, the `readme` annotation and the `changelog` DAT. Operators that form a stable group by meaning go into a child COMP; an operator that stands alone stays at the root. See [references/structure.md](references/structure.md).
- A parameter reaches the outside only through the Promote tool, which is bundled with this skill. Nothing on the `Interface` page is made by hand. See [references/interface.md](references/interface.md).
- The root has exactly two custom pages: `Interface`, then `About`. See [references/about.md](references/about.md).
- The README is a short Annotate COMP sized to its text. See [references/readme.md](references/readme.md).
- The changelog is a Text DAT inside the patch. See [references/changelog.md](references/changelog.md).
- The version is SemVer and is the same in the changelog, on About and in the file name. See [references/versioning.md](references/versioning.md).
- A patch built from other patches and kept in a folder with them is a composite patch. Whether a patch is one is the user's decision. See [references/composite-patch.md](references/composite-patch.md).
- A patch whose parameters are driven by fast-changing outside data, most often an audio-reactive one, is a reactive patch and is built in two levels: a self-sufficient `inner_interface` with every important parameter exposed, and an upper level that takes the data, drives some parameters with expressions and exposes only the ones set by hand. Which parameters are driven is the user's decision. See [references/reactive-patch.md](references/reactive-patch.md).
- Before saving the tox read [references/export.md](references/export.md).

## Order of work

1. Build or change the network, keeping the grouping.
2. Promote the parameters, then run `Updateall`.
3. Update the `readme` annotation and the `changelog` DAT.
4. Propose a version from the changes made, agree it with the user, write it on About.
5. Export the tox.
