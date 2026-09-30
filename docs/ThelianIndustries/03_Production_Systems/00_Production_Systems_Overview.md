# Production Systems Overview

**Status: Planning Draft**

The current planning sources provide substantive locked architecture for metallurgy and electronics. [Thelian Industries Metallurgy Plan](../Plans/InProgress%20Plans/TI_Metallurgy_Plan.md) locks metallurgy architecture through Decisions 1–8 while leaving final progression/balance, Decision 9, and Decision 10 deferred. [Thelian Industries Electronics Plan](../Plans/InProgress%20Plans/TI_Electronics_Plan.md) completes the current electronics architecture pass while deferring dependent-system, Quantum/endgame, implementation, art, and numerical-balance details. Chemistry/oil processing and recipe tables remain incomplete general domains but now carry narrow locked metallurgy/electronics interfaces; recycling remains a placeholder apart from the metallurgy remelting boundary.

Metallurgy chain and resource content is owned by [Metallurgy Processing Chains](01_Metallurgy_Processing_Chains.md). Current numeric yield rules are owned by [Metallurgy Process and Yield Rules](02_Metallurgy_Process_and_Yield_Rules.md); both identify the metallurgy plan as their current locked source. [Electronics](04_Electronics.md) owns electronics taxonomy, component use, assembly architecture, and production-machine progression; metallurgy and [Chemistry](03_Chemistry_and_Oil_Processing.md) own their respective upstream material-production concerns.

## Current Implementation Status

**Implementation status: Partial implementation / documentation missing.**

A static source audit verified three registered custom fluids (`salt-water`, `distilled-water`, and `flowing-water`) and a power-oriented dam/turbine coupling. It found no registered metallurgy, electronics, chemistry-machine, recycling, recipe, technology, resource, mining, or production-machine system. The current production planning remains authoritative for intended design; these data-stage facts do not approve or complete the planned production systems.

See [Project Context Snapshot](../PROJECT_CONTEXT.md) and the [codebase context audit](../Reviews/codebase_context_audit_2026-09-04.md) for source paths, registration conditions, and limitations.

## Provenance

- `Mods/ThelianIndustries/plans/Metallurgy-Tree.md`
- `Mods/ThelianIndustries/plans/Metallurgy_Process-Tree.md`
- `docs/ThelianIndustries/Plans/InProgress Plans/TI_Metallurgy_Plan.md` — current locked planning record.
- `Mods/ThelianIndustries/plans/electronics.md`
- [Thelian Industries Electronics Plan](../Plans/InProgress%20Plans/TI_Electronics_Plan.md) — current locked electronics planning record.
