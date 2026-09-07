# LaTeX Software Engineering Resume Templates

[![Build resumes](https://github.com/deepdave98/latex-resume-template/actions/workflows/build.yml/badge.svg)](https://github.com/deepdave98/latex-resume-template/actions/workflows/build.yml)
[![License: MIT](https://img.shields.io/badge/License-MIT-29627e.svg)](LICENSE)

I made two versions of this template for different stages of a software engineering career. They use the same clean layout, but the section order, length, and example bullets match your career stage.

All software engineering companies, roles, metrics, and contact details are placeholders. Only my education and Teaching Assistant details are real.

## Pick a template

| Template | Best for | Length | Section order |
| --- | --- | ---: | --- |
| [New Grad](templates/new-grad-resume.tex) | Students, interns, and recent graduates | 1 page | Education, certifications, experience, projects, skills |
| [Experienced](templates/experienced-resume.tex) | Engineers showing broader scope and technical leadership | 2 pages | Experience, skills, education, certifications |

## Previews

### New Grad

[![New grad software engineer resume](preview/new-grad-resume.png)](output/pdf/new-grad-resume.pdf)

### Experienced

<p>
  <a href="output/pdf/experienced-resume.pdf"><img src="preview/experienced-resume-page-1.png" width="49%" alt="Experienced software engineer resume, page 1"></a>
  <a href="output/pdf/experienced-resume.pdf"><img src="preview/experienced-resume-page-2.png" width="49%" alt="Experienced software engineer resume, page 2"></a>
</p>

## Use it

Click **Use this template** at the top of the repository, or clone it. On macOS or Linux:

```bash
git clone https://github.com/deepdave98/latex-resume-template.git
cd latex-resume-template
make
```

Build one version with `make new-grad` or `make experienced`. Those targets write to `build/`. Run `make preview` to also refresh the published PDFs in `output/pdf/` and images in `preview/`.

On Windows, or if you do not use `make`, run `latexmk` directly from the repository root:

```bash
latexmk -xelatex -outdir=build/new-grad templates/new-grad-resume.tex
latexmk -xelatex -outdir=build/experienced templates/experienced-resume.tex
```

### Overleaf

1. Upload `resume.cls` and the `.tex` file you want.
2. Set that `.tex` file as the main document.
3. Set the compiler to **XeLaTeX**.
4. Replace the placeholder content and recompile.

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

On Windows, install TeX Live or MiKTeX, make sure `latexmk` is on your `PATH`, and run the commands above in PowerShell.

To regenerate the PNG previews, install Poppler or ImageMagick. Colors, spacing, typography, and reusable commands live in `resume.cls`.

## Edit the content

Entries use this format:

```latex
\jobentry[Optional summary]{Role}{Organization}{Location}{Dates}
```

Leave out the optional summary if you do not need it. Pass `{}` as the location to hide it. Add bullets inside `jobduties`:

```latex
\begin{jobduties}
  \item Built [thing] with [method or technology], improving [result] by [amount].
\end{jobduties}
```

For a new-grad resume, show what you built, tested, learned, or shipped with a team. For an experienced resume, show scope, tradeoffs, technical leadership, and the outcome. Use numbers when they are real; do not invent metrics just to make a bullet sound stronger.

Escape LaTeX's special characters when they appear as text: `\&`, `\%`, `\$`, `\#`, and `\_`.

## Project structure

```text
.
├── .github/workflows/build.yml   # Compiles every push and pull request
├── .gitignore                    # Keeps local and LaTeX build files private
├── LICENSE                       # MIT license
├── output/pdf/
│   ├── experienced-resume.pdf
│   └── new-grad-resume.pdf
├── preview/
│   ├── experienced-resume-page-1.png
│   ├── experienced-resume-page-2.png
│   └── new-grad-resume.png
├── templates/
│   ├── experienced-resume.tex
│   └── new-grad-resume.tex
├── Makefile
└── resume.cls                    # Shared styling for both templates
```

## Before publishing yours

Check the source and PDF for placeholder contact details, links, company names, and comments. LaTeX build files can contain source text and local paths, so they are ignored here.

Every push compiles both templates on Linux and checks that the new-grad PDF stays at one page and the experienced PDF stays at two.

If this saves you time, star the repo so more engineers can find it. Issues and pull requests are welcome.

## License

Released under the [MIT License](LICENSE). Feel free to adapt it for your own resume.
