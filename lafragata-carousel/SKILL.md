---
name: lafragata-carousel
description: Use when creating or adapting Instagram carousels inspired by La Fragata. Applies the established visual system: deep blue background (#001f43), warm beige as base text color, muted gold only for accents, editorial typography, article image as a subtle full-card background anchored bottom-right, and a final slide with a rotating CTA to La Fragata channels.
---

# La Fragata Carousel

Use this skill when the user wants a carousel in the La Fragata style or wants to reuse the same visual criteria across multiple articles.

## Default output

Create or update a standalone HTML/CSS/JS carousel suitable for Instagram slides using `/Users/diego/Sitios/IAcode/` as the default base directory for shared Codex resources.

Default Codex base directory:
- `/Users/diego/Sitios/IAcode/`

For La Fragata carousels, work inside:
- `/Users/diego/Sitios/IAcode/TarjetasFragrata/`

For each new article:
- Use `template/` as the base folder.
- Create a dedicated folder at `articulos/<slug-del-articulo>/`.
- Copy the template files into that article folder before editing content.

Default source template:
- `/Users/diego/Sitios/IAcode/TarjetasFragrata/template/index.html`
- `/Users/diego/Sitios/IAcode/TarjetasFragrata/template/styles.css`
- `/Users/diego/Sitios/IAcode/TarjetasFragrata/template/script.js`
- `/Users/diego/Sitios/IAcode/TarjetasFragrata/template/export-slides.mjs`

Default destination for each article:
- `/Users/diego/Sitios/IAcode/TarjetasFragrata/articulos/<slug>/index.html`
- `/Users/diego/Sitios/IAcode/TarjetasFragrata/articulos/<slug>/styles.css`
- `/Users/diego/Sitios/IAcode/TarjetasFragrata/articulos/<slug>/script.js`
- `/Users/diego/Sitios/IAcode/TarjetasFragrata/articulos/<slug>/export-slides.mjs`
- `/Users/diego/Sitios/IAcode/TarjetasFragrata/articulos/<slug>/exports/` for rendered slides when exporting

Do not overwrite a previous article folder unless the user explicitly asks to update that same article.
If a carousel already exists for the same article, update the files inside that article folder instead of recreating it.
If the project is empty, still treat `/Users/diego/Sitios/IAcode/TarjetasFragrata/template/` as the canonical base and create the first article under `/Users/diego/Sitios/IAcode/TarjetasFragrata/articulos/`.

## Visual system

Always preserve these rules unless the user explicitly overrides them:
- Background base color: `#001f43`
- Main reading text: warm beige, not gold
- Gold is only for accents, highlights, lines, labels, and emphasized words
- Tone: elegant, editorial, sober, political/news style
- Avoid oversaturating the composition with gold
- Use high-contrast serif headlines and clean sans-serif supporting text

## Article image treatment

When the article has a featured image available:
- Use it as a subtle full-card background detail on informational slides
- The image must cover the whole card, not only the text block
- Anchor it visually to `bottom right`
- Keep it subdued with overlays/gradients so text stays readable
- Do not let the image dominate the typography

If the exact image cannot be fetched, say so briefly and continue without inventing details.

## Slide structure

Default structure:
1. Cover slide with the strongest headline
2. Data / key fact slide
3. Context / narrative slide
4. Interpretation / why it matters slide
5. Final CTA slide

## Final CTA slide

The last slide should be a follow invitation, not a summary.

Use a structure in this spirit:
- Brand lockup / La Fragata identity
- Short follow/share message with natural wording, not boilerplate
- CTA button or framed callout pointing to one of La Fragata's channels
- The top-right label on the final slide must match the CTA destination, for example `Estamos en Instagram`, `Encontranos en TikTok`, `Comunicate por WhatsApp`, or `Visita la web`
- Keep composition airy; avoid compressing text into a narrow centered column
- Use verbs that fit the channel: `seguinos` for social media, `visita` for web, `escribinos` or `comunicate` for WhatsApp/email. Avoid mismatches like `seguinos en WhatsApp`.

Rotate CTA targets across these channels:
- Web: `LaFragata.Net`
- WhatsApp: `3758 57-7209`
- Facebook: `/ lafragatastream`
- Instagram: `/ lafragata_stream`
- TikTok: `/ lafragata_stream`
- Email: `lafragatastream@gmail.com`

Use `/Users/diego/Sitios/IAcode/skills/lafragata-carousel/cta_rotation.json` to persist rotation order between requests.
Read the file before creating the CTA slide and advance `next_index` after using one channel.

## Writing guidance

Adapt the copy to the article, but keep the rhythm punchy and editorial.
Prefer short blocks, strong headlines, and political/economic framing.
Do not sound generic or corporate.
Preserve natural Spanish writing, including accents, `ñ`, opening punctuation, and correct capitalization.
Avoid repeated stock phrases such as:
- `En este carrusel te mostramos`
- `La lectura económica es directa`
- `¿Te informó esta nota?`
- `Compartila y seguinos para no perderte nada de lo que mueve la economía argentina`

Vary both the article description and the CTA copy from one carousel to the next.

## Workflow

1. Read the referenced article or available source material.
2. Extract the title, short description, key claim, and political/economic angle.
3. Generate a slug from the article title.
4. Create or reuse `/Users/diego/Sitios/IAcode/TarjetasFragrata/articulos/<slug>/`.
5. If it is a new article, copy the base files from `/Users/diego/Sitios/IAcode/TarjetasFragrata/template/` into that folder before editing.
6. Keep the established La Fragata visual system.
7. Update the carousel copy slide by slide inside that article folder.
8. Export rendered slides into `/Users/diego/Sitios/IAcode/TarjetasFragrata/articulos/<slug>/exports/` when the user asks for exports.
9. When changing visuals, keep consistency with the saved palette and image treatment.

## Notes

This skill encodes the style established collaboratively in this workspace session.
When in doubt, prioritize readability, hierarchy, and restraint over visual noise.
