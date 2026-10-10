# README

The README of a patch is an Annotate COMP named `readme` at the root of the patch. `Titletext` is `README`, `Bodytext` is the text.

## What to write

Keep it short. Do not write what the network and the parameter names already say. A patch with nothing to add has a title and an empty body.

Worth a line:

- how to use it when that is not obvious from the inputs and parameters;
- sweet spots: ranges or combinations of parameters where it looks or behaves best;
- problems found: what breaks it, what is expensive, what it does not handle.

Not worth a line: a list of parameters, a description of the signal path, the version, the history of changes.

## Size

A new Annotate is 382 by 288 units, far too large for a line or two. Set `nodeWidth` and `nodeHeight` so the box fits the text with no empty area below it, and shrink it again when the text gets shorter. Check the result on a screenshot of the network rather than trusting a formula.

Place it beside the network, not over it: an annotation encloses the operators that lie inside its box.
