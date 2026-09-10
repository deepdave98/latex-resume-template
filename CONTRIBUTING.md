# Contributing

Issues and pull requests are welcome. Keep changes focused.

## Template and documentation changes

- Keep shared layout and styling in `resume.cls`.
- Keep the no-internship and new-grad templates at one page each, and the experienced template at two pages.
- Keep examples shipped in the resume templates and maintainer-written guides fictional: use placeholder companies, roles, metrics, links, and contact details.
- Run `make` with XeLaTeX.
- Run `make preview` and review every page if the output changes.
- Run `make downloads` after changing template content, styling, the license, or starter instructions.
- Run `make test`; it checks PDF text, ZIP freshness, builds from the actual downloads, and placeholder warnings. See the [test guide](tests/README.md) for dependencies and baseline updates.
- Run `git diff --check`.

Explain why the change matters. Include before-and-after screenshots for layout changes.

## Community resume examples

Submit only a bullet you wrote and have the right to share. Choose either path:

- No Git required: use the [resume example issue form](https://github.com/deepdave98/swe-resume-templates/issues/new?template=resume-example.yml).
- Pull request: copy [`examples/community/TEMPLATE.md`](examples/community/TEMPLATE.md) to one new file in that directory and complete every required section.

Before submitting:

- Replace employer, client, product, team, and private system names with clear placeholders.
- Keep the rewrite faithful to your contribution, scope, and seniority.
- Explain numbers in safe, non-confidential terms. Never invent a metric or upload private proof.
- Confirm that the original is yours and that your submission may be published under the MIT License.

Attribution is optional. Accepted examples use one file each and are added to the [reviewed index](examples/community/README.md).
