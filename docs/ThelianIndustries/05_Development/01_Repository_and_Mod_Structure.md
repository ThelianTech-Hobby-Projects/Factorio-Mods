# Repository and Mod Structure

**Status: Placeholder / Planning Required**

## Current status

The legacy planning sources do not specify an approved repository layout, package layout, module boundaries, asset organization, or ownership model. This migration does not derive those decisions from the repository contents.

The only related legacy statement is a speculative packaging thought in `Mods/ThelianIndustries/plans/IDEAS.md`; it remains non-canonical in the [Idea Backlog](../Plans/Idea_Backlog.md).

## Current Repository Evidence

**Implementation status: Partial / needs reconciliation.**

The source root presently contains seven folders with `info.json`: assets pack 1, assets pack 2 (internally named `example-mod`), core, library, post-process, utilities, and `ti-modpack`. The chemistry, compatibility, power, tectara, and voltaris folders are empty and do not contain manifests. The current aggregate modpack dependency list does not resolve from these folders. This is an implementation/package wiring observation, not a decision about the desired future repository layout.

See [Project Context Snapshot](../PROJECT_CONTEXT.md#appendix-a--mod-package-inventory).

## Information needed

- Owner-approved repository and mod-package structure.
- Boundaries and responsibilities for each maintained package.
- A process for documenting and reviewing structural changes.

## Related documents

- [Mod Architecture](00_Mod_Architecture.md)
- [Release Workflow](04_Release_Workflow.md)
- [Idea Backlog](../Plans/Idea_Backlog.md)
