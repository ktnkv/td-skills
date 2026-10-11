# Version

Versions follow [Semantic Versioning](https://semver.org/spec/v2.0.0.html): `MAJOR.MINOR.PATCH`. A new patch starts at `0.1.0`.

The public interface of a patch is its In and Out operators, the channel names of its Out CHOPs, the channels it reads by name on its In CHOPs and its `Interface` page. The bump follows from what changed there:

| Bump | Change |
| --- | --- |
| MAJOR | An In or Out is removed, renamed or reordered. The family of an output changes. A channel of an Out CHOP is removed or renamed. A channel read by name on an In CHOP is renamed or no longer read, or the patch starts to require one. A parameter on `Interface` is removed or renamed, or its type changes. |
| MINOR | A new parameter. A new output after the existing ones. A new optional input. A new channel in an Out CHOP. A new channel read by name on an In CHOP that the patch works without. The same values now give a visibly different result. |
| PATCH | A fix or an optimization; the same values give the same result. |

Below `1.0` a break is MINOR.

Whoever takes an Out CHOP reads its channels by name, so the names the patch gives them are part of the interface: an analysis patch that gives `low_fast_lag` and `high_slow_lag` breaks its users when one of them is renamed. Channels that pass through from an In CHOP under the names they came with are not.

The same holds on the way in. Every channel the patch reads by name on an In CHOP is part of the interface, because whoever feeds the patch has to call it that. Some of them are required: the patch cannot work without them, as a beat grid that reads `bpm`. The rest are optional. Channels the patch takes as they come, whatever they are called, are not part of the interface.

Renaming a child COMP or an operator whose parameter is promoted renames that parameter on the patch, so it is a break (interface.md).

Propose the bump from the changes made and ask: the number is a human decision. It is set on About before export. The same number is in the top heading of the `changelog` DAT and in the file name.

The library folder holds one current tox per patch: at an export the old file is deleted and the tox is saved under the new name. No unversioned `name.family.tox`.
