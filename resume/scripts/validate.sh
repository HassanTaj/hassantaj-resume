#!/usr/bin/env sh
set -eu

for command in latexmk pdflatex; do
  command -v "$command" >/dev/null 2>&1 || {
    echo "Missing required command: $command" >&2
    exit 1
  }
done

for variant in senior-dotnet platform-engineer solution-architect staff-engineer ai-enabled-engineer; do
  sh resume/scripts/build.sh "$variant"
done
