# Metallurgy Processing Chains

**Status: Planning Draft**

## Scope and authority

This document owns metallurgy extraction, processing chains, resources, machines, materials, components, and planetary-resource notes. It does not own the current numeric yield multipliers; those are owned by [Metallurgy Process and Yield Rules](02_Metallurgy_Process_and_Yield_Rules.md).

The numeric crushed-ore statement in the older `Metallurgy-Tree.md` is historical. Current yield authority is the locked recovery architecture in the metallurgy plan; see the provenance note below.

**Current locked update (2026-09-07):** The owner-designated [Thelian Industries Metallurgy Plan](../Plans/InProgress%20Plans/TI_Metallurgy_Plan.md) is now the source of truth for metallurgy architecture through Decisions 1–8. The retained migrated material below preserves useful vocabulary and provenance, but the plan supersedes it where it conflicts. Decision 9 remains detailed-progression deferred and Decision 10 remains pending; no final recipe, unlock, timing, or balance claims should be inferred.

## Current Implementation Status

**Implementation status: Docs Ahead of Implementation.**

The audit found no registered TI resources, mining drills, crushers, wash plants, furnaces, foundries, casters, recipes, technologies, or metallurgy yield rules. Core has prototype-defined item scaffolds for ores/byproducts and ingots, but all relevant loaders in `thelian-industries-core/data.lua` are commented out; those item tables are not registered or reachable. The current code therefore does not implement a competing numeric yield rule.

