# stonecamp.us

GitHub Pages source for **stonecamp.us** — the K–12 family-learning
sister site to [Pointegrity](https://www.pointegrity.com).

Published under products today:

- **Trellis** — pre-algebra concept map (live at trellis.stonecamp.us)
- **Grove** — programming kit for makers (in development)
- **Lithica** — programmable illustration kit (in development)

## Layout

- `index.html` — single-page front door (hero / tools / approach / about / footer)
- `static/brand.css` — typography + brand tokens (extends motif)
- `static/site.css` — layout + components for this site
- `static/motif/` — vendored copy of [motif](../motif) tokens
- `static/fonts/` — IBM Plex woff2s
- `CNAME` — sets the GH Pages custom domain

## Local dev

```bash
make dev          # serves on http://localhost:4500
make check        # echo all hrefs/srcs for a quick review
```

## Updating motif

The motif CSS is vendored, not symlinked. After changes upstream:

```bash
make update-motif
```

## Brand notes

- Primary palette is motif's sage-green family (already aligned with
  StoneCampus identity).
- Accent is "stone-warm" — `--color-stone-warm`, `--color-stone-deep`,
  `--color-stone-bg` — used on family tags + cooking-state cards.
- Sister relationship to Pointegrity is explicit in copy + footer; the
  shared design system (motif + Plex) keeps cross-site navigation
  feeling continuous.
