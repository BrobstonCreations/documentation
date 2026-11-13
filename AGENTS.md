# Working in this repository

Standards live in the `engineering-standards` skill
(github.com/TonyBrobston/engineering-standards). This repository holds
customer-facing Markdown guides, not code, and has no standards CI or check
script. This file only says how the repository is laid out and released.

- Install guides: `install-instructions/*.MD`, with images in a sibling
  `*-images/` folder and the sections of a long guide in `*-pages/`.
- Measurement guides: `measurement-instructions/*.MD`, same image layout.
- List every new guide in `README.md` under its section.
- In guides, use relative image paths so they render on GitHub and in the PDF.
- PDFs: `scripts/generate-pdfs.sh` runs `md-to-pdf` over
  `install-instructions/*.MD`. `.github/workflows/convert-docs.yml` runs it on
  a pushed tag or manual dispatch and attaches the PDFs to a GitHub release.
  Preview one locally with `npx md-to-pdf <file>`.
- Merge policy: `tony-reviews`. After reviewer and QA approval, Tony merges.
