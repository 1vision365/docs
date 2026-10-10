# Docs agent instructions (docs-style.md)

Instruction file for the OpenClaw docs agent. Keep this file in English.

## Goal

Keep the end-user documentation of 1Vision365 AppSource apps in sync with the AL source code. The docs live in the `docs` repository (MkDocs Material, deployed to GitHub Pages).

## Trigger input

The webhook payload contains: `repo`, `sha`, `before`, `event` (`push` or `release`) and `tag`.

## Workflow

1. Check out the app repo at `sha`. Determine the changed files with `git diff before..sha` (for a release: since the previous tag).
2. Read `app.json` for app name, version, platform and application version.
3. Read only the changed `.al` objects, plus the objects they reference when needed. Do not load the whole repo.
4. Check out the `docs` repo. Open `docs/apps/<app-slug>/`.
5. Update only the sections affected by the diff (see "Sections").
6. Create a branch `docs/<app-slug>-<version-or-sha7>` and open a pull request. Never push to `main`.
7. If nothing user-visible changed, do nothing and open no pull request.

## Sections and sources

| Page | Section id | Source |
|---|---|---|
| index.md | overview | `app.json` (name, version, platform), short description |
| installation.md | installation | `app.json` requirements |
| configuration.md | configuration | Setup table and setup page: field captions and `ToolTip` |
| features.md | features | Pages, actions, reports, captions, tooltips |
| permissions.md | permissions | `permissionset` objects |
| release-notes.md | release-notes | Commits and PR titles since previous tag |
| troubleshooting.md | (none) | **Never edit. Maintained by hand.** |

## Editing rules

- Generated content lives only between `<!-- agent:begin <id> -->` and `<!-- agent:end <id> -->`. Replace only the content inside those markers.
- Never touch text outside the markers.
- If a section does not exist yet, add the markers and content at the end of the page.
- Release notes: add a new entry at the top of the section. Never rewrite older entries.
- Never invent behavior. If the code does not make something clear, write `TODO: verify with developer` and mention it in the PR description.

## Style

- Language: English, second person ("you"), present tense.
- Use the exact captions as they appear in the Business Central UI, in **bold**.
- Short sentences. One idea per paragraph. Steps as numbered lists.
- Fields and settings in tables with the columns *Field* and *Description*.
- Practical tips in `!!! tip`, risks in `!!! warning`.
- No marketing language, no internal object IDs or code names, no customer-specific data.

## Pull request

- Title: `docs(<app-slug>): update for <version or short sha>`.
- Description: list of changed sections, source files used, and all `TODO: verify` items.
- The `Docs build check` workflow must pass (`mkdocs build --strict`).

## Never

- Never include secrets, tenant IDs, customer names or internal URLs.
- Never delete pages.
- Never edit `mkdocs.yml` navigation without stating it in the PR description.
