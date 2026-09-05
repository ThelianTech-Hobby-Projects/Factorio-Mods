# Thelian Industries Documentation Guidance

## Scope

These instructions apply to `docs/ThelianIndustries/` and its descendants.

## Source and Authority Rules

- Treat `Mods/ThelianIndustries/plans/` as the legacy planning input, not as proof of implemented behavior.
- Follow [DOCUMENT_AUTHORITY.md](DOCUMENT_AUTHORITY.md) before making authority or status claims.
- Apply the explicit 2026-09-04 owner resolutions recorded in the [migration audit](Reviews/migration_audit_2026-09-04.md); do not re-open resolved items without newer owner evidence.
- Preserve source meaning and provenance. Do not alter legacy source files as part of documentation migration.

## Content Rules

- Do not invent recipes, quantities, timings, prerequisites, yields, mechanics, resource locations, compatibility, implementation status, architecture, release plans, or feasibility conclusions.
- Keep content from the idea backlog visibly non-locked until explicitly promoted by the owner.
- Preserve AI-generated labels on world prose and do not call that prose approved canon.
- Use placeholders when a legacy source provides no substantive specification.
- Record a genuinely new unresolved contradiction in the migration review as `Needs Owner Decision`; do not silently choose a value.

## Organization Rules

- Keep one canonical owner per concern, not necessarily per item.
- For legitimate cross-domain concepts, state what each document owns and add reciprocal links rather than duplicating specifications.
- Add substantive decisions only after explicit owner approval. Use the ADR template for an approved decision record.
- Update the changelog and review evidence when a migration-level documentation change materially affects navigation, authority, provenance, or status.
