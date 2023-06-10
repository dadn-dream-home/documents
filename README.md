# Documents

Source code for the final report.

## Requirement

- Deno =~ 1.34.2
- Draw.io CLI =~ 21.3.7
- Inkscape =~ 1.0.1
- Typst =~ 0.5.0

## Build

After modifying `*.drawio` files, run

```sh
$ deno task generate-svg
```

To watch and build the `main.pdf`:

```sh
$ deno task typst
```
