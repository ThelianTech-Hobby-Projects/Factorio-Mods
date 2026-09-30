# Recipe Tables

**Status: Numeric tables deferred / locked architecture constraints**

The current Thelian Industries planning source contains no finalized numeric recipe table. This document reserves the canonical owner location while recording locked architectural constraints that future tables must preserve. Do not infer missing quantities, times, yields, penalties, or balance.

Future tables must preserve the locked metallurgy foundation: `2 Raw → 3 Crushed`, `2 Crushed → 3 Concentrate`, and early Bronze Feed Mix → Stone Brick Smelter → Bronze. Final per-mineral recipes, timings, unlocks, ratios, yields, and balance remain deferred; provisional implementation may use coherent 1:1-style values where no locked relationship applies.

Future Electronics tables must preserve the architecture summarized in [Electronics](04_Electronics.md) and detailed in the [Electronics decision record](../Plans/InProgress%20Plans/TI_Electronics_Plan.md), including:

- same-output recipe improvement instead of unnecessary Mk-item proliferation;
- crude and proper Phenolic PCB routes producing the same canonical board;
- improved Fiberglass/Ceramic board recipes retaining their canonical outputs;
- one Silicon Ingot, one Silicon Wafer, and `Silicon Ingot + Etching Solution → Silicon Wafer`;
- the Basic and Advanced Logic/Memory/Interface Microchip material platforms;
- the locked processor, controller, processing-board, power-supply, Memory Module, and compute-accelerator assembly architectures;
- three machine capability tiers with only narrow next-tier prototype bridges; and
- crude pre-Tier-1 bootstrap recipes and the boundary for retiring those designated routes.

Exact amounts, times, yields, crude/prototype penalties, recipe eligibility, retirement thresholds, and balance remain deferred. This page links the architecture owners rather than duplicating their full tables.

## Current Implementation Status

**Implementation status: Not Yet Implemented.**

The audit found no TI `recipe` prototypes or recipe loaders. Custom registered power items have no TI craft path, and inactive material items have no recipe or technology wiring. See [Project Context Snapshot](../PROJECT_CONTEXT.md#appendix-f--recipe-inventory).

## Provenance

`Mods/ThelianIndustries/plans/Recipie-Tables.md` (empty legacy filename)
