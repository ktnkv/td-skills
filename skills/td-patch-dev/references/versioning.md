# Version

Versions follow [Semantic Versioning](https://semver.org/spec/v2.0.0.html): `MAJOR.MINOR.PATCH`. A new patch starts at `0.1.0`.

The public interface of a patch is its In and Out operators and its `Interface` page. The bump follows from what changed there:

| Bump | Change |
| --- | --- |
| MAJOR | An In or Out is removed, renamed or reordered. The family of an output changes. A parameter on `Interface` is removed or renamed, or its type changes. |
| MINOR | A new parameter. A new output after the existing ones. A new optional input. The same values now give a visibly different result. |
| PATCH | A fix or an optimization; the same values give the same result. |

Below `1.0` a break is MINOR.

Renaming a child COMP or an operator whose parameter is promoted renames that parameter on the patch, so it is a break (interface.md).

Propose the bump from the changes made and ask: the number is a human decision. It is set on About before export. The same number is in the top heading of the `changelog` DAT and in the file name.

The library folder holds one current tox per patch: at an export the old file is deleted and the tox is saved under the new name. No unversioned `name.family.tox`.
