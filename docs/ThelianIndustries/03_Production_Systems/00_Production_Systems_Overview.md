# Production Systems Overview

**Status: Planning Draft**

The current planning sources provide the most substantive material for metallurgy. [Thelian Industries Metallurgy Plan](../Plans/InProgress%20Plans/TI_Metallurgy_Plan.md) locks metallurgy architecture through Decisions 1–8 while leaving final progression/balance, Decision 9, and Decision 10 deferred. Chemistry/oil processing, recycling, and recipe tables remain reserved domains except for their narrow metallurgy interfaces.

Metallurgy chain and resource content is owned by [Metallurgy Processing Chains](01_Metallurgy_Processing_Chains.md). Current numeric yield rules are owned by [Metallurgy Process and Yield Rules](02_Metallurgy_Process_and_Yield_Rules.md); both identify the metallurgy plan as their current locked source. Electronics owns the component-use/progression concern in [Electronics](04_Electronics.md); metallurgy owns their material-production concern.

## Current Implementation Status

**Implementation status: Partial implementation / documentation missing.**

A static source audit verified three registered custom fluids (`salt-water`, `distilled-water`, and `flowing-water`) and a power-oriented dam/turbine coupling. It found no registered metallurgy, electronics, chemistry-machine, recycling, recipe, technology, resource, mining, or production-machine system. The current production planning remains authoritative for intended design; these data-stage facts do not approve or complete the planned production systems.

See [Project Context Snapshot](../PROJECT_CONTEXT.md) and the [codebase context audit](../Reviews/codebase_context_audit_2026-09-04.md) for source paths, registration conditions, and limitations.

## Provenance

- `Mods/ThelianIndustries/plans/Metallurgy-Tree.md`
- `Mods/ThelianIndustries/plans/Metallurgy_Process-Tree.md`
- `docs/ThelianIndustries/Plans/InProgress Plans/TI_Metallurgy_Plan.md` — current locked planning record.
- `Mods/ThelianIndustries/plans/electronics.md`
