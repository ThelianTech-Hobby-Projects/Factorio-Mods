# Development Documentation

**Status: Placeholder / Planning Required**

This folder reserves the canonical documentation locations for how Thelian Industries is developed. The legacy planning sources do not define a mod architecture, repository structure, testing strategy, coding/data standards, or release workflow.

The metallurgy decision record does establish a narrow development sequence: define architecture/content, implement items/fluids/entities/machines, connect provisional recipes/technologies, verify the system end-to-end in-game, then refine progression and balance through iterative playtesting. This does not fill the broader development-documentation gaps.

The electronics decision record adds narrow implementation constraints: preserve the three machine capability tiers, use only limited next-tier prototype bridges, bootstrap Tier 1 through designated crude recipes, and reconcile force-level recipe availability when those crude routes retire. Exact code architecture, recipes, thresholds, statistics, and balance remain open; these constraints do not fill the broader development-documentation gaps.

The [Research System Foundation](../Plans/InProgress%20Plans/TI_Research_System_Foundation_Plan.md) establishes constraints for later development and QA: apply research outcomes to force knowledge or capability coherently; assess mandatory-progression bootstrap viability case by case; keep information-acquisition state distinct from underlying world state where used; and integrate force-level transitions intentionally. It does not define Lua architecture or make research behavior implemented.

No source-code architecture or implementation status is inferred during this documentation-only migration. The pages below identify missing planning work, not accepted engineering decisions.

## Documents

| Document | Current status | Purpose |
| --- | --- | --- |
| [Mod Architecture](00_Mod_Architecture.md) | Placeholder / Planning Required | Reserve architecture ownership without inferring one. |
| [Repository and Mod Structure](01_Repository_and_Mod_Structure.md) | Placeholder / Planning Required | Reserve repository and package-structure planning. |
| [Testing and QA Plan](02_Testing_and_QA_Plan.md) | Placeholder / Planning Required | Reserve verification-planning ownership. |
| [Coding and Data Standards](03_Coding_and_Data_Standards.md) | Placeholder / Planning Required | Reserve development-standard ownership. |
| [Release Workflow](04_Release_Workflow.md) | Placeholder / Planning Required | Reserve release-process ownership. |

## Provenance

The legacy source set is limited to design and planning files under `Mods/ThelianIndustries/plans/`. `IDEAS.md` includes a speculative sub-mod packaging thought, but it remains owned by the [Idea Backlog](../Plans/Idea_Backlog.md) and is not an architecture decision.

## Related documents

- [Document Authority](../DOCUMENT_AUTHORITY.md)
- [Project Plan](../00_Project/03_Project_Plan.md)
- [Technical Feasibility Research](../06_Research/01_Technical_Feasibility_Research.md)
- [Thelian Industries Metallurgy Plan](../Plans/InProgress%20Plans/TI_Metallurgy_Plan.md)
- [Thelian Industries Electronics Plan](../Plans/InProgress%20Plans/TI_Electronics_Plan.md)
- [Thelian Industries Research System Foundation Plan](../Plans/InProgress%20Plans/TI_Research_System_Foundation_Plan.md)
