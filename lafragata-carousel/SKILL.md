---
name: lafragata-carousel
description: Use when creating or adapting Instagram carousels for La Fragata. Preserves the established visual system, works from template inspiration into articulos/<slug>/, rotates CTA channels, and varies slide composition through a controlled set of allowed layouts instead of repeating one rigid structure.
---

# La Fragata Carousel

Use this skill when the user wants a carousel in the La Fragata style or wants to reuse the same editorial system across multiple articles.

When `lafragatamarca` is available, use it as the brand source of truth before making visual decisions. `lafragata-carousel` is responsible for carousel composition and article adaptation; `lafragatamarca` is responsible for brand identity.

## Default output

Create or update a standalone HTML/CSS/JS carousel suitable for Instagram slides.

Assume the current working directory is the project root, identified by the presence of `template/` and `articulos/`.

For each article:
- `template/` is the visual base and reference, not the place for article-specific edits.
- Work in `articulos/<fecha>-<slug>/`.
- The folder name must begin with the publication date in `aaaammdd` format, for example `20260316-misiones-frena-la-compra-de-vehiculos-oficiales-despues-de-anos-de-despilfarro`.
- If the article folder already exists, update it.
- If it does not exist, copy the base files from `template/` into that article folder before editing.

Default source template:
- `template/index.html`
- `template/styles.css`
- `template/script.js`
- `template/export-slides.mjs`

Default destination for each article:
- `articulos/<fecha>-<slug>/index.html`
- `articulos/<fecha>-<slug>/styles.css`
- `articulos/<fecha>-<slug>/script.js`
- `articulos/<fecha>-<slug>/export-slides.mjs`
- `articulos/<fecha>-<slug>/exports/`

Do not overwrite a previous article folder unless the user explicitly asks to update that same article.
Do not modify `template/` unless the change is clearly intended to affect the global base.

## Brand dependency

If the sibling skill `../lafragatamarca/` exists, read these files before changing visuals:
- `../lafragatamarca/SKILL.md`
- `../lafragatamarca/assets/brand-tokens.css`
- `../lafragatamarca/references/brand-system.md`

Treat `lafragatamarca` as the canonical source for:
- color palette
- typography
- logo usage
- panel treatment
- overall brand mood

If older carousel guidance conflicts with `lafragatamarca`, prefer `lafragatamarca` unless the user explicitly asks otherwise.

## Brand invariants

Always preserve these rules unless the user explicitly overrides them:
- Use the current La Fragata brand palette from `lafragatamarca` as the primary source
- Keep a dark editorial base, not white-first layouts
- Use gold for accents, hierarchy, labels, and CTA emphasis
- Tone: elegant, editorial, sober, political/news style
- Avoid oversaturating the composition with gold
- Use the approved La Fragata typography system from `lafragatamarca`
- Preserve generous spacing and visible breathing room around text blocks
- Reserve visible outer safety margin so curved gold borders remain readable after export, crop, or platform compression
- Keep rounded shapes, framed boxes, and overlays consistent with the established La Fragata look
- The visual system should feel varied, but still recognizably part of the same publication

For framed slides:
- prefer a dedicated inner frame wrapper inside the fixed canvas
- do not rely only on a literal outer `border` on the screenshot root for the gold frame
- prefer an inner framed layer or inset treatment that survives export more reliably
- verify the right edge of the gold frame in exported PNGs, not only in browser preview
- if the gold frame looks clipped in export, inspect parent shell width, screenshot root overflow, and any container that constrains the canvas before tweaking visual spacing

## Fixed canvas rule

Treat the actual slide as a fixed-format social canvas, not as a responsive webpage section.

For example:
- feed portrait carousel: fixed `1080 x 1350`
- story format: a different fixed canvas, not an automatic reflow of the feed layout

The surrounding editor UI may be flexible, but the slide itself should be composed for its final export size.
Do not let cards, columns, or internal blocks rearrange themselves just because the browser preview is narrower.
If a different platform size is needed later, design a separate fixed layout for that format.
Avoid shell-width constraints that interfere with export framing or cause the slide border to render too close to the screenshot edge.

## Article image treatment

