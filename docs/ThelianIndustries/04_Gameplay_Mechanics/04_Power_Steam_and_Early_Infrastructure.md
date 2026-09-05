# Power, Steam, and Early Infrastructure

**Status: Idea / Candidate — No Canonical System Specification**

## Current status

The legacy planning source records early power, steam, and infrastructure concepts in `Mods/ThelianIndustries/plans/IDEAS.md` as ideas. It does not provide approved equipment definitions, temperatures, recipes, progression gates, performance values, or implementation evidence.

The [Idea Backlog](../Plans/Idea_Backlog.md) remains authoritative for the proposals. This reserved page does not define a power system or infer missing behavior.

## Current Implementation Status

**Implementation status: Prototype Defined and Registered; normal player reachability and runtime verification absent.**

With the three power-overhaul startup settings at their default enabled values, the core data stage registers 23 paired power items/entities: eight transmission/area poles, six boilers, four steam engines/turbines, three heat exchangers, and two hydro assets. The same code registers `flowing-water` and couples it to the hydro dam/turbine definitions. No TI recipes or technologies make these items obtainable through the current TI progression.

This is implementation evidence, not an owner-approved replacement for the planning/backlog concepts or their future balance. Exact source paths, settings gates, and data values are documented in [Project Context Snapshot](../PROJECT_CONTEXT.md#13-power--infrastructure-snapshot) and the [codebase context audit](../Reviews/codebase_context_audit_2026-09-04.md).

## Related documents

- [Idea Backlog](../Plans/Idea_Backlog.md)
- [Gameplay Balance Research](../06_Research/02_Gameplay_Balance_Research.md)
- [Game Progression](../02_Progression_and_Worlds/00_Game_Progression.md)
