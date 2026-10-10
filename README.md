# 1Vision365 docs

MkDocs Material site, deployed to GitHub Pages. Documentation for the 1Vision365 AppSource apps.

## Setup (once)

1. Create a repo `1vision365/docs` and push this folder to `main`.
2. GitHub: **Settings > Pages > Source: GitHub Actions**.
3. Push to `main`. The `Deploy docs to GitHub Pages` workflow builds and publishes the site.
4. Optional: custom domain under **Settings > Pages** (for example `docs.1vision365.nl`), then update `site_url` in `mkdocs.yml`.

## Local preview

```bash
pip install -r requirements.txt
mkdocs serve
```

## Add an app

1. Copy `docs/apps/iot-link/` to `docs/apps/<new-app>/`.
2. Add the pages to `nav` in `mkdocs.yml` and a card to `docs/index.md`.

## Docs agent (OpenClaw)

- `docs-style.md` is the instruction file for the agent. Load it as agent context.
- `app-repo-workflow/notify-openclaw.yml` goes into each AL app repo. It posts to your OpenClaw webhook on push to `main` and on release.
- The agent opens a pull request in this repo. The `Docs build check` workflow validates it. Merge triggers the deploy.
- Generated text lives between `<!-- agent:begin id -->` and `<!-- agent:end id -->` markers. Everything outside the markers is yours.

## AppSource

Use the published URLs in the offer listing: the app's docs page as help link, plus `/support/` and `/privacy/`. Replace the placeholder text on those two pages first.

## Support agent visibility

Every page starts with `support_agent: false` in its front matter, which hides it from the public support agent. Remove that block from a page **only after you reviewed it** (no TODOs, no placeholder values). Lines containing `TODO` are always hidden from the agent.
