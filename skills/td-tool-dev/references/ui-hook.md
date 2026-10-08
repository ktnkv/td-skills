# Hook in /ui or /sys

Read only if the tool patches `/ui` or `/sys` itself. For other tools this is not a rule.

`/ui` and `/sys` are not saved in the `.toe`, so the hook is installed again at every start. `Install` is idempotent and returns at once while `Active` is off (every tool has `Active`, see new-tool.md; for a hook, off also means `Uninstall`).

An Execute DAT has no `onDestroy`, only `onExit`. Turn `Active` off before deleting the tool. Otherwise `usecallbacks` stays without a DAT until the next start.

Writing the same path to `dragdropcallbacks` again is a no-op: the parameter stays bound to a destroyed DAT. Reset it to `''` first, then assign the DAT.

Do not delete the original operators. Rollback restores the earlier `drop` and `dropscript` and clears `dragdropcallbacks`.
