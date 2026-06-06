# fancytom-hugo

Portfolio site for **Fancy Tom** at [fancytom.com](https://fancytom.com). Built with Hugo, Tailwind CSS v4, and Cloudinary for image hosting.

## Setup

Requires [mise](https://mise.jdx.dev/) and [direnv](https://direnv.net/).

```bash
mise install    # installs hugo 0.157.0 + tailwindcss 4.3.0
direnv allow
```

## Common commands

```bash
make serve                           # local server at http://localhost:1313
make build                           # production build → public/

make artwork 2026-06-06-title.md     # new artwork file
make comic title.md                  # new comic file
make post title.md                   # new post file
```

New files are created as `draft: true` — set to `draft: false` to publish.

## Content workflow

1. Upload image to Cloudinary (folder: `sketchaday/`)
2. Create the markdown file with `hugo new artwork/...`
3. Fill in `cloudinaryId` and `image` fields in the front matter
4. Set `draft: false`
5. Commit and push — Netlify deploys automatically

See `AGENTS.md` for full front matter reference and theme structure.

## Tech

- **Hugo** 0.157.0 (pinned — 0.158.0+ breaks standalone Tailwind binary support)
- **Tailwind CSS** v4 standalone binary (no Node/npm)
- **Cloudinary** for image hosting (user ID: `dodzkb914`)
- **Netlify** for deployment