Source-level scaffolds and localization vocabulary are recorded in [Project Context Snapshot](../PROJECT_CONTEXT.md#7-metallurgy-snapshot). They do not alter the planned processing chains in this document.

## Locked architecture update

The current locked conventional boundary is `Raw Ore → Ore Crusher → Crushed Ore → Wash Plant / Ore Concentrator → Concentrate → Metallurgical Extraction`. TI uses two physical Crusher generations and one Wash Plant. Mining remains extraction-only: its normal output is canonical Raw Ore plus possible unrefined excavation waste, while Crusher and Wash Plant own preparation and beneficiation. There is no universal post-concentrate stage.

The locked machine routes are `Stone Brick Smelter → Arc Furnace` for the solid-metal/ingot path and `Blast Furnace → Foundry` for the molten-metal path. The Metal Caster is one downstream casting machine, not an extraction tier. Blast Furnace alloying is limited to selected early/simple systems; advanced molten refining/alloying belongs primarily to the Foundry. Exact mineral assignments, alloy classifications, recipes, power, and throughput remain deferred.

Early Copper and Tin are sourced from Cuprite and Cassiterite. Initial Bronze uses state-matched Copper-bearing plus Tin-bearing **Bronze Feed Mix** → Stone Brick Smelter → Bronze; it does not require the technology-gated Blast Furnace or molten alloying. Ratios, item names, yields, coverage by preparation state, technology order, and output form remain deferred.

### Locked planetary primary-resource allocation

The following is the current independently generated primary-surface-resource allocation and supersedes conflicting earlier lists in this document: Nauvis—Bituminous Coal, Hematite, Cuprite, Cassiterite, Galena, Bauxite, Quartzite (Silicon / silica feed); Luna—Cinnabar, Argentite, Uraninite, Ice Fields; Vulcanus—Pyrolusite, Cobaltite, Chromite; Fulgora—Zircon, Pentlandite; Gleba—Sphalerite, Limestone/Calcite, Gold-Bearing Quartz; Pyrosauria—Carnallite, Phosphorite; Tectara—Wolframite, Ilmenite; Voltaris—Monazite, Sperrylite, Petalite (Lithium). Quartzite is quartz-dominant `SiO2`; Petalite is `LiAlSi4O10`. Gold-Bearing Quartz is the canonical Gold family; Placer Gold is only a possible future secondary/alluvial source.

### Retained material and supersession boundary

The historical machinery, planetary, alloy, component, and byproduct lists below are retained rather than removed. They are planning vocabulary and provenance, not final recipe/process assignments. In particular, older surface/underground yield language, generic mining machinery labels, mandatory Alloy Foundry routing, and planetary allocations conflict with the locked plan and must not override this update.

## Mining and ore acquisition

### Surface and underground sources

- Surface mixed ore patches are depletable and have a planned total yield of 10k–100k.
- Surface rocks provide tiny/small amounts of ores, gravel, and clay.
- Underground mining requires Explosives (also described as explosives/technology-gated), uses high-yield enriched ore veins, and is depletable/longer-lasting.

### Historical planetary extraction notes

| Planet type | Extraction method | Notes |
| --- | --- | --- |
| Rocky / Terrestrial | Standard Mining | Varied deposit richness/varied richness |
| Oceanic | Underwater Mining / Distillation | Ore patches/ores plus fluid resources/fluids |
| Volcanic | Lava Extraction | Legacy sources describe infinite metal yields and, separately, low-yield infinite metals. Exact treatment is not resolved here. |
| Icy / Cold | Terrestrial / Oceanic / Gas | Focus on liquids/fluids and chemistry |
| Gas Giant | Gas Extraction | Chemistry and energy resources |

### Mining machinery

- Surface Miners: Steam / Early Electric / Advanced.
- Underground Mines: Explosives / High-tech automated mines; also described as Explosives / Automated.
- Specialized Mining: Offshore rigs / Deep-sea dredges.

## Processing chains and machinery

### Overall chains

- Surface Miner -> 1x Ores.
- Underground Mineshaft -> 2.5x Ores.
- Ore Crusher -> Crushed Ore.
- Wash plant -> Ore Concentrates.
- Ore/Crushed Ore/Ore Concentrates -> Smelter chains/Foundry chains.
- Smelter -> Ingots -> Crafting chains.
- Foundry -> Molten Metals -> Ingots.
- Foundry -> MM -> Metal Caster -> Direct Casing Parts/Components.
- Foundry -> MM -> Alloy Foundry -> Molten Alloys -> Foundry -> Ingots.
- Alloy Foundry -> Molten Alloys -> Metal Caster -> Direct Casting Alloy Parts/Components.
- Ore Crusher -> Ore Wash Plant.

### Named machinery

- Blast Furnace / Arc Furnace / Foundry.
- Metal Caster / Electrolysis Bath.
- Gas Kiln / Electric Kiln.

## Ores and concentrates

### Nauvis

- Bituminous Ore -> Coal
- Hematite Ore -> Iron
- Cuprite Ore -> Copper
- Cassiterite Ore -> Tin
- Galena Ore -> Lead
- Placer Gold -> Gold
- Uraninite Ore -> Uranium

### Nauvis Orbit

- Carbonic Asteroids -> Carbon
- Ice Asteroids -> Water
- Ferric Asteroids -> Iron
- Cupric Asteroids -> Copper
- Silicic Asteroids -> Silicates

### Luna

- Ice Fields -> Water
- Regolith -> Stone / Silicates
- Cinnabar Ore -> Mercury

### Other current planetary lists

- Vulcanus: Bauxite Ore -> Aluminum; Pyrolusite Ore -> Manganese; Cobaltite Ore -> Cobalt.
- Fulgora: Zircon Ore -> Zirconium; Pentlandite Ore -> Nickel.
- Gleba: Sphalerite Ore -> Zinc; Argentite Ore -> Silver; Chromite Ore -> Chromium.
- Pyrosauria: Calcite Ore -> Limestone / Calcium; Carnallite Ore -> Magnesium / Potassium; Phosphorite Ore -> Phosphorus.
- Tectara: Wolframite Ore -> Tungsten; Ilmenite Ore -> Titanium.
- Voltaris: Monazite Ore -> Neodymium; Sperrylite Ore -> Platinum.

**Status: Historical migration direction — superseded by the locked allocation above**

The planetary metallurgy progression and the use of additional planet-specific metals are part of the current planning direction. The exact assignment of Titanium, Cobalt/Cobaltite, and other additional metals between Tectara, Vulcanus, and later planets has not yet been finalized for implementation.

### Crushed and concentrated ores

- `man-iron-ore` -> Crushed Hematite.
- `iron-concentrate` -> Iron Concentrate.
- The same pattern is planned for copper, tin, lead, aluminum, cobalt, zinc, titanium, silver, gold, tungsten, platinum, and other metals as stated in the source.

## Ingots and alloys

### Basic ingots

- Iron -> Pig-Iron Ingot (`iron-ingot`)
- Copper -> Copper Ingot (`copper-ingot`)
- Tin -> Tin Ingot (`tin-ingot`)
- Lead -> Lead Ingot (`lead-ingot`)
- Aluminum -> Aluminum Ingot (`aluminum-ingot`)
- Zinc -> Zinc Ingot (`zinc-ingot`)
- Silver -> Silver Ingot (`silver-ingot`)
- Gold -> Gold Ingot (`gold-ingot`)
- Titanium -> Titanium Ingot (`titanium-ingot`)
- Tungsten -> Tungsten Ingot (`tungsten-ingot`)
- Platinum -> Platinum Ingot (`platinum-ingot`)

### Alloy ingots

- Bronze -> `bronze-ingot` (Copper + Tin)
- Brass -> `brass-ingot` (Copper + Zinc)
- Electrum -> `electrum-ingot` (Gold + Silver)
- Constantan -> `constantan-ingot` (Copper + Nickel)
- Invar -> `invar-ingot` (Iron + Nickel)
- Chromoly Steel -> `chromoly-steel-ingot` (Steel + Chromium + Manganese)
- Stainless Steel -> `stainless-steel-ingot` (Steel + Chromium + Nickel)
- Stellite -> `stellite-ingot` (Cobalt + Chromium + Tungsten)
- Kovar -> `kovar-ingot` (Iron + Nickel + Cobalt)

## Metal parts and construction components

### Steel components

Axle, Ball Bearing, Bolts, Gear, Nuts, Piston, Plate, Rivet, Rod, Sheet, and Washers.

### Other metal components

- Aluminum: Rods, Plates, Gears, Heatsinks, Pistons, Pipes.
- Brass: Plates, Rods, Gears, Piping, Valves.
- Copper: Coils, Plates, Pipes, Rods, Sheets.
- Tin: Sheet, Foil, Cans.
- Titanium: Beam, Plate.
- Other metals follow similar patterns.

### Construction groups

- Mechanical Parts: Copper -> Brass -> Aluminum -> Steel -> Cobalt Steel.
- Hydraulic Parts: Copper -> Brass -> Stainless Steel.
- Electronic Components: Wires, Boards, Microchips, CPUs, Power Supplies.
- Structural Parts: Concrete, Brick, Wall Panels, Framing.

Material-production aspects belong here. Electronics-use and progression aspects are deliberately shared with [Electronics](04_Electronics.md), which links back here.

## Byproducts and planning notes

- Slag -> `slag`
- Tailings -> `rock-tailings`
- Sand -> `rock-sand`
- Clay -> `rock-clay`
- Rock Salt -> `rock-salt`
- Crushed Slag -> `rock-slag-gravel`
- Manufactured Sand/Gravel -> `rock-man-sand` / `rock-man-gravel`

The source describes the layout as a clear ore -> ingot -> alloy -> parts hierarchy, intended to be easy to expand, integrate with stage-based unlocks, remain modular/future mechanics-ready, and cross-reference metals, parts, and planets. These are planning statements, not implementation claims.

## Provenance and migration history

- Primary source: `Mods/ThelianIndustries/plans/Metallurgy-Tree.md`.
- Supporting newer source: `Mods/ThelianIndustries/plans/Metallurgy_Process-Tree.md`.
- Superseded older yield statement: `Metallurgy-Tree.md` says `Ore -> Crusher -> Smelting = 2x Finished Material`; this statement is retained as history only. The current locked plan owns yield scaling, including the 1.50× cumulative baseline after crushing.
- Related open question: the Tectara/Vulcanus additional-metal allocation is tracked in [Open Questions and Research Log](../00_Project/05_Open_Questions_and_Research_Log.md).
