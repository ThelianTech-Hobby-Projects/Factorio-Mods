# Electronics

**Status: Locked architecture / dependent-system and implementation details deferred**

## Scope and authority

This document is the canonical summary of electronics-specific component use, architecture, and progression. The detailed source of truth is the [Thelian Industries Electronics Plan](../Plans/InProgress%20Plans/TI_Electronics_Plan.md), whose explicitly locked decisions supersede conflicting legacy electronics wording. It is a design record, not evidence of implementation and not a finalized balance sheet.

[Metallurgy Processing Chains](01_Metallurgy_Processing_Chains.md) owns metallic, alloy, and silicon material production. [Chemistry and Oil Processing](03_Chemistry_and_Oil_Processing.md) reserves the upstream chemical-material interfaces. Electronics owns how fabrication-ready materials are used in electronic products and assemblies.

## Current implementation status

**Implementation status: Docs Ahead of Implementation / Localization Only with unregistered scaffold.**

No TI wire, solder, PCB, circuit board, resistor, capacitor, transistor, diode, microchip, processor, power-supply, electronics machine, recipe, or technology prototype is registered. The inactive `ti-electronic-components.lua` source is behind a commented loader and contains seven duplicate `name = "n"` item tables, so it is not a viable registered implementation. English locale vocabulary is not implementation evidence.

