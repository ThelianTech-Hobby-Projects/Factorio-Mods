# Mod Architecture

**Status: Placeholder / Planning Required**

## Current status

The current legacy Thelian Industries plans do not define the mod's source-code architecture, data-stage ownership, control-stage ownership, compatibility policy, migrations, settings strategy, or sub-mod boundaries.

No architecture is inferred in this migration. Any packaging thought in `Mods/ThelianIndustries/plans/IDEAS.md` remains an idea owned by the [Idea Backlog](../Plans/Idea_Backlog.md), not an accepted architecture decision.

## Current Implementation Evidence

**Implementation status: Partial source-tree architecture; no approved architecture decision.**

The static audit found seven manifest packages and five empty TI-named directories without manifests. `thelian-industries-core` is the only package with active gameplay data loaders; it depends on `thelian-lib` and `thelian-assets-pack1`. The core/lib wiring is source-traceable, but `ti-modpack` declares mandatory packages that are absent, unmanifested, or spelled differently from source directories. There is no control-stage source, migration system, or explicit compatibility loader in the scanned tree.

This evidence describes current files only. It does not establish an approved package architecture. See [Project Context Snapshot](../PROJECT_CONTEXT.md#3-package--mod-architecture).

## Information needed

- Owner-approved architecture and ownership boundaries.
- Explicit data-stage, control-stage, compatibility, and migration decisions.
- Evidence required to classify any documented behavior as implemented.

## Related documents

- [Repository and Mod Structure](01_Repository_and_Mod_Structure.md)
- [Coding and Data Standards](03_Coding_and_Data_Standards.md)
- [Document Authority](../DOCUMENT_AUTHORITY.md)
