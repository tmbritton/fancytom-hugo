# fancytom-hugo — agent context

Personal art site for [fancytom.com](https://fancytom.com). Hugo static site with a hand-built brutalist/punk theme (`sketchaday`), Tailwind CSS v4, and Cloudinary for image hosting.

## Build & dev

```bash
mise install          # installs hugo 0.157.0 + tailwindcss 4.3.0 standalone binary
mise exec -- hugo     # production build → public/
mise exec -- hugo server --buildDrafts  # dev server with draft content
```

**Hugo must stay at 0.157.0.** Versions 0.158.0+ broke standalone Tailwind binary support — they require the npm-installed version. Netlify is also pinned to 0.157.0 in `netlify.toml`.

Tailwind is the standalone binary (no Node, no package.json). CSS entry point is `themes/sketchaday/assets/css/main.css`, processed via `css.TailwindCSS` in Hugo's asset pipeline. `hugo_stats.json` in the project root drives Tailwind's class scanning (`@source "hugo_stats.json"` in main.css) — this file is gitignored and regenerated on each build.

## Adding content

Always use archetypes:

```bash
mise exec -- hugo new artwork/YYYY-MM-DD-title.md
mise exec -- hugo new comic/title.md
```

New content starts as `draft: true`. Set to `draft: false` when ready to publish.

### Artwork front matter

```yaml
title: "Title"
date: 2026-05-07
draft: false
cloudinaryId: "2026-05-07-title_cloudinarycode"   # from Cloudinary upload
image: "https://res.cloudinary.com/dodzkb914/image/upload/v.../sketchaday/filename.jpg"
categories: ["Dynamic Sketching"]
tags: ["tag1", "tag2"]
mediums: ["ink", "digital"]
frontpage: true      # show on homepage hero
type: "artwork"
layout: "default"
width: '8.5"'
height: '11"'
```

`cloudinaryId` drives the thumbnail URLs (Hugo constructs Cloudinary transform URLs from it). `image` is the full-res URL for the lightbox/single view. Both should be set.

Cloudinary user ID: `dodzkb914`. Folder: `sketchaday/`.

### Comic front matter

```yaml
title: "Title"
subtitle: ""
date: 2026-01-01
draft: false
cloudinaryId: "filename"
pages: ""            # number of pages
categories: []
frontpage: false
type: "comic"
layout: "comic"
width: ""
height: ""
```

## Theme structure

```
themes/sketchaday/
  assets/css/main.css          # Tailwind entry point — all custom CSS lives here
  layouts/
    _default/
      baseof.html              # shell: head, nav, footer partials
      single.html              # artwork single page (image + copy + prev/next nav)
      section.html             # generic section list (grid of punk-cards)
      taxonomy.html            # tag/category/medium index
      term.html                # pages within a taxonomy term
    index.html                 # homepage
    page/
      about.html
      archive.html             # full artwork archive grid
    partials/
      css.html                 # Tailwind asset pipeline
      head.html
      nav.html
      footer.html
      punk-card.html           # reusable card component
      streak.html              # daily streak counter
      lightbox.html
    category/term.html
    medium/term.html
    tag/term.html
```

## Visual conventions

The theme is brutalist/punk: raw borders, rotated elements, xerox-style grayscale cards that colour on hover, marker and mono fonts, animated jitter effects. When editing templates, lean into that — clipped edges, bold outlines, chaos background text (`.bg-chaos`), the paper background `#b9b4a7`.

CSS custom properties in `main.css`:
- `--neon-yellow: #ccff00`
- `--punk-pink: #ff00ff`
- `--acid-green: #47ff6f`
- `--xerox-blue: #1d4dff`
- `--paper: #b9b4a7`

## Deployment

Netlify auto-deploys `master`. The build command in `netlify.toml` downloads the tailwindcss standalone binary at build time and runs `hugo`. No CI setup needed — push to master, it deploys.
