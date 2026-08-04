# Career Repository Structure

A version-controlled career workspace for maintaining multiple LaTeX resumes, portfolio content, interview material, technical writing, certifications, and reusable career assets.

---

## 1. Repository Overview

```text
career/
├── README.md
├── Makefile
├── .gitignore
├── .editorconfig
├── LICENSE
│
├── resume/
│   ├── README.md
│   ├── main.tex
│   ├── config/
│   │   ├── metadata.tex
│   │   ├── typography.tex
│   │   ├── colors.tex
│   │   └── commands.tex
│   │
│   ├── sections/
│   │   ├── profile.tex
│   │   ├── experience.tex
│   │   ├── projects.tex
│   │   ├── skills.tex
│   │   ├── certifications.tex
│   │   ├── education.tex
│   │   └── languages.tex
│   │
│   ├── variants/
│   │   ├── senior-dotnet.tex
│   │   ├── platform-engineer.tex
│   │   ├── solution-architect.tex
│   │   ├── staff-engineer.tex
│   │   └── ai-enabled-engineer.tex
│   │
│   ├── data/
│   │   ├── experience.yaml
│   │   ├── projects.yaml
│   │   ├── skills.yaml
│   │   ├── certifications.yaml
│   │   └── education.yaml
│   │
│   ├── assets/
│   │   ├── icons/
│   │   └── logos/
│   │
│   ├── build/
│   │   └── .gitkeep
│   │
│   └── scripts/
│       ├── build.sh
│       ├── clean.sh
│       └── validate.sh
│
├── cv/
│   ├── academic-cv.tex
│   ├── detailed-cv.tex
│   └── sections/
│
├── portfolio/
│   ├── README.md
│   ├── about.md
│   ├── projects/
│   │   ├── contabo-platform.md
│   │   ├── identity-platform.md
│   │   ├── saas-architecture.md
│   │   └── ai-assisted-engineering.md
│   │
│   ├── architecture/
│   │   ├── platform-overview.md
│   │   ├── identity-and-access.md
│   │   ├── multi-tenancy.md
│   │   ├── api-gateway.md
│   │   ├── jwt-revocation.md
│   │   ├── swarm-architecture.md
│   │   └── disaster-recovery.md
│   │
│   ├── diagrams/
│   │   ├── source/
│   │   └── exported/
│   │
│   └── screenshots/
│
├── website/
│   ├── README.md
│   ├── content/
│   │   ├── home.md
│   │   ├── about.md
│   │   ├── experience.md
│   │   ├── projects.md
│   │   ├── architecture.md
│   │   ├── articles.md
│   │   ├── certifications.md
│   │   └── contact.md
│   │
│   ├── public/
│   │   ├── resume/
│   │   ├── diagrams/
│   │   ├── screenshots/
│   │   └── certificates/
│   │
│   └── scripts/
│       └── sync-resume.sh
│
├── cover-letters/
│   ├── templates/
│   │   ├── senior-dotnet.md
│   │   ├── platform-engineer.md
│   │   ├── solution-architect.md
│   │   └── staff-engineer.md
│   └── applications/
│
├── interview/
│   ├── README.md
│   ├── technical/
│   │   ├── dotnet.md
│   │   ├── csharp.md
│   │   ├── system-design.md
│   │   ├── distributed-systems.md
│   │   ├── databases.md
│   │   ├── cloud.md
│   │   ├── identity-security.md
│   │   └── ai-engineering.md
│   │
│   ├── behavioral/
│   │   ├── star-stories.md
│   │   ├── leadership.md
│   │   ├── conflict.md
│   │   ├── failures.md
│   │   └── ownership.md
│   │
│   ├── company-specific/
│   └── mock-interviews/
│
├── achievements/
│   ├── master-achievements.md
│   ├── metrics.md
│   ├── promotions.md
│   ├── recognitions.md
│   └── project-impact.md
│
├── certifications/
│   ├── README.md
│   ├── microsoft/
│   │   ├── azure-solutions-architect-expert.md
│   │   ├── azure-administrator-associate.md
│   │   └── azure-developer-associate.md
│   ├── other/
│   └── evidence/
│
├── publications/
│   ├── articles/
│   ├── drafts/
│   └── ideas.md
│
├── presentations/
│   ├── architecture/
│   ├── platform-engineering/
│   ├── ai-assisted-development/
│   └── source/
│
├── references/
│   ├── professional-references.md
│   ├── recommendations.md
│   └── testimonials.md
│
├── applications/
│   ├── tracker.md
│   ├── active/
│   ├── archived/
│   └── offers/
│
└── knowledge/
    ├── architecture/
    ├── distributed-systems/
    ├── dotnet/
    ├── cloud/
    ├── databases/
    ├── networking/
    ├── linux/
    ├── security/
    ├── platform-engineering/
    └── ai-engineering/
```

