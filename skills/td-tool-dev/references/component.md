# Inside the component

The root of the tool COMP holds:

- the extension DAT and the other DATs of the tool (new-tool.md);
- the `readme` annotation;
- the `changelog` DAT.

Both travel inside the tox, so a tool that was dropped into a project explains itself without its repository.

The `comment` of the tool COMP stays empty. What the tool is and how to use it is said in `readme`, not in a comment on the tile.

## readme

An Annotate COMP named `readme`. `Titletext` is `README`, `Bodytext` is the text.

`create(annotateCOMP, 'readme')` leaves the operator named `annotate1`: its extension renames it on creation. Set `name` after creating it.

The text is a short digest of `README.md`, not a copy of it: one sentence on what the tool does, then how to use it, which is the steps of `How to use` without the download step. Plain text, no markdown. `How it works`, `Limitations`, the version and the history of changes stay out. When `README.md` changes in these parts, change the annotation in the same step.

A new Annotate is 382 by 288 units. Set `nodeWidth` and `nodeHeight` so the box fits the text with no empty area below it, and shrink it again when the text gets shorter. Check the result on a screenshot of the network rather than trusting a formula.

## changelog

A Text DAT named `changelog`, with the node color `(0.5, 0.05, 0.05)`. Its text is a copy of `CHANGELOG.md`, which stays the source of truth; the `file` parameter is empty. The export step loads it (export.md).

## Placement

Positions are `nodeX`, `nodeY`, which is the bottom-left corner of a tile. Both are measured over the operators at the root of the tool, not counting `readme` and `changelog`.

- `readme`: `nodeX` is the smallest `nodeX` among them, `nodeY` is the largest `nodeY` among them plus 200.
- `changelog`: `nodeX = readme.nodeX - 200`, `nodeY = readme.nodeY`.

Move both again whenever the leftmost or the topmost operator changes. The box of `readme` grows up and to the right from that corner; an annotation encloses the operators that lie inside its box, so nothing else may sit there.
