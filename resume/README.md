# Resume Workspace

The resume is split into shared configuration, reusable sections, structured data, and role-specific entrypoints.

## Structure

- `main.tex` assembles the selected variant.
- `config/` owns metadata, typography, colors, and reusable LaTeX commands.
- `sections/` owns reusable resume content.
- `variants/` selects a headline, profile, and skills order for a target role.
- `data/` records normalized career facts for future automation and validation.
- `assets/` contains local badge and logo artwork.
- `build/` receives generated PDFs and intermediates.
- `scripts/` contains build, clean, and validation helpers.

## Overleaf

1. Upload the complete repository as a ZIP.
2. Select a file under `resume/variants/` as the main document.
3. Use the **pdfLaTeX** compiler.
4. Recompile and download the resulting PDF.

The resume uses repository-local PNG badge assets generated from Microsoft's
official SVG artwork, so Overleaf and local builds do not require Inkscape or
shell escape.

## Local examples

```powershell
./resume/scripts/build.ps1 solution-architect
./resume/scripts/build.ps1 senior-dotnet
```

Or use the Makefile targets documented in the repository root.
