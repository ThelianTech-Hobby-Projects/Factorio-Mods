# Metallurgy Process and Yield Rules

**Status: Planning Draft**

## Scope and authority

This document owns the current planned metallurgy yield scaling, yield multipliers, and numeric process-yield relationships. Per owner resolution TI-CONFLICT-001, `Metallurgy_Process-Tree.md` is the newer authoritative source for these concerns.

For chains, resources, materials, components, and planetary-resource notes, see [Metallurgy Processing Chains](01_Metallurgy_Processing_Chains.md).

**Current locked update (2026-09-07):** [Thelian Industries Metallurgy Plan](../Plans/InProgress%20Plans/TI_Metallurgy_Plan.md), Decision 2, supersedes the older universal concentrate and advanced-machine yield assumptions where they conflict. The retained historical table and context below are preserved for provenance; they are not the current numeric authority.

## Locked recovery semantics

| State / route | Current locked baseline |
| --- | ---: |
| Raw Ore | 1.00× cumulative |
| `2 Raw Ore → 3 Crushed Ore` | 1.50× local and cumulative |
| `2 Crushed Ore → 3 Concentrate` | 1.50× local; 2.25× cumulative |
| Baseline extraction from Raw / Crushed / Concentrate | 1.00× / 1.50× / 2.25× final |
| Advanced beneficiation or extraction | Variable only when an explicit mineral/process recipe justifies it |
| Eligible metal, ingot, or part → molten remelting | 0.95× baseline; hard cap 0.99× |

Final recovery is `Prepared-Material Recovery × Recipe Extraction Factor`; a simple full-conversion recipe can use a 1.00 extraction factor. Advanced furnaces do not receive a universal recovery multiplier. Throughput changes time, not material ratio.

Fluxes, reagents, additives, and byproducts are process-specific. Slag does not automatically mean lost primary metal, and the locked 5% remelting loss is not a mandatory "universal slag" output. Foundational implementation may use coherent placeholder values where the architecture does not prescribe a number, but those values are not final balance.

### Historical table retained below

The following pre-lock table is retained to preserve the migration record. Its `WashPlant → Smelter = 3.0×` and Foundry-wide `1.5× / 3.0× / 4.5×` values are superseded by the locked table above.

## Universal yield scaling

| Stage | Yield multiplier |
| --- | --- |
| Ore -> Smelter | 1.0x |
| Crushed -> Smelter | 1.5x |
| WashPlant -> Smelter | 3.0x |
| Ore -> Foundry | 1.5x |
| Crushed -> Foundry | 3.0x |
| Concentrate -> Foundry | 4.5x |
| Remelt Ingots -> Molten | 0.95x |

**Historical remelting statement:** “5% Universal Slag” is retained as source wording only; current remelting loss and byproduct semantics are defined in the locked update above.

## Historical default-byproduct table

| Process stage | Default byproducts |
| --- | --- |
| Ore Crusher | Rock Tailings, Rock Gravel |
| Wash Plant | Rock Sand, Rock Clay |
| Smelter | Optional Slag (low %) |
| Foundry | Universal Slag |

Byproduct ratios vary depending on geological composition.

## Historical fuel and energy categories

### Early Game

- Burner Smelters: Wood, Coal, Coke, Solid Fuel.
- Low efficiency.

### Mid Game

- Improved Smelters: Fuel or Electric variants.
- Moderate efficiency.

### Advanced (Foundry Tier)

- High energy requirement.
- Calcite used as Flux.
- Produces Molten Metal.

## Mining, processing, and materials context

The newer source repeats the following planning context: depletable mixed ore patches at 10k–100k total yield; rocks provide small amounts of ores, gravel, and clay; underground mining is explosives/technology-gated and uses high-yield enriched veins; and planned mining machinery spans Steam/Early Electric/Advanced surface miners, explosives/automated underground mines, and offshore rigs/deep-sea dredges.

Its metal-processing template applies to all metals and leaves the following fields open: Ore Name, Primary Composition, Planet(s) Found On, Primary End Product, and Secondary Products (if any). It lists Nauvis ores as Bituminous/Coal, Hematite/Iron, Cuprite/Copper, Cassiterite/Tin, Galena/Lead, Placer Gold/Gold, and Uraninite/Uranium; other planets should follow the same style, with `man-[metal]-ore` -> `[metal]-concentrate` variants.

The source also lists the basic ingots, the Bronze/Brass/Electrum/Constantan/Invar/Chromoly Steel/Stainless Steel/Stellite/Kovar alloys, steel and other-metal components, Mechanical Parts, Hydraulic Parts, and byproducts. Their nonnumeric material-chain ownership is consolidated in [Metallurgy Processing Chains](01_Metallurgy_Processing_Chains.md) to avoid duplicate specifications.

## Balance notes

- Building material scaling (~3–5x).
- Ore patch scaling and depletion.
- Underground mining interaction.
- Stage-based tech progression.
- Future-proofing for alloys, casting, and advanced metals.

The source characterizes this as an expandable, modular ore -> ingot -> alloy -> parts layout. It does not provide final implementation or balance decisions.

## Migration history

`Metallurgy-Tree.md` contains an older conflicting yield statement, `Ore -> Crusher -> Smelting = 2x Finished Material`. It is superseded by the locked recovery architecture above. Unique non-conflicting content from the older source is preserved in [Metallurgy Processing Chains](01_Metallurgy_Processing_Chains.md).

## Provenance

- Current authoritative numeric source: `docs/ThelianIndustries/Plans/InProgress Plans/TI_Metallurgy_Plan.md`, Decision 2.
- Historical numeric input: `Mods/ThelianIndustries/plans/Metallurgy_Process-Tree.md`.
- Historical conflicting source: `Mods/ThelianIndustries/plans/Metallurgy-Tree.md`.