When the article has a featured image available:
- Use it as a subtle full-card background detail on informational slides
- The image must cover the whole card, not only the text block
- Anchor it visually to `bottom right`
- Keep it subdued with overlays and gradients so text stays readable
- Do not let the image dominate the typography

If the exact image cannot be fetched, say so briefly and continue without inventing details.

## Composition system

Do not treat the carousel as one rigid template where only the text changes.
Use a controlled library of slide patterns while preserving the same identity.

Allowed slide patterns include:
- `cover-hero`: strongest headline, short supporting deck, strong hierarchy
- `stat-focus`: one dominant number with short context or comparison
- `fact-grid`: two or three compact facts in balanced boxes
- `split-analysis`: headline on one side, supporting explanation on the other
- `quote-panel`: one key sentence or interpretation framed as a pull quote
- `bullet-brief`: up to three sharp bullets, not dense paragraphs
- `mini-chart`: simple bar or comparison visual when the article is numerically driven
- `narrative-panel`: one context paragraph plus one highlighted takeaway
- `cta-fragata`: final branded call to action

These patterns are compatible pieces, not isolated full templates. A carousel may mix them.

## Slide structure

Default structure:
1. Cover slide with the strongest headline
2. Data or key fact slide
3. Context or narrative slide
4. Interpretation or why it matters slide
5. Final CTA slide

This structure stays stable, but the composition of slides 2 to 4 may vary according to the article.

## Layout decision rules

Choose slide patterns according to the article, not randomly with no logic.

Use these heuristics:
- If the article has one dominant number, use `stat-focus` early
- If the article has several comparable figures, use `fact-grid` or `mini-chart`
- If the article revolves around one strong interpretation, use `quote-panel` or `narrative-panel`
- If the article is more political or analytical than numeric, prioritize `split-analysis` and `bullet-brief`
- If the article is dense, reduce copy and distribute meaning across boxes instead of long paragraphs
- If a title feels safe in browser preview but too large in exports, reduce it for the exported result; final PNG matters more than interactive preview
- Do not use the exact same internal layout on every informational slide unless the user explicitly wants uniformity

Variation should feel intentional, not chaotic.

## Export validation rule

Do not assume the HTML preview is sufficient.
Validate composition against the exported PNGs, especially for:
- right edge of the gold frame
- corner radius readability
- title wrapping
- spacing near the frame
- alignment of decorative corner lines or CTA ornaments

If export and preview disagree, trust the export and adjust from that result.

## Numeric emphasis rules

When a slide is driven by a key figure, do not render the number as a flat uniform string.

Prefer decomposed emphasis such as:
- smaller prefix for units like `USD`
- dominant central value for the meaningful number
- smaller suffix for `%`, `M`, `millones`, or similar markers

Use this only for numbers that are genuinely central to the slide.
Do not over-style every minor number in the carousel.

## Data visualization rules

When using bars, comparisons, or mini charts:
- the graphic must attract attention, not look like a thin technical afterthought
- if there are only one or two bars, make them thicker, larger, and more expressive
- labels and values should stay readable at Instagram export size
- prefer a short forceful visual over a timid chart that adds little hierarchy

When a data slide already has a strong figure, the supporting line beneath it should be short, sharp, and editorial.
Avoid bureaucratic or explanatory footnote-style prose.

## Writing guidance

Adapt the copy to the article, but keep the rhythm punchy and editorial.
Prefer short blocks, strong headlines, and political/economic framing.
Do not sound generic or corporate.
Preserve natural Spanish writing, including accents, `ñ`, opening punctuation, and correct capitalization.
Treat proper nouns with full editorial care: countries, provinces, institutions, political figures, parties, brands, and official programs must keep the correct capital letters in Spanish. For example, `Argentina`, `Misiones`, `Javier Milei`, `Boletín Oficial`.

Avoid repeated stock phrases such as:
- `En este carrusel te mostramos`
- `La lectura económica es directa`
- `¿Te informó esta nota?`
- `Compartila y seguinos para no perderte nada de lo que mueve la economía argentina`