---

# 2. Resume Architecture

The resume should use a shared content model with multiple role-specific outputs.

## Shared source sections

```text
resume/sections/
├── profile.tex
├── experience.tex
├── projects.tex
├── skills.tex
├── certifications.tex
├── education.tex
└── languages.tex
```

These sections contain reusable content.

## Resume variants

```text
resume/variants/
├── senior-dotnet.tex
├── platform-engineer.tex
├── solution-architect.tex
├── staff-engineer.tex
└── ai-enabled-engineer.tex
```

Each variant should:

1. Select the most relevant profile summary.
2. Reorder skills for the target role.
3. Include only the strongest and most relevant bullets.
4. Promote relevant projects.
5. Stay within two pages unless a longer CV is explicitly required.

---

# 3. Recommended Resume Variants

## Senior .NET Engineer

Primary emphasis:

- C#
- ASP.NET Core
- .NET 8+
- Angular and React
- REST, GraphQL, gRPC
- Entity Framework Core and NHibernate
- SQL Server and PostgreSQL
- Microservices
- Azure and AWS
- Performance optimization
- Enterprise modernization

## Platform Engineer

Primary emphasis:

- Docker Swarm
- Traefik
- Kong Gateway
- Linux
- Networking
- DNS
- CI/CD
- Identity platforms
- Runtime operations
- Backups and disaster recovery
- Observability
- Multi-service hosting
- Platform documentation and governance

## Solution Architect

Primary emphasis:

- System design
- Cloud architecture
- Multi-tenancy
- Identity and access management
- API strategy
- Legacy modernization
- Integration architecture
- Platform evolution
- Stakeholder communication
- Architecture trade-offs
- Security and scalability

## Staff Engineer

Primary emphasis:

- Cross-team technical leadership
- Architecture ownership
- Engineering standards
- Platform design
- Modernization strategy
- Developer experience
- Technical decision-making
- Mentoring and reviews
- Operational maturity
- Long-term system evolution

## AI-Enabled Engineer

Primary emphasis:

- Specification-Driven Development
- GitHub Spec Kit
- OpenSpec
- MCP servers
- Claude
- GPT
- GitHub Copilot
- AI-assisted PR review
- Test and documentation generation
- Context engineering
- Agentic workflows
- Responsible AI adoption in engineering

---

# 4. Resume Content Model

## Contact header

Include:

- Hassan Taj
- Email
- Phone
- LinkedIn
- GitHub
- Lahore, Pakistan
- Portfolio website

Avoid decorative icons that may break ATS parsing.

## Profile summary

Keep it between three and five lines.

Suggested direction:

> Senior Software Engineer and Microsoft Certified Azure Solutions Architect Expert with 7+ years of experience designing, modernizing, and operating enterprise software and cloud platforms. Strong background in .NET, Angular, React, Azure, AWS, microservices, identity, platform engineering, and system architecture. Experienced in leading technical discussions, modernizing legacy systems, building reusable platforms, and applying AI-assisted and specification-driven development practices.

## Experience bullet format

Each bullet should ideally follow:

```text
Action + ownership + technical scope + business or engineering outcome
```

Example:

> Planned and executed the migration of legacy enterprise applications to .NET 8 LTS, improving platform stability, maintainability, and long-term supportability.

Avoid weak phrasing such as:

- Worked on
- Helped with
- Responsible for
- Participated in

