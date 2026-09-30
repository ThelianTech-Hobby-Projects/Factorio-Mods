# Construction and Intermediate Components

**Status: Planning Draft**

## Scope and ownership

This document owns the design-facing classification of construction and intermediate components. It does not own recipes, quantities, timings, or material-processing yield rules.

## Current planning notes

The legacy metallurgy plan identifies the following construction-component groups:

- Mechanical Parts: Copper -> Brass -> Aluminum -> Steel -> Cobalt Steel.
- Hydraulic Parts: Copper -> Brass -> Stainless Steel.
- Historical Electronic Components vocabulary: Wires, Boards, Microchips, CPUs, Power Supplies. The current locked taxonomy below supersedes this generic active summary.
- Structural Parts: Concrete, Brick, Wall Panels, Framing.

The Stage 1 plan also states that buildings use a new crafting chain and construction materials; different buildings have different requirements for construction parts, including Mechanical Parts, Hydraulic Parts, and Construction Parts (bundles of different parts).

The current [Electronics decision record](../Plans/InProgress%20Plans/TI_Electronics_Plan.md) locks the following design-facing families:

- conductors and interconnects;
- Phenolic, Fiberglass, and Ceramic PCBs;
- resistor, capacitor, diode, triode, and transistor discrete electronics;
- Silicon Ingot/Wafer and fabrication-chemistry interfaces;
- Basic and Advanced Logic/Memory/Interface Microchips;
- Logic, Memory, and Interface conventional Processors, plus a separate deferred Quantum Processor paradigm;
- Logic Control Circuit, Logic Controller, and Advanced Logic Controller;
- Processing Board and Advanced Processing Board;
- Power Supply and Advanced Power Supply;
- one Memory Module plus Compute Accelerator and Advanced Compute Accelerator; and
- the Electronic Workshop, Electromagnetic Plant, and Precision Electronics Fabricator production-machine tiers.

This taxonomy and its assembly architecture are locked. Exact quantities, building requirements, recipes, timings, and balance remain deferred.

The retained lists above are vocabulary, not a final item-granularity decision: metallurgy Decision 10 remains pending. The current metallurgy architecture also locks initial Bronze as Copper-bearing plus Tin-bearing Bronze Feed Mix smelted in the Stone Brick Smelter, not as an initial molten Blast Furnace alloy requirement. Exact forms, ratios, and recipes remain deferred.

## Related documents

- Material-production concerns: [Metallurgy Processing Chains](../03_Production_Systems/01_Metallurgy_Processing_Chains.md)
- Electronics-use and progression concerns: [Electronics](../03_Production_Systems/04_Electronics.md)
- Stage context: [Game Progression](../02_Progression_and_Worlds/00_Game_Progression.md)

## Provenance

- `Mods/ThelianIndustries/plans/Metallurgy-Tree.md`, sections 5–6
- `Mods/ThelianIndustries/plans/Metallurgy_Process-Tree.md`, sections 8–9
- `Mods/ThelianIndustries/plans/electronics.md`
- `Mods/ThelianIndustries/plans/Game-Progression-Tree.md`, Stage 1
- `docs/ThelianIndustries/Plans/InProgress Plans/TI_Metallurgy_Plan.md`, Decisions 8 and 10
- [Thelian Industries Electronics Plan](../Plans/InProgress%20Plans/TI_Electronics_Plan.md) — current electronics taxonomy and interfaces
