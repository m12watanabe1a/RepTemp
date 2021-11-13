#!/usr/bin/env bash

SVG_PATH="./assets/svg"
PDF_PATH="./assets/images"
ls assets/svg/*.svg | xargs -IXXX basename XXX | cut -f 1 -d '.' | xargs -IXXX inkscape -D ${SVG_PATH}/XXX.svg -o ${PDF_PATH}/XXX.pdf

unset SVG_PATH
unset PDF_PATH

