---
name: lafragatamarca
description: Use when applying the official La Fragata brand to websites, carousels, documents, social assets, UI mockups, or editorial pieces. Anchors output to the real LaFragata.net identity: dark navy backgrounds, gold highlights, Montserrat headlines, Inter UI/body text, the official logo, glass panels, and an editorial tone centered on noticias, politica y libertad.
---

# La Fragata Marca

Use this skill when the user wants an artifact to feel like the real `lafragata.net` brand, not a generic dark template.

## Brand source of truth

Treat the current website as the canonical reference for the brand system:
- `lafragatamarca/assets/logo.png`
- `lafragatamarca/assets/brand-tokens.css`
- `lafragatamarca/references/brand-system.md`

If an older prompt, file, or note mentions different colors or fonts, prefer the brand system bundled in this skill unless the user explicitly overrides it.

The brand also includes a newer modern emblem provided by the user: a circular navy-and-gold mark with a ship and lighthouse. Treat it as an official alternate logo direction even if the final asset file has not been bundled yet.

## Core brand invariants

Always preserve these rules unless the user asks for a deliberate variation:
- Use a dark editorial base, not white-first layouts
- Use gold as the main accent and interaction color
- Keep the mood sober, political, journalistic, and premium
- Headlines should feel firm and high-contrast, not playful
- Use the official La Fragata logo when a logo is needed
- Favor panel-based layouts with subtle glass, borders, and soft glow
- Keep copy in natural Spanish when the artifact is in Spanish

## Official visual system

### Colors

Use these tokens as defaults:
- Background: `#011326`
- Surface: `#0a1f35`
- Surface alt: `#111827`
- Gold primary: `#c5a059`
- Gold hover/highlight: `#d4b06a`
- Text main: `#f3f4f6`
- Text muted: `#9ca3af`
- Live/alert accent: `#ef4444`
- Border subtle: `rgba(255,255,255,0.10)`
- Glass panel: `rgba(30,30,30,0.60)`

### Typography

- Brand wordmark and large `LA FRAGATA` lockups: `Cormorant Garamond`, serif
- Editorial headlines, UI titles, and navigational headings: `Montserrat`, weights `700` and `800`
- UI and body: prefer `Inter`, with `Roboto` and `Open Sans` as acceptable alternates for text-heavy work
- Avoid switching to serif or unrelated display fonts unless the user explicitly asks

For large brand presentations, do not default to Montserrat. The big `LA FRAGATA` expression should use `Cormorant Garamond` and feel tall, refined, and formal.

### Logo

- Default logo asset: `lafragatamarca/assets/logo.png`
- Alternate modern logo: circular ship-and-lighthouse emblem in navy and gold
- Do not redraw or simplify the mark unless the user asks
- Leave breathing room around the logo
- Prefer gold, white, or original-color presentation over experimental recolors

### Logo selection rules

- Use the default website logo when matching the current live site or preserving continuity with existing assets
- Use the modern circular emblem when the user wants a more premium, institutional, badge-like, or rebrand-forward presentation
- Prefer the circular emblem for profile avatars, seals, stamps, social badges, cover medallions, and brand-led compositions
- Prefer the website logo for headers, nav areas, page mastheads, and places where readability at wide aspect ratios matters

## Layout guidance

The site identity is built around:
- navy backgrounds with gold accents
- uppercase or near-uppercase section titling
- glass panels over dark surfaces
- rounded corners with restrained shadows
- dense information arranged with clear hierarchy
- editorial cards for programs, articles, and calls to action
- a formal large-format brand wordmark with a serif presence when `LA FRAGATA` is the centerpiece

When creating a new artifact, reuse this logic instead of inventing a different design language.

## Workflow

1. Identify the output format: page, component, carousel, PDF, mockup, post, or brand guideline.
2. Apply the bundled brand tokens before making creative decisions.
3. Use the serif brand wordmark style for oversized `LA FRAGATA` brand lockups, `Montserrat` for editorial/UI titles, and prefer `Inter` for body/interface copy with `Roboto` or `Open Sans` as close substitutes.
4. Add the official logo if the piece benefits from brand presence.
5. Choose between the website logo and the modern emblem according to the composition.
6. Keep contrast high: light text on dark backgrounds, gold for emphasis.
7. Use red only for live states, alerts, or urgent emphasis.
8. Before finishing, compare the result against `lafragatamarca/references/brand-system.md`.

## Output rules

- Do not use placeholder palettes from older drafts
- Do not default to purple, neon gradients, or generic SaaS styling
- Do not turn the brand into a luxury/gold-only aesthetic; the navy foundation matters
- Do not oversaturate the layout with too many accent colors
- If the user asks for a lighter version, preserve Montserrat + Inter + gold/navy DNA as much as possible

## Notes

If you need exact tokens or implementation-ready CSS, read:
- `lafragatamarca/assets/brand-tokens.css`

If you need the rationale and usage guidance, read:
- `lafragatamarca/references/brand-system.md`
