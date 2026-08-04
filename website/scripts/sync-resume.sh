#!/usr/bin/env sh
set -eu

source_pdf="${1:-resume/build/solution-architect.pdf}"
target_directory="${2:-website/public/resume}"

test -f "$source_pdf" || {
  echo "Resume PDF not found: $source_pdf" >&2
  exit 1
}

mkdir -p "$target_directory"
cp "$source_pdf" "$target_directory/hassan-taj-resume.pdf"