Also avoid these failure modes:
- repetitive headline rhythm across every slide
- long explanatory paragraphs in all slides
- filler transitions that sound like AI glue
- negation-led “twist” phrasing such as `no fue...`, `no es solo...`, or similar formulas when they sound prebuilt instead of journalistic
- summary slides that merely restate previous text without adding hierarchy
- empty variety where only the box shape changes but the composition still feels identical

Vary both the article description and the CTA copy from one carousel to the next.
Do not build a new article by merely cloning the previous article's text structure and swapping nouns or figures.
If starting from an existing article folder for speed, treat it only as scaffolding and deliberately change at least one major composition pattern in slides 1 to 4.
The carousel should feel authored for the article, not filled into a reusable mold.

## Final CTA slide

The last slide should be a follow invitation, not a summary.

The final slide must always preserve this brand anchor:
- a large `LA FRAGATA` wordmark
- a smaller sans-serif descriptor line beneath it in the spirit of `NOTICIAS • POLITICA • LIBERTAD`

When available, the `LA FRAGATA` lockup should follow the brand display guidance from `lafragatamarca`, especially the use of `Cormorant Garamond` for the oversized wordmark and the approved sans-serif pairing for the descriptor line.
When an approved logo asset is available from `lafragatamarca`, prefer including it in the CTA lockup as a restrained brand seal above the wordmark instead of using decorative substitute glyphs.

Use a structure in this spirit:
- Brand lockup / La Fragata identity
- Short follow/share message with natural wording, not boilerplate
- CTA button or framed callout pointing to one of La Fragata's channels
- The top-right label on the final slide must match the CTA destination, for example `Estamos en Instagram`, `Encontranos en TikTok`, `Comunicate por WhatsApp`, or `Visita la web`
- Keep composition airy; avoid compressing text into a narrow centered column
- Use verbs that fit the channel: `seguinos` for social media, `visita` for web, `escribinos` or `comunicate` for WhatsApp/email. Avoid mismatches like `seguinos en WhatsApp`

CTA copy should sound like editorial invitation, not generic platform filler.
Prefer fresher lines that match the publication voice, for example inviting the user to cruzarse con placas, recortes, editoriales, o el pulso político del día, instead of repeating the same sentence every time.

Rotate CTA targets across these channels:
- Web: `LaFragata.Net`
- WhatsApp: `3758 57-7209`
- Facebook: `/ lafragatastream`
- Instagram: `/ lafragata_stream`
- TikTok: `/ lafragata_stream`
- Email: `lafragatastream@gmail.com`

Use `cta_rotation.json` in this skill folder to persist rotation order between requests.
Read the file before creating the CTA slide and advance `next_index` after using one channel.

## Workflow

1. Read the referenced article or available source material.
   If the source is an external publication instead of La Fragata, treat it as reporting input, not as final voice.
2. Extract the title, short description, key claim, numeric highlights, and political/economic angle.
   For external sources, separate:
   - reported facts
   - attributed claims
   - the editorial angle La Fragata will emphasize
3. Extract the article publication date whenever available and build the folder prefix as `aaaammdd`.
4. Generate a slug from the article title and combine it as `<fecha>-<slug>`.
5. Create or reuse `articulos/<fecha>-<slug>/`.
6. If it is a new article, copy the base files from `template/` into that folder before editing.
7. Keep the established La Fragata visual system.
8. Choose slide patterns that fit the article instead of repeating one rigid box structure.
9. Update the carousel copy and composition slide by slide inside that article folder.
10. Export rendered slides into `articulos/<fecha>-<slug>/exports/` when the user asks for exports.
11. When changing visuals, protect consistency in spacing, typography, image treatment, and brand lockup.

## External source rule

When the user provides a note from another publication:
- use that article as source material for facts and framing inputs
- do not copy the source's prose into the carousel
- rewrite everything in La Fragata's own editorial voice
- keep attribution clean when a concrete statistic, ranking, or claim comes from that source
- if a number or ranking is central, preserve it accurately and avoid soft paraphrases that could distort the fact
- by default, do not place visible source credit inside the slide itself unless the user asks for attribution on-card or the context is investigative/high-stakes enough to require it

## Notes

This skill should act like a composition system with guardrails, not a single frozen template.
When in doubt, prioritize readability, hierarchy, restraint, and recognizable brand identity over novelty.
