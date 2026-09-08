# PDF Text Checks

`make test` builds both templates, runs the checker's fault tests, and checks the built and published PDFs. It needs Python 3.9+ and Poppler's `pdftotext` on `PATH`; no pip packages.

The check compares every page with `expected/*.txt` using Poppler's `-layout` reading order. Missing or reordered words, changed punctuation, unmapped characters, and extra or missing pages fail. Whitespace and Unicode ligature differences are ignored. Line-end hyphens are preserved.

This checks one extractor. It does not score a resume or guarantee how an ATS will parse it. Inspect the PDF too; text extraction cannot catch every visual defect.

## Run without make

Build the PDFs first, then run from the repository root:

```bash
python3 -m unittest discover -s tests -p 'test_*.py'
python3 tests/check_pdf_text.py
python3 tests/check_pdf_text.py --new-grad output/pdf/new-grad-resume.pdf --experienced output/pdf/experienced-resume.pdf
```

On Windows, use `py -3` instead of `python3`. Pass `--new-grad` and `--experienced` to check PDFs in other locations. CI also checks standalone project builds.

## Change a baseline

After an intentional template edit:

1. Run `make preview` and inspect all three pages.
2. Read the extracted text with `pdftotext -layout path/to/resume.pdf -`.
3. Update the affected page in `expected/` with the reviewed text, without the trailing form feed. Keep dates on the same line as the organization, as layout mode emits them.
4. Run `make test`. Commit the source, refreshed previews/PDFs, and baseline together.

Do not accept a new baseline just to clear a failure. Check it against the source and rendered page.

## Check your own resume

These snapshots describe the shipped templates. Your edited resume will differ. Read its extracted text instead of treating a snapshot failure as a quality score:

```bash
pdftotext -layout path/to/your-resume.pdf -
```

Check your name, email, dates, headings, bullet order, and any text split across pages. Extraction output and failure diffs can include personal data; redact them before opening an issue.
