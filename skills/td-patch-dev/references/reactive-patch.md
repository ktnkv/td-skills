# Reactive patch

A reactive patch is a patch in which at least one parameter is driven by outside data that changes faster than a person turns a knob. An audio-reactive patch is the usual case: its parameters follow the levels, beats and phases of the music. Sensors, tracking, MIDI and OSC are the same thing.

A patch with no such parameter is an ordinary patch and has one level.

Everything else in this skill applies unchanged; this file adds how the patch is split in two.

## Two levels

The lower level is a COMP named `inner_interface`, always under that name. It is a patch in full and stands on its own:

- every parameter that visibly shapes the result is promoted to its `Interface` page;
- it has its own `About` page, `readme` and `changelog`;
- it knows nothing about the outside data: no In operator for it and no expression that reads it. With constants on its `Interface` page it works without the upper level.

The upper level is a COMP with the name of the patch. It holds the In operator the data comes through, `inner_interface`, the Out operators, and its own `readme` and `changelog`. Its `Interface` page holds only the parameters that no machine drives.

```
ktnkv                   the upper level
  in1                   In CHOP with the audio features
  inner_interface       the lower level
  macro                 values of the upper level, if any
  out1
```

## Machine and hand

Every parameter on the `Interface` page of `inner_interface` goes one of two ways.

- **Driven by the machine.** The parameter on `inner_interface` gets an expression that reads the In operator of the upper level: `2000 * op('in1')['low'] ** 2`. It is not promoted further; Promote refuses a parameter with an expression anyway.
- **Set by hand.** The parameter is promoted from `inner_interface` to the upper level.

A parameter set by hand is one a person sets once and leaves, or one they move live as part of the performance. What happens to it afterwards, such as presets, a controller or automation from outside, is not part of building the patch.

## Who decides

Which parameters the machine drives, and from what, is the user's decision. Do not invent a mapping.

- When an existing patch is being reorganized, keep the expressions that are active and carry them over. An expression left on a parameter in constant mode is not active: the parameter is set by hand.
- When there are none and the user has not said, ask which parameters to drive and from which data.

The agent's part is to sort the parameters into the two ways and to build the structure correctly.

## Building it

1. Bring the lower level to an ordinary patch: structure.md, interface.md.
2. Create the upper COMP, put the lower level inside as `inner_interface`, add the In and Out operators and wire them.
3. Put the expressions on the machine-driven parameters of `inner_interface`.
4. Promote the remaining parameters from `inner_interface` to the upper level, then run `Updateall`.

Details:

- An expression reads a channel by name, so that name is part of the public interface of the upper level (versioning.md).
- A sequence parameter, such as a uniform of a GLSL TOP, cannot be promoted. Inside the lower level, give it a plain parameter on its child COMP first (interface.md, "A value with no parameter behind it").
- A value the expressions read that is neither a parameter of an operator nor a channel of the In operator, such as a common amount or a phase, follows the same rule on the upper level. It is a custom parameter on a child COMP next to `inner_interface`, on a page whose name is not `Interface`, promoted to the upper level as a parameter set by hand. Name that COMP `macro`. Another name, or several such COMPs, only when the user asks.

## Version and export

Both levels are patches, each with its own version, `About` page, `readme` and `changelog`.

Reactive is about the two levels inside; composite is about how the patch is kept on disk. By default a reactive patch is kept as a composite patch with one part (composite-patch.md): a folder named after the patch, the tox of the upper level in it, and `inner_interface.<family>.<version>.tox` in `src/`. The lower level has the same name in every reactive patch, so it cannot lie among other patches. When the user asks to keep only the upper level, it is saved as an ordinary patch and is still reactive.

After replacing the copy of `inner_interface`, put the expressions back and promote the hand-set parameters again.

A change of mapping, such as another expression or another channel, changes the version of the upper level, not of the lower one. Moving a parameter from hand to machine removes it from the `Interface` page of the upper level, which is a break (versioning.md).
