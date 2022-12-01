# LaTeX Beamer with Pandoc

## Features

This is my personal repo for making presentation slides.
It supports

- Pictures with captions
- Scientific plots
- References

all written in Markdown (some sections in TeX).

## Usage

1. Install pandoc and LaTeX
1. Run `make` to generate the PDF output

Additonally, there are the following make targets:

- `make tex` to generate the LaTeX source instead of PDF output
- `make withbib` to process citations (takes much longer)
- `make clean` to remove generated files

## Acknowledgements

- Inspired by stwunsch's [iml_tensorflow_keras_workshop](https://github.com/stwunsch/iml_tensorflow_keras_workshop/tree/master/slides)
- Theme by matze [mtheme](https://github.com/matze/mtheme)
- Colortheme by rchurchley [beamercolortheme-owl](https://github.com/rchurchley/beamercolortheme-owl)
