# About page

The last custom page of the component is called `About`. It has two read-only Str parameters, in this order.

`Version`, label `Version`. The number is written before export. Value and default are equal.

`Toxsavebuild`, label `.tox Save Build`. A constant, not the expression `app.build`: otherwise whoever opens the project would see their own build on the page. Only the export step writes it. Value and default are equal to `app.build` at the moment of `save`.
