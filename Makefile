LATEXMK := latexmk
LATEX_FLAGS := -pdf -interaction=nonstopmode -halt-on-error -outdir=resume/build

.PHONY: resume-dotnet resume-platform resume-architect resume-staff resume-ai resume-all clean validate

resume-dotnet:
	$(LATEXMK) $(LATEX_FLAGS) resume/variants/senior-dotnet.tex

resume-platform:
	$(LATEXMK) $(LATEX_FLAGS) resume/variants/platform-engineer.tex

resume-architect:
	$(LATEXMK) $(LATEX_FLAGS) resume/variants/solution-architect.tex

resume-staff:
	$(LATEXMK) $(LATEX_FLAGS) resume/variants/staff-engineer.tex

resume-ai:
	$(LATEXMK) $(LATEX_FLAGS) resume/variants/ai-enabled-engineer.tex

resume-all: resume-dotnet resume-platform resume-architect resume-staff resume-ai

clean:
	$(LATEXMK) -C -outdir=resume/build

validate:
	sh resume/scripts/validate.sh
