# Hassan Taj Career Repository

A version-controlled career workspace for maintaining role-specific LaTeX resumes, portfolio source material, interview preparation, achievement evidence, certifications, technical writing, and job-search operations.

The repository follows the architecture documented in [career-repository-structure.md](career-repository-structure.md).

## Primary outputs

- Senior .NET Engineer resume
- Platform Engineer resume
- Solution Architect resume
- Staff Engineer resume
- AI-Enabled Engineer resume
- Portfolio and architecture case-study source material
- Interview stories and technical preparation
- Career evidence and application tracking

## Quick start

Build the Solution Architect resume from the repository root:

```powershell
./resume/scripts/build.ps1 solution-architect
```

The generated file is `resume/build/solution-architect.pdf`. The reviewed,
ready-to-share copy is published at the repository root as `resume.pdf`.

Or upload the complete repository to Overleaf and select one of the files under `resume/variants/` as the main document. The compiler should be **pdfLaTeX**.

See [resume/README.md](resume/README.md) for variant and asset details.

## Repository areas

- `resume/` - modular LaTeX resume and role variants
- `cv/` - longer academic and detailed CV sources
- `portfolio/` - portfolio case studies and architectural evidence
- `website/` - website-ready content and synchronization scripts
- `cover-letters/` - reusable templates and application-specific letters
- `interview/` - technical preparation and STAR stories
- `achievements/` - master evidence, metrics, impact, and recognition
- `certifications/` - credential records and evidence
- `publications/` and `presentations/` - technical communication material
- `references/` - recommendations and professional references
- `applications/` - application tracking and outcomes
- `knowledge/` - reusable technical study notes

## Privacy

Do not commit private client information, confidential project names, secrets, credentials, or proprietary source material. Public descriptions of confidential employment must remain capability-focused and NDA-safe.
