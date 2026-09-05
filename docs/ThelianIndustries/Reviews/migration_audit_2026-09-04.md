# Thelian Industries Migration Audit — 2026-09-04

**Status: Review Evidence**  
**Scope:** Documentation-only migration from the legacy planning set into `docs/ThelianIndustries/`.  
**Implementation verification:** Not performed by this planning migration.

## Purpose

This review records source coverage, migration authority, owner-resolved legacy conflicts, and remaining planning gaps. It does not promote planning material into implemented behavior or approve new gameplay design.

## Source Coverage

The legacy source set remains unchanged in [`Mods/ThelianIndustries/plans/`](../../../Mods/ThelianIndustries/plans/).

| Legacy source | Primary canonical destination | Source state |
| --- | --- | --- |
| `Game-Progression-Tree.md` | [02_Progression_and_Worlds/00_Game_Progression.md](../02_Progression_and_Worlds/00_Game_Progression.md) | Substantive Stage 1; skeletal Stages 2–6. |
| `Solar-System.md` | [02_Progression_and_Worlds/01_Solar_System_and_Planets.md](../02_Progression_and_Worlds/01_Solar_System_and_Planets.md) | Substantive world material; many descriptions have AI-generated labels. |
| `Metallurgy-Tree.md` | [03_Production_Systems/01_Metallurgy_Processing_Chains.md](../03_Production_Systems/01_Metallurgy_Processing_Chains.md) | Substantive metallurgy content; older yield conflict retained as superseded provenance. |
| `Metallurgy_Process-Tree.md` | [03_Production_Systems/02_Metallurgy_Process_and_Yield_Rules.md](../03_Production_Systems/02_Metallurgy_Process_and_Yield_Rules.md) | Substantive process and yield rules; authoritative for numeric yield scaling. |
| `Chemistry_Oil-Processing.md` | [03_Production_Systems/03_Chemistry_and_Oil_Processing.md](../03_Production_Systems/03_Chemistry_and_Oil_Processing.md) | Empty; placeholder required. |
| `electronics.md` | [03_Production_Systems/04_Electronics.md](../03_Production_Systems/04_Electronics.md) | Two-line component list. |
| `Recycling-Chain.md` | [03_Production_Systems/05_Recycling_and_Waste.md](../03_Production_Systems/05_Recycling_and_Waste.md) | Empty; placeholder required. |
| `Recipie-Tables.md` | [03_Production_Systems/06_Recipe_Tables.md](../03_Production_Systems/06_Recipe_Tables.md) | Empty; placeholder required; destination corrects the filename spelling. |
| `Tech-Tree.md` | [01_Game_Design/03_Research_and_Technology_Design.md](../01_Game_Design/03_Research_and_Technology_Design.md) | Empty; placeholder required. |
| `IDEAS.md` | [Plans/Idea_Backlog.md](../Plans/Idea_Backlog.md) | Substantive idea/candidate backlog; must remain non-locked. |

## Owner-Resolved Migration Items

The project owner's 2026-09-04 instructions supersede conflicting legacy wording for the following items.

| ID | Disposition | Migration handling |
| --- | --- | --- |
| TI-CONFLICT-001 | **Resolved** | `Metallurgy_Process-Tree.md` owns yield scaling and numeric multipliers. The older `2x` crushed-ore-to-smelter statement from `Metallurgy-Tree.md` is superseded provenance, not a current alternative. Unique non-conflicting older metallurgy content remains migrated. |
| TI-CONFLICT-002 | **Resolved** | `Archo Nexus` is the active locked-in planet name. `The Ark` is historical working terminology, not a separate current planet. Relevant unique postgame ideas belong in the Archo Nexus planning context with provenance. |
| TI-CONFLICT-003 | **Resolved** | Stage 5 reaches the main victory milestone at the Solar System Edge. Stage 6, including Archo Nexus, is intentionally post-victory/postgame progression. |
| TI-CONFLICT-004 | **Resolved** | Use `Aquilo` for the vanilla Space Age planet in Stage 4. No dedicated Thelian Industries Aquilo overhaul specification is present. |
| TI-CONFLICT-005 | **Partially resolved; exact allocation open** | Preserve the current planet-specific-metal direction and both Tectara/Vulcanus associations. The exact Titanium/Cobalt/Cobaltite allocation is not final; see [open questions](../00_Project/05_Open_Questions_and_Research_Log.md). |
| TI-CONFLICT-006 | **Resolved** | Normalize active documentation to `Nauvis`, `Aquilo`, and `Cassiterite`; retain legacy wording only where useful for provenance. |
| TI-CONFLICT-007 | **Resolved as conceptual range** | Keep `25k–100k` for starting-patch planning and `10k–100k` for broader/general surface mixed-ore deposits. The direction is locked conceptually; final balance values are not implemented. |
| TI-CONFLICT-008 | **Resolved** | Use shared domain ownership: metallurgy owns material production and electronics owns electronics use/progression. Use reciprocal links instead of duplicate specifications. |

## Remaining Planning Gaps

- Chemistry and oil processing, recycling and waste, recipe tables, and the dedicated technology tree have empty legacy sources.
- Electronics has only a two-line dedicated source, although Stage 1 contains related planning notes.
- Stages 2 through 6 are largely unelaborated in the progression source, except for the owner-resolved lifecycle terminology.
- The exact allocation of Titanium, Cobalt/Cobaltite, and other additional metals remains open.
- The backlog remains idea-stage and does not constitute a locked system specification.

## Migration Checks

- Legacy sources were retained and not edited.
- Empty-source destinations are reserved as placeholders rather than supplied with inferred design.
- AI-generated labels in the world source must remain visible in the world documentation.
- No new substantive ADRs were created.
- No new unresolved contradiction beyond the owner-recorded open allocation was identified during this governance migration scope.

## Related Evidence

- [Migration control prompt](../../Codex_files/thelian_industries_docs_migration_codex_prompt.md)
- [Planning audit baseline](../../Codex_files/thelian_industries_planning_audit_2026-09-04.md)
- [Document Authority](../DOCUMENT_AUTHORITY.md)
