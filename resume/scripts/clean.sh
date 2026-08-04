#!/usr/bin/env sh
set -eu

latexmk -C -outdir=resume/build
find resume/build -type f ! -name .gitkeep -delete