Prefer:

- Designed
- Led
- Modernized
- Architected
- Delivered
- Migrated
- Automated
- Optimized
- Established
- Operated
- Standardized

---

# 5. Skills Taxonomy

Do not use one giant keyword dump.

Use grouped categories.

## Languages

- C#
- TypeScript
- JavaScript
- SQL

## Backend

- ASP.NET Core
- .NET 8+
- REST APIs
- GraphQL
- gRPC
- Minimal APIs
- Entity Framework Core
- NHibernate
- Background services

## Frontend

- Angular
- React
- Next.js
- Bootstrap
- Tailwind CSS
- Micro-frontends

## Architecture

- System Design
- Solution Architecture
- Platform Architecture
- Microservices
- Modular Monoliths
- Domain-Driven Design
- API Versioning
- CQRS
- Event-Driven Architecture
- Multi-tenancy
- Distributed Systems

## Identity and Security

- OAuth 2.0
- OpenID Connect
- JWT
- SSO
- Microsoft Entra ID
- Zitadel
- Keycloak
- Role- and policy-based authorization
- Token revocation strategies

## Cloud and Platform

- Microsoft Azure
- AWS
- Docker
- Docker Swarm
- Traefik
- Kong Gateway
- Linux
- Azure DevOps
- GitHub Actions
- CI/CD
- Reverse proxies
- DNS
- Runtime operations

## Databases and Caching

- SQL Server
- PostgreSQL
- MySQL
- Redis
- Entity Framework Core
- Query optimization
- Indexing
- Caching strategies

## AI-Assisted Engineering

- Specification-Driven Development
- GitHub Spec Kit
- OpenSpec
- MCP
- Claude
- GPT
- GitHub Copilot
- AI-assisted code review
- Test generation
- Documentation automation

---

# 6. Portfolio Structure

The portfolio should communicate engineering judgment, not merely list technologies.

## Home

Suggested positioning:

> Senior Software Engineer focused on platform engineering, cloud architecture, identity, distributed systems, and AI-assisted software delivery.

## About

Explain the transition from full-stack .NET development toward architecture and platform engineering.

## Projects

Each project should follow this structure:

```text
Problem
Context and constraints
Architecture
Technology choices
Trade-offs
Implementation
Security
Operations
Outcome
Lessons learned
Future improvements
```

## Primary case study: Contabo Platform

Recommended page structure:

```text
Overview
Business and learning goals
Architecture diagram
Docker Swarm topology
Ingress and reverse proxy
Kong API Gateway
Identity architecture
DNS and networking
Databases and storage
Hosted applications
Secrets and configuration
Deployment workflow
Monitoring and health checks
Backups
Disaster recovery
Governance and runbooks
Security decisions
Lessons learned
Roadmap
```

---

# 7. Website Structure

Recommended information architecture for `hassantaj.github.io`:

```text
Home
About
Experience
Projects
Platform
Architecture
Articles
Certifications
Resume
Contact
```

## Suggested homepage headline

> Senior Software Engineer building cloud-native platforms, enterprise applications, identity systems, and AI-assisted engineering workflows.

## Featured areas

- Enterprise .NET modernization
- Platform engineering
- Cloud architecture
- Identity and multi-tenancy
- Docker Swarm platform
- Specification-Driven Development
- Azure certifications

---

# 8. Technical Article Backlog

Recommended initial articles:

1. Why I Chose Docker Swarm Instead of Kubernetes for a Single VPS
2. Building a Production-Oriented Platform on Contabo
3. Kong and Traefik: Different Responsibilities in the Same Platform
4. Immediate JWT Revocation with Token Versioning and Security Stamps
5. Multi-Tenant SaaS Authentication with Organizations, Realms, and Tenant Claims
6. Migrating Legacy Applications to .NET 8 LTS
7. REST to GraphQL: Lessons from a Shopify Integration Migration
8. Specification-Driven Development with Spec Kit, OpenSpec, Claude, GPT, and Copilot
9. Designing for Disaster Recovery on a Small Self-Hosted Platform
10. What Hosting Real Websites Taught Me About Platform Engineering