The exact evidence and localization drift are in the [Project Context Snapshot](../PROJECT_CONTEXT.md#8-electronics-snapshot).

## Locked design model

TI uses a hybrid industrial-electronics abstraction with selective semiconductor depth. Early electronics should remain physically understandable; later production introduces deeper semiconductor capability without representing every real fabrication step as an inventory item. Improved processes may create the same canonical output more efficiently instead of forcing unnecessary quality-tier SKUs.

Control electronics and processing/computing electronics are separate functional branches. A controller runs a machine; a processing board supplies general computation. Higher assemblies may use both.

## Locked material and component families

### Conductors and solder

- Explicit wire families are Copper Wire, Aluminum Wire, Steel Wire, and Gold Wire.
- Insulated wire exists for Copper, Aluminum, and Gold; Steel has no insulated-wire family.
- Silver is not a general wire family. It enters advanced PCB metallization/plating before Gold enters later precision and high-reliability contacts/finishes.
- TI uses one Tin–Lead Solder family. Early production may use a solid wire/spool-style form and advanced mass production may use Molten Solder; these are delivery forms, not quality tiers.
- Exact alloy production, ratios, and process machinery remain owned by metallurgy and recipe/balance planning.

### Printed circuit boards

| Canonical family | Locked role and material direction |
| --- | --- |
| Phenolic Layered PCB (`pcb-1`) | One output spans a crude pre-Tier-1 `Plyboard + Rosin + Copper Sheet` route and a proper Tier-1 `Paper Fiberboard + Phenolic Resin + Copper Sheet` route. Copper Sheet is the conductive-layer abstraction; the wood-derived substrate plus resin is the dielectric, with no PCB-only insulator item. |
| Fiberglass Layered PCB (`pcb-2`) | `Fiberglass Placeholder` plus Epoxy Resin and a copper conductive layer. Copper is baseline; Silver then Gold enable improved recipes for the same output. The placeholder remains until the cross-system fiberglass chain is planned. |
| Ceramic Layered PCB (`pcb-3`) | Specialized high-power, high-temperature, harsh-environment, and high-reliability board; it does not automatically obsolete Fiberglass. Alumina Ceramic progresses to Aluminum Nitride Ceramic for the same PCB output; Copper/Aluminum and then Silver/Gold follow the locked conductor/finish progression. |

`PCB Etching Solution Placeholder` is a temporary name for a separate PCB-process fluid. Its final chemistry and player-facing name remain deferred to chemistry planning. Masks, developers, resist strippers, drilling consumables, plating baths, and similar PCB-process inputs remain implicit unless later cross-system planning independently justifies them.

### Discrete components

The locked early localized set is Carbon Composition Resistor, Paper Capacitor, Crystal Diode, and Vacuum Triode. The Vacuum Triode replaces the earlier generic “Basic Transistor” concept.

- Carbon Composition Resistor begins with a crude carbon/coal, clay, and copper-lead route. A later graphite/carbon-black, silica-powder, resin, and copper-lead route improves production of the same output.
- Advanced Resistor uses Ceramic, Nichrome, and termination materials. Nichrome production belongs to metallurgy.
- Paper Capacitor uses Tin Foil, Paper, Rosin, and Copper Wire leads. Advanced Capacitor uses Aluminum Foil, Paper, Electrolyte, and termination/sealing materials; its baseline does not require a separate engineered-polymer item.
- Crystal Diode begins with Lead Ore as a galena/PbS-like semiconductor abstraction, Copper Wire contacts, and Tin Sheet. A later Ceramic package improves production of the same output.
- Silicon Diode and Silicon Transistor consume fabrication-ready Silicon Wafer plus contact/package materials. Doping, lithography, oxidation, deposition, patterned etching, annealing, passivation, and related device-fabrication steps remain implicit in electronics machine capability.
- Vacuum Triode uses a Glass envelope, Carbon filament, Copper Wire, Copper Sheet/plate, and insulating support.

Small inductors, chokes, coils, and transformers are abstracted into boards and assemblies. Electronics does not define separate basic/advanced inductor or transformer item families; large magnetic equipment belongs to later electrical-machinery planning.

### Silicon and fabrication chemistry interface

- There is one canonical Silicon Ingot and one canonical Silicon Wafer.
- Improved purification yields more of the same Silicon Ingot rather than creating purity-tier ingots.
- The locked wafer-preparation abstraction is `Silicon Ingot + Etching Solution → Silicon Wafer`.
- Etching Solution is a chemistry-owned fluid abstracting sequential wafer cleaning, etching, and surface preparation using Sulfuric Acid, Hydrochloric Acid, Hydrofluoric Acid, Nitric Acid, and Hydrogen Peroxide as upstream Chemistry inputs.
- Electronics does not create separate inventory families for Photoresist, Semiconductor Dopant, Thin-Film Precursors, developers, strippers, specialty solvents, ammonium hydroxide, acetic acid, CMP slurry, semiconductor-specific process gases, multiple cleaning solutions, or Basic/Advanced Etching Solution unless another system independently establishes a broader-use material.

Exact Quartzite/silica reduction, silicon purification, chemical recipes, numerical wafer yield, and final machine ownership of wafer preparation remain outside the electronics scope.

## Locked semiconductor and assembly hierarchy

### Microchips and processors

`Microchip` is the player-facing integrated-semiconductor family term. `Micro-Circuit` is retired; `Integrated Circuit` remains technical/background terminology.

- Logic, Memory, and Interface are the three microchip functions, each with Basic and Advanced variants.
- Basic chips share a Silicon Wafer + Copper + Aluminum + Epoxy Resin platform. They do not require Germanium or Gold.
- Advanced chips remain silicon-based and use a Silicon Wafer + Copper + Gold + Ceramic platform. Silver is not part of the basic-versus-advanced chip distinction.
- Chip packaging progresses from Epoxy Resin to generic Ceramic without separate Lead Frame, Bond Wire, Mold Compound, Die Attach, package-substrate, or Chip Package inventory items.
- Conventional processors are exactly Logic Processor, Memory Processor, and Interface Processor. They are multi-chip modules built on Fiberglass boards and do not split into Basic/Advanced processor SKUs; improved recipes retain the same outputs.
- Each processor emphasizes its matching chip family while using the other chip functions as support.
- Quantum Processor is a separate future computing paradigm. Its recipe, machine chain, and endgame role remain deferred.

### Control, computing, memory, acceleration, and power

- Logic Control Circuit is the single circuit-level control item. Its early recipe uses Phenolic-era discretes; later recipes use Fiberglass, advanced discretes, and Basic chips while preserving the same output.
- Logic Controller is the mainstream machine-control assembly and uses Logic Control Circuit, Logic Processor, Interface Processor, Power Supply, and interconnect. Memory Processor is not a default requirement.
- Advanced Logic Controller is a separate high-reliability controller; there is no Advanced Logic Control Circuit SKU.
- Processing Board is the mid-game computer-class item. Advanced Processing Board is the high-end conventional computer-class item.
- Processing Board combines a Fiberglass board, all three conventional processors, Memory Module, Logic Controller, Power Supply, and support materials.
- Advanced Processing Board combines a Ceramic board, all three conventional processors, Memory Module, Compute Accelerator, Advanced Logic Controller, Advanced Power Supply, direct advanced chips, and precision support. Quantum Processor and Advanced Compute Accelerator are not baseline ingredients.
- Power Supply is a Fiberglass-board assembly using Aluminum structural/thermal material, Copper/Insulated Copper conductors, advanced discretes, solder, and enclosure materials. Advanced Power Supply moves to Ceramic board/high-reliability construction with heavier Copper, Gold precision interconnects, advanced discretes, and Advanced Logic/Interface Chips. Neither requires a complete processor/controller, and small magnetics remain implicit.
- Memory Module is one canonical item with improved recipes rather than capacity-tier SKUs. It is Memory-chip dominant, with smaller Interface-chip/support-electronics content and Copper/Gold interconnects; it does not require a complete processor, controller, or power supply.
- Compute Accelerator combines a Fiberglass board, Logic and Memory Processors, Advanced Logic/Memory/Interface Chips, Memory Module, Power Supply, and high-speed support/interconnects. It does not require a full Interface Processor or Logic Controller.
- Advanced Compute Accelerator moves that architecture to a Ceramic board, Advanced Power Supply, Advanced Processing Board, precision Gold/Copper interconnects, and high-reliability assembly. Quantum Processor is not a baseline input.
- Control Interface Module and Communication Module are removed candidates. Electronics does not add an SSD/HDD storage family.

## Locked production-machine progression

TI uses exactly three general-purpose conventional electronics capability tiers:

| Tier | Machine | Native capability |
| --- | --- | --- |
| 1 | Electronic Workshop | Phenolic-era electronics |
| 2 | Space Age Electromagnetic Plant | Phenolic, Fiberglass, conventional processors, and selected early Ceramic-era electronics as progression unlocks them |
| 3 | Precision Electronics Fabricator | All conventional electronics, including full advanced Ceramic/high-reliability production |

Higher-tier machines retain appropriate lower-tier recipes. A higher tier is not only a speed upgrade: lower machines may lack the capability for later recipes until a narrow, deliberately inefficient prototype bridge is unlocked. A previous tier may manufacture only the minimum next-tier intermediates needed to construct the first machine of the next tier; the bridge does not grant the whole next-tier catalog.

Before Tier 1, selected general-purpose machinery may provide crude, expensive recipes for the same canonical early outputs needed to construct the first Electronic Workshop. TI may retire those crude recipes after an electronics-industrialization milestone. The locked implementation direction is force-level runtime recipe-availability reconciliation, but exact machines, recipe lists, thresholds, quantities, and Lua structure remain deferred.

The current Tier 3 name remains authoritative. A possible future cross-system consolidation to “Precision Fabricator” is not a rename and is not locked.

## Deferred without reopening the locked architecture

The plan intentionally leaves exact ratios, yields, recipe times, energy use, machine speeds, module behavior, technology costs, prototype-bridge quantities, crude-recipe retirement thresholds, recipe-by-recipe machine eligibility, entity construction recipes, and art/UI work for later planning and implementation.

Fiberglass production, final PCB etchant identity, resin/acid/electrolyte chains, exact semiconductor contact/package forms, large magnetic equipment, Quantum manufacturing, and final machine-system integration are cross-system interfaces. Resolving one of them should update only the affected interface, not reopen unrelated locked electronics decisions.

## Cross-system documents and reserved links

- Metallic/alloy forms, Nichrome, solder-alloy production, Silicon Ingot, and silica-to-silicon processing: [Metallurgy Processing Chains](01_Metallurgy_Processing_Chains.md) and the [Metallurgy decision record](../Plans/InProgress%20Plans/TI_Metallurgy_Plan.md).
- Chemical materials and fluids, including Rosin, Phenolic Resin, Epoxy Resin, Electrolyte, Etching Solution, the PCB-process fluid, and the future fiberglass-treatment boundary: [Chemistry and Oil Processing](03_Chemistry_and_Oil_Processing.md). *(Reserved for a dedicated chemistry plan link when that plan is generated.)*
- Stage placement and the Early Electronics Age: [Game Progression](../02_Progression_and_Worlds/00_Game_Progression.md).
- Component taxonomy and shared intermediate boundaries: [Construction and Intermediate Components](../01_Game_Design/02_Construction_and_Intermediate_Components.md).
- Exact recipe tables and numerical balance: [Recipe Tables](06_Recipe_Tables.md) and [Gameplay Balance Research](../06_Research/02_Gameplay_Balance_Research.md).
- Technology/unlock design: [Research and Technology Design](../01_Game_Design/03_Research_and_Technology_Design.md).
- Governing cross-system research rules and deferred global-tree ownership: [Research System Foundation Plan](../Plans/InProgress%20Plans/TI_Research_System_Foundation_Plan.md).
- Electrical power context: [Power, Steam, and Early Infrastructure](../04_Gameplay_Mechanics/04_Power_Steam_and_Early_Infrastructure.md). *(Reserved for a dedicated electrical-machinery/large-magnetics plan link when that plan is generated.)*
- Forestry inputs such as wood substrate, pulp/paper, raw resin, and possible rubber: *(Reserved for a Forestry system document link when that system is planned and its owner document is generated.)*
- Conventional machine consolidation and implementation architecture: [Mod Architecture](../05_Development/00_Mod_Architecture.md). *(Reserved for a dedicated production-machine integration plan link when that plan is generated.)*
- Quantum/endgame integration: [Victory and Postgame](../02_Progression_and_Worlds/03_Victory_and_Postgame.md). *(Reserved for a dedicated Quantum/endgame manufacturing plan link when that plan is generated.)*
- Electronics art, iconography, and UI presentation: *(Reserved for an art/UI documentation link when that documentation is generated.)*

## Retained legacy context

The original dedicated legacy source contains only “Electronic Components: Wires, Boards, Microchips, CPUs, Power Supplies” plus a structural-parts list. Related Stage 1 notes describe Copper, Tin, Lead, and Wood/Stone inputs; Resistors, Capacitors, Transistors, Diodes, Integrated Circuits, Circuit Boards; and an Electronics Assembler. These notes remain provenance and early progression context. Where their generic names conflict with the locked taxonomy—especially Basic Transistor, Integrated Circuit as a player-facing family, or Electronics Assembler—the locked architecture above controls.

## Provenance

- Current detailed source of truth: [Thelian Industries Electronics Plan](../Plans/InProgress%20Plans/TI_Electronics_Plan.md).
- Historical primary source: `Mods/ThelianIndustries/plans/electronics.md`.
- Historical related source: `Mods/ThelianIndustries/plans/Game-Progression-Tree.md`, Stage 1.
