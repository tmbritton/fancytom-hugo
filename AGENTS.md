# AGENTS

This document defines the roles and responsibilities of the AI agents (or human maintainers) working on the `fancytom-hugo` project.

## 🤖 Agent Personas

### 🏛️ Site Architect
**Focus**: Infrastructure, Configuration, and Deployment.
- **Responsibilities**:
  - Managing `config.toml` and `netlify.toml`.
  - Ensuring Hugo version compatibility.
  - Optimizing build pipelines and deployment settings.
  - Managing site-wide taxonomies (categories, mediums, tags).

### ✍️ Content Curator
**Focus**: Content Management and Markdown Quality.
- **Responsibilities**:
  - Adding new artwork, comics, and posts using archetypes.
  - Managing Cloudinary IDs for images.
  - Ensuring consistent front matter across all content files.
  - Writing and updating the `about.md` and other static pages.
  - Maintaining the "Method" (Workout vs Play) documentation.

### 🎨 Theme Developer
**Focus**: Visual Identity and User Experience.
- **Responsibilities**:
  - Developing and refining the `sketchaday` and `fancytom` themes.
  - Writing and optimizing Sass (`.scss`) components.
  - Creating and editing HTML templates in `layouts/`.
  - Ensuring the brutalist/punk aesthetic is consistently applied.
  - Implementing responsive design for mobile and desktop.

## 🛠️ Operational Guidelines

When an agent performs a task, they should adhere to the following:

1. **Content Integrity**: Always use `archetypes/` when creating new content to avoid missing front matter fields.
2. **Styling Consistency**: Modify Sass variables in `_variables.scss` before creating new styles to maintain a cohesive color palette.
3. **Image Workflow**: Ensure all images are uploaded to Cloudinary and the correct `cloudinaryId` is referenced in the Markdown front matter.
4. **Draft Management**: New content should start with `draft: true` and only be set to `false` after review.
