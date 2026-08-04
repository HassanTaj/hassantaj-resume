#!/usr/bin/env sh
set -eu

variant="${1:-solution-architect}"
mkdir -p resume/build
latexmk -pdf -interaction=nonstopmode -halt-on-error \
  -outdir=resume/build "resume/variants/${variant}.tex"
