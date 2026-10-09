# Structure

## Root

The root of the patch holds only:

- In operators, if the patch takes anything, and Out operators, if it gives anything;
- child COMPs with the work;
- operators that stand alone (see Grouping);
- the `readme` annotation (readme.md);
- the `changelog` DAT (changelog.md).

In and Out operators have names that say what goes through them: `in_mask`, `out_dmx`. A single one may keep its default name. Their order on the connectors is part of the public interface (versioning.md).

Something the patch needs from outside comes in through an In operator, not through a parameter that holds an operator path.

## Grouping

Operators that form a stable group by meaning go into one child COMP. A patch that makes a seed, runs it through a feedback loop and then post-processes it has three: `src`, `loop`, `post`.

- The root reads as a map: a few COMPs wired in signal order.
- A child COMP has its own In and Out operators and is wired at the root like any operator.
- The name of a child COMP ends up in the script names and headers of the `Interface` page (interface.md). Choose it as a word the user of the patch will read, and do not rename it casually.
- A group is a stage of the work, not a count of operators. A COMP with one operator is fine when it is a stage that could expectedly grow: `src` with a single Rectangle TOP, where more operators shaping the seed may follow. An operator that stands alone, with nothing expected beside it, stays at the root without a COMP of its own.

A parameter of an operator at the root is promoted like any other, one level up. But nothing at the root consumes a parameter of the patch: a script or expression that needs a value of its own lives in a child COMP and reads it from that COMP (interface.md, "A value with no parameter behind it").
