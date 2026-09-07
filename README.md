# LaTeX Software Engineering Resume Templates

[![Build resumes](https://github.com/deepdave98/swe-resume-templates/actions/workflows/build.yml/badge.svg)](https://github.com/deepdave98/swe-resume-templates/actions/workflows/build.yml)
[![License: MIT](https://img.shields.io/badge/License-MIT-29627e.svg)](LICENSE)

I made this to help software engineers spend less time on layout and more time showing their work. Choose a one-page new-grad template or a two-page experienced template; both use the same style.

The example bullets reflect what I have looked for while hiring engineers: clear ownership, real constraints, and proof the work held up. Every software engineering employer, role, metric, and contact detail is a placeholder.

## Pick a Template

| Template | Best for | Length | Section order |
| --- | --- | ---: | --- |
| [New Grad](templates/new-grad-resume.tex) | Students, interns, and recent graduates | 1 page | Education, certifications, experience, projects, skills |
| [Experienced](templates/experienced-resume.tex) | Engineers showing broader scope and technical leadership | 2 pages | Experience, skills, education, certifications |

### Open in Overleaf

[![Open the New Grad resume in Overleaf](https://img.shields.io/badge/New_Grad-Open_in_Overleaf-47A141?logo=overleaf&logoColor=white)](https://www.overleaf.com/docs?snip_uri=https%3A%2F%2Fgithub.com%2Fdeepdave98%2Fswe-resume-templates%2Freleases%2Fdownload%2Fv1.0.0%2Fnew-grad-resume.zip&engine=xelatex&main_document=resume.tex)
[![Open the Experienced resume in Overleaf](https://img.shields.io/badge/Experienced-Open_in_Overleaf-47A141?logo=overleaf&logoColor=white)](https://www.overleaf.com/docs?snip_uri=https%3A%2F%2Fgithub.com%2Fdeepdave98%2Fswe-resume-templates%2Freleases%2Fdownload%2Fv1.0.0%2Fexperienced-resume.zip&engine=xelatex&main_document=resume.tex)

Both buttons open standalone XeLaTeX projects.

## Previews

### New Grad

[![New grad software engineer resume](preview/new-grad-resume.png)](output/pdf/new-grad-resume.pdf)

### Experienced

<p>
  <a href="output/pdf/experienced-resume.pdf"><img src="preview/experienced-resume-page-1.png" width="49%" alt="Experienced software engineer resume, page 1"></a>
  <a href="output/pdf/experienced-resume.pdf"><img src="preview/experienced-resume-page-2.png" width="49%" alt="Experienced software engineer resume, page 2"></a>
</p>

## Build Locally

Click **Use this template** at the top of the repository, or clone it. On macOS or Linux:

```bash
git clone https://github.com/deepdave98/swe-resume-templates.git
cd swe-resume-templates
make
```

`make` builds both templates to `build/`. Use `make new-grad`, `make experienced`, or `make preview` to build one template or refresh the published PDFs and PNGs.

On Windows, or without `make`, run `latexmk` from the repository root:

```bash
latexmk -xelatex -outdir=build/new-grad templates/new-grad-resume.tex
latexmk -xelatex -outdir=build/experienced templates/experienced-resume.tex
```

## Requirements

You need a TeX distribution with XeLaTeX and `latexmk`.

On macOS:

```bash
brew install --cask mactex-no-gui
```

On Ubuntu or Debian:

```bash
sudo apt update
sudo apt install latexmk texlive-xetex texlive-latex-extra
```

On Windows, install TeX Live or MiKTeX and make sure `latexmk` is on your `PATH`.

PNG previews require Poppler or ImageMagick. Edit shared styling in `resume.cls`.

## Edit the Content

Entries use this format:

```latex
\jobentry[Optional summary]{Role}{Organization}{Location}{Dates}
```

Leave out the optional summary if you do not need it. Pass `{}` as the location to hide it. Add bullets inside `jobduties`:

```latex
\begin{jobduties}
  \item Built [thing] for [user], handled [constraint], and moved [measure] from [A] to [B].
\end{jobduties}
```

Write what you built, how you built it, and what changed. Experienced bullets should also show scope, tradeoffs, and operational ownership. Use only numbers you can defend.

For role-specific prompts, see the [backend](examples/engineering-bullets.md#backend-engineering), [frontend](examples/engineering-bullets.md#frontend-engineering), and [data engineering](examples/engineering-bullets.md#data-engineering) examples for early-career and experienced engineers.

Escape LaTeX's special characters when they appear as text: `\&`, `\%`, `\$`, `\#`, and `\_`.

## Project Structure

```text
.
├── .github/workflows/build.yml   # CI build and page-count checks
├── examples/                     # Role-specific bullet prompts
├── output/pdf/                   # Published PDFs
├── preview/                      # Published PNG previews
├── templates/                    # Resume content
├── CONTRIBUTING.md
├── Makefile
└── resume.cls                    # Shared styling
```

## Before Publishing Yours

Check the source for comments and placeholder contacts, links, employers, and metrics; then inspect the final PDF. LaTeX logs can contain source text and local paths, so review staged files before committing.

CI compiles both templates and enforces the one-page and two-page layouts.

If this helped, star the repo. Contributions are welcome; read [CONTRIBUTING.md](CONTRIBUTING.md), and report vulnerabilities [privately](https://github.com/deepdave98/swe-resume-templates/security/advisories/new).

## License

Released under the [MIT License](LICENSE). Feel free to adapt it for your own resume.
