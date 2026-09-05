# Thelian Industries Documentation

**Status: Planning Draft**

This documentation tree is the authority-controlled migration of the legacy Thelian Industries Factorio Space Age overhaul planning set. It organizes planning material without representing it as implemented behavior or final design.

## Start Here

- [Project index](00_Project/00_Project_Index.md) — project-level navigation and current planning limits.
- [Document authority](DOCUMENT_AUTHORITY.md) — how to determine authority for implementation and planning claims.
- [Document map](DOCUMENT_MAP.md) — canonical owner for each documentation concern.
- [Migration audit](Reviews/migration_audit_2026-09-04.md) — source coverage, owner resolutions, and remaining open work.
- [Project Context Snapshot](PROJECT_CONTEXT.md) — generated, non-authoritative working summary of static implementation evidence and canonical planning.
- [Codebase context audit](Reviews/codebase_context_audit_2026-09-04.md) — detailed implementation/reconciliation evidence behind the snapshot.

## Documentation Classes

- **Canonical planning documents** record the current planning direction and must show their status.
- **Plans** retain speculative ideas and candidates.
- **Decisions/ADR** records durable owner-approved decisions; no substantive ADRs have been created in this initial migration.
- **Reviews** record audit evidence and migration findings.
- **Archive** retains historical material when it is deliberately archived.
- **Templates** provide reusable document formats only.

## Migration Boundary

The legacy source files remain in [`Mods/ThelianIndustries/plans/`](../../Mods/ThelianIndustries/plans/) and were not modified by this migration. Their information is the source input, subject to the explicit owner resolutions recorded in the migration prompt and audit.

## Status Vocabulary

Use **Planning Draft**, **Idea**, **Candidate**, **Placeholder**, **AI Draft**, **Research Needed**, **Current Proposed Direction**, **Locked Concept Direction**, **Conflict**, **Historical**, **Implemented**, and **Locked** only as supported by the relevant source or owner decision. `Implemented` requires repository or runtime verification; `Locked` requires explicit owner approval.
