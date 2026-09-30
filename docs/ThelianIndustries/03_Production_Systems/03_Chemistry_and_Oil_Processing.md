# Chemistry and Oil Processing

**Status: Incomplete general domain / locked cross-system interfaces**

The current Thelian Industries planning source contains no complete general specification for this domain yet. This document reserves the canonical documentation location while recording narrow, locked interfaces established by other systems. Do not infer unlisted synthesis chains, machines, quantities, yields, or balance.

Metallurgy establishes only a narrow interface here: basic beneficiation may use water or reused process water, and advanced beneficiation/extraction/remelting may use justified process-specific reagents, fluxes, additives, gases, or protective aids. Exact substances and recipes remain deferred.

## Locked Electronics-facing interfaces

The [Electronics decision record](../Plans/InProgress%20Plans/TI_Electronics_Plan.md) requires Chemistry to supply or eventually own:

- Rosin for crude/early natural-resin electronics;
- Phenolic Resin for proper Phenolic PCB production;
- Epoxy Resin for Fiberglass PCB production and Basic Microchip packaging;
- a Paper/Wood Pulp interface, with Sawdust only a plausible crude source rather than a locked dedicated chain;
- Electrolyte for Advanced Capacitors;
- Sulfuric Acid, Hydrochloric Acid, Hydrofluoric Acid, Nitric Acid, and Hydrogen Peroxide as upstream inputs to semiconductor Etching Solution;
- Etching Solution as a sequential wafer-cleaning, etching, and surface-preparation abstraction, not one literal mixed bath; and
- a separate literal temporary fluid named `PCB Etching Solution Placeholder`, whose final identity and player-facing name remain deferred.

Fiberglass treatment/production and Ceramic material boundaries are shared with metallurgy/material planning and remain deferred. *(Reserved for links to dedicated Chemistry, Forestry, and Ceramic/fiberglass material plans when those plans are generated.)*

Electronics does not independently require separate Photoresist, Semiconductor Dopant, Thin-Film Precursors, developers, strippers, specialty solvents, ammonium hydroxide, acetic acid, CMP slurry, semiconductor-specific process gases, multiple cleaning solutions, or Basic/Advanced Etching Solution. Another system may establish a broader-use material only through its own planning authority.

Exact synthesis routes, reagents, process machines, quantities, yields, and the final PCB-process-fluid identity remain deferred. See [Electronics](04_Electronics.md) for the consuming architecture and [Metallurgy Processing Chains](01_Metallurgy_Processing_Chains.md) for metallic and silicon material ownership.

## Current Implementation Status

**Implementation status: Partial implementation / documentation missing.**

The core data loader registers `salt-water`, `distilled-water`, and `flowing-water`; it also changes base water and crude-oil fuel values. `flowing-water` is used by the registered hydro-turbine prototype, while salt and distilled water have no producer or consumer found. No chemical plant, refinery, gas, acid, custom chemistry recipe, or oil-processing chain is registered. This is verified current source evidence, not a complete chemistry design.

See [Project Context Snapshot](../PROJECT_CONTEXT.md#9-chemistry--oil--fluids-snapshot).

## Provenance

`Mods/ThelianIndustries/plans/Chemistry_Oil-Processing.md` (empty)

Cross-system interface source: [Thelian Industries Electronics Plan](../Plans/InProgress%20Plans/TI_Electronics_Plan.md)