---

# 9. Career Evidence Repository

Maintain a master evidence file so accomplishments are not lost.

## `achievements/master-achievements.md`

For every significant contribution, record:

```markdown
## Achievement title

**Date:**  
**Company or project:**  
**Problem:**  
**My role:**  
**Actions taken:**  
**Technologies:**  
**Outcome:**  
**Metrics:**  
**Evidence:**  
**Potential resume bullet:**  
**Potential interview story:**  
```

This file becomes the source for:

- Resume bullets
- LinkedIn updates
- Interview answers
- Promotion cases
- Portfolio case studies
- Salary negotiations

---

# 10. Interview Repository

## Technical preparation

```text
interview/technical/
├── dotnet.md
├── csharp.md
├── system-design.md
├── distributed-systems.md
├── databases.md
├── cloud.md
├── identity-security.md
└── ai-engineering.md
```

## STAR stories

Maintain reusable stories for:

- Legacy modernization
- Production incident
- Performance optimization
- Architectural disagreement
- Mentoring
- Difficult stakeholder
- Migration failure or risk
- Security decision
- Platform outage
- Scope negotiation
- AI adoption
- Homelab/platform ownership

---

# 11. Build Commands

Recommended Makefile targets:

```makefile
resume-dotnet:
	latexmk -pdf resume/variants/senior-dotnet.tex

resume-platform:
	latexmk -pdf resume/variants/platform-engineer.tex

resume-architect:
	latexmk -pdf resume/variants/solution-architect.tex

resume-staff:
	latexmk -pdf resume/variants/staff-engineer.tex

resume-ai:
	latexmk -pdf resume/variants/ai-enabled-engineer.tex

resume-all:
	$(MAKE) resume-dotnet
	$(MAKE) resume-platform
	$(MAKE) resume-architect
	$(MAKE) resume-staff
	$(MAKE) resume-ai

clean:
	latexmk -C
	rm -rf resume/build/*
```

---

# 12. GitHub Actions Workflow

Suggested workflow responsibilities:

```text
On pull request:
- Validate LaTeX
- Build every resume variant
- Check broken links
- Lint Markdown
- Validate file naming
- Ensure generated PDFs compile

On main branch:
- Build resume PDFs
- Publish selected resume to portfolio website
- Upload artifacts
- Optionally create a tagged release
```

---

# 13. Recommended Initial Milestones

## Milestone 1 — Foundation

- Create repository structure
- Add README
- Add `.gitignore`
- Add Makefile
- Add base LaTeX template
- Add common metadata and commands

## Milestone 2 — Master Resume

- Rewrite profile
- Rewrite all employment bullets
- Group skills
- Add certifications
- Add Contabo platform project
- Produce a clean two-page base resume

## Milestone 3 — Role Variants

- Senior .NET
- Platform Engineer
- Solution Architect
- Staff Engineer

## Milestone 4 — Portfolio Alignment

- Update `hassantaj.github.io`
- Add platform case study
- Add architecture diagrams
- Publish resume PDF
- Add certification links

## Milestone 5 — Career Operations

- Add application tracker
- Add STAR stories
- Add interview notes
- Add achievement evidence
- Add reusable cover letters

---

# 14. Positioning Statement

The resume, portfolio, LinkedIn, and GitHub should communicate one consistent professional identity:

> Hassan Taj is a Senior Software Engineer with deep .NET experience who designs, modernizes, deploys, and operates cloud-native platforms and enterprise systems. His strengths include solution architecture, identity, platform engineering, distributed application design, operational ownership, and practical AI adoption.

---

# 15. Core Career Direction

Primary path:

```text
Senior Software Engineer
→ Platform-Focused Senior Engineer
→ Staff Engineer
→ Principal Engineer
```

Alternative architecture path:

```text
Senior Software Engineer
→ Solution Architect
→ Lead Architect
→ Enterprise or Platform Architect
```

Avoid repositioning as a generic DevOps or MLOps engineer. Infrastructure, cloud, and AI should strengthen the architecture and platform-engineering narrative rather than replace the software-engineering foundation.
