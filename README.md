# fancytom-hugo

A portfolio website for artist **Fancy Tom**, built using the [Hugo](https://gohugo.io/) static site generator.

## 🎨 Overview

This project serves as a digital gallery and blog to showcase Fancy Tom's artwork, comics, and thoughts on the creative process. It is designed with a brutalist, punk-inspired aesthetic.

### Key Features
- **Artwork Gallery**: Organized by medium, category, and tags, with images hosted on Cloudinary.
- **Comics**: Support for multi-page comic strips.
- **Blog**: Posts about digital painting and art studies.
- **Custom Themes**: Includes the `sketchaday` and `fancytom` themes.
- **Automated Deployment**: Configured for deployment via Netlify.

## 🛠️ Tech Stack

- **SSG**: [Hugo](https://gohugo.io/)
- **Styling**: Sass (SCSS)
- **Image Hosting**: [Cloudinary](https://cloudinary.com/)
- **Deployment**: [Netlify](https://www.netlify.com/)
- **Content**: Markdown with YAML front matter

## 📁 Project Structure

- `config.toml`: Main site configuration (baseURL, title, taxonomies, etc.).
- `content/`: The heart of the site.
  - `artwork/`: Individual artwork entries.
  - `comic/`: Comic series and episodes.
  - `post/`: Blog posts and tutorials.
  - `about.md`, `contact.md`, etc.: Static pages.
- `themes/`: 
  - `sketchaday/`: The active theme, focusing on a brutalist/punk aesthetic.
  - `fancytom/`: A custom theme with specific layout components.
- `static/`: Static assets like favicons.
- `archetypes/`: Templates for creating new content (artwork, comics, default).
- `netlify.toml`: Netlify build settings.

## 🚀 Getting Started

### Prerequisites
- Install [Hugo](https://gohugo.io/installation/) (extended version recommended for Sass support).

### Local Development
1. Clone the repository:
   ```bash
   git clone https://github.com/your-repo/fancytom-hugo.git
   cd fancytom-hugo
   ```
2. Run the Hugo server:
   ```bash
   hugo server
   ```
3. View the site at `http://localhost:1313/`.

### Adding Content
Use the provided archetypes to ensure consistent front matter:
- For artwork: `hugo new artwork/my-piece.md`
- For comics: `hugo new comic/my-story.md`
- For posts: `hugo new post/my-blog-post.md`

## 📜 License
The custom themes are licensed under the MIT License.
