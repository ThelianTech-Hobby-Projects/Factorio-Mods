# Metallurgy Process and Yield Rules

**Status: Planning Draft**

## Scope and authority

This document owns the current planned metallurgy yield scaling, yield multipliers, and numeric process-yield relationships. Per owner resolution TI-CONFLICT-001, `Metallurgy_Process-Tree.md` is the newer authoritative source for these concerns.

For chains, resources, materials, components, and planetary-resource notes, see [Metallurgy Processing Chains](01_Metallurgy_Processing_Chains.md).

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

**Remelting Loss:** 5% Universal Slag is produced when remelting ingots or scrap.

## Standard byproducts

| Process stage | Default byproducts |
| --- | --- |
| Ore Crusher | Rock Tailings, Rock Gravel |
| Wash Plant | Rock Sand, Rock Clay |
| Smelter | Optional Slag (low %) |
| Foundry | Universal Slag |

Byproduct ratios vary depending on geological composition.

## Fuel and energy categories

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

`Metallurgy-Tree.md` contains an older conflicting yield statement, `Ore -> Crusher -> Smelting = 2x Finished Material`. It is superseded for this concern by the `Crushed -> Smelter = 1.5x` rule above, as directed by owner resolution TI-CONFLICT-001. Unique non-conflicting content from the older source is preserved in [Metallurgy Processing Chains](01_Metallurgy_Processing_Chains.md).

## Provenance

- Authoritative numeric source: `Mods/ThelianIndustries/plans/Metallurgy_Process-Tree.md`.
- Historical conflicting source: `Mods/ThelianIndustries/plans/Metallurgy-Tree.md`.
