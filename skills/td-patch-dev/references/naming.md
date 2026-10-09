# File name

`name.family.version.tox`, for example `feedbackTrails.top.1.2.0.tox`.

`family` is the family of the main output, lowercase: `top`, `chop`, `sop`, `pop`, `dat`, `mat`. This follows TouchDesigner itself, where an operator is named by what it gives: a Noise TOP with an optional input is a TOP, and CHOP to TOP is a TOP.

- Inputs are not part of the name. They are seen on the connectors.
- Several outputs of one family: that family.
- Outputs of different families: the family of the main output. If no output is the main one, `comp`.
- No outputs, as in a patch that only runs scripts: `comp`, for example `sceneSwitcher.comp.1.0.0.tox`.
- The family says nothing about the meaning of the data. The meaning goes into `name`: `dmxFixture.chop`, not `fixture.chop.dmx`.

The full signature of a patch is its In and Out operators: their names, order and families. It is not repeated in the file name.

The COMP itself is called `name`, without family and version.
