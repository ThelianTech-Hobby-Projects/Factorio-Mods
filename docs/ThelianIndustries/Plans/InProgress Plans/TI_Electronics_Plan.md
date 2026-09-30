# Thelian Industries Electronics Plan

**Project:** Thelian Industries  
**System:** Electronics  
**Document type:** Current planning-state backup / decision record  
**Status:** Electronics architecture planning complete; remaining items intentionally deferred to dependent systems / implementation phases  
**Snapshot date:** 2026-09-30  
**Next unresolved decision:** None within current Electronics scope; resume only when deferred cross-system/endgame/implementation prerequisites are ready

---

## 0. Purpose and Authority

This file captures the current Electronics design state developed during the planning discussion. It is intended as a durable backup of:

- explicitly locked decisions;
- current component taxonomy;
- manufacturing abstractions;
- localized naming decisions;
- deferred Chemistry / Metallurgy / progression details;
- rejected or removed directions;
- retained future concepts;
- the exact resume/deferment state.

This is a **concept and architecture plan**, not a balance sheet or implementation-ready recipe list.

### Authority rules

1. Explicitly locked decisions in this document are authoritative for the current Electronics plan.
2. Later explicit owner-approved decisions supersede earlier scratch concepts, historical locale entries, or legacy plan vocabulary.
3. Exact ratios, crafting times, machine speeds, progression balance, and most numerical tuning remain deferred until the relevant content exists in-game.
4. Chemistry-owned materials should not be finalized here before the Chemistry system is designed.
5. Metallurgy owns metallic and silicon material forms. Electronics owns how those materials are used in electronic products and assemblies.
6. Avoid creating inventory items merely because a real-world component exists. Items should earn their place through meaningful factory, progression, or cross-system gameplay.

---


# 0.1 Consolidated Decision Register

This register is the fast-reference index for the plan. The detailed sections later in the document remain authoritative for context and rationale.

## 0.1.1 Locked Decisions

| ID | Decision | Status | Locked result |
|---|---|---|---|
| L-01 | Electronics simulation model | **LOCKED** | Hybrid industrial-electronics abstraction plus selective semiconductor-heavy simulation; represent meaningful manufacturing layers without simulating every semiconductor step. |
| L-02 | Progression philosophy | **LOCKED** | Early Electronics is physically understandable; semiconductor depth increases later; improved technologies may unlock better recipes for the same output rather than forcing extra Mk tiers. |
| L-03 | Control vs computing split | **LOCKED** | Control electronics and processing/computing electronics are distinct functional branches; higher computing assemblies may consume control assemblies when appropriate. |
| L-04 | General conductor family | **LOCKED** | Copper Wire, Aluminum Wire, Steel Wire, and Gold Wire are explicit conductor items. |
| L-05 | Insulated conductor family | **LOCKED** | Only Insulated Copper Wire, Insulated Aluminum Wire, and Insulated Gold Wire are explicit insulated wires; no Insulated Steel Wire. |
| L-06 | Conductor material roles | **LOCKED** | Copper is the general precision/low-voltage conductor; Aluminum is industrial/power-oriented; Steel is rugged/structural-electrical; Gold is precision/high-reliability. |
| L-07 | Silver conductor role | **LOCKED** | Silver is not a general wire family; reserve it for specialized PCB traces, contacts, or advanced recipe progression. |
| L-08 | Solder family | **LOCKED** | Use one solder material family rather than quality-tier solder items. |
| L-09 | Solder delivery progression | **LOCKED** | Early Electronics may use a solid solder wire/spool-style form; advanced mass production may use Molten Solder. These are delivery/process forms of the same solder family rather than quality tiers. |
| L-10 | PCB localized names | **LOCKED** | Localized names are Phenolic Layered PCB, Fiberglass Layered PCB, and Ceramic Layered PCB. |
| L-11 | PCB internal ID convention | **LOCKED** | Keep implementation IDs compact and stable, e.g. `pcb-1`, `pcb-2`, `pcb-3`; localized material names do not need to be encoded into IDs. |
| L-12 | Phenolic PCB architecture | **LOCKED** | One canonical Phenolic Layered PCB output spans a crude pre-Tier-1 board route and a proper Tier-1 laminate route. Copper Sheet remains the conductive-layer abstraction. |
| L-13 | Phenolic PCB conductor form | **LOCKED** | Use Copper Sheet as copper-clad/foil abstraction; Copper Wire is not used to create the bare PCB. |
| L-14 | Phenolic PCB dielectric abstraction | **LOCKED** | The wood-derived substrate plus resin is the dielectric laminate; no extra standalone PCB-insulator item is required solely for this board. |
| L-15 | Fiberglass PCB architecture | **LOCKED** | `Fiberglass Placeholder` + Epoxy Resin + Copper conductive layer → Fiberglass Layered PCB. `Fiberglass Placeholder` is explicitly temporary until the cross-system fiberglass production chain is designed. |
| L-16 | Fiberglass PCB noble-metal progression | **LOCKED** | Copper remains baseline; Silver enters first as advanced conductive metallization/plating, and Gold enters later as precision/high-reliability contact/finish technology. These are improved recipes for the same Fiberglass Layered PCB output. |
| L-17 | Ceramic PCB role | **LOCKED** | Ceramic Layered PCB is the specialized high-power, high-temperature, harsh-environment, high-reliability board family and does not automatically obsolete Fiberglass. |
| L-18 | Ceramic PCB layer abstraction | **LOCKED** | Ceramic Layered PCB uses Copper + Aluminum + noble-metal progression. Early Ceramic recipes use Silver as the advanced conductive/plating metal; later high-reliability recipes add Gold for precision/corrosion-resistant contact and finish functions. |
| L-19 | Early discrete localized names | **LOCKED** | `basic-resistor` = Carbon Composition Resistor; `basic-capacitor` = Paper Capacitor; `basic-diode` = Crystal Diode; `basic-transistor` = Vacuum Triode. |
| L-20 | Carbon Composition Resistor, crude recipe | **LOCKED** | Crude carbon/crushed coal + Clay + Copper leads → Carbon Composition Resistor. |
| L-21 | Carbon Composition Resistor, improved recipe | **LOCKED** | Processed graphite/carbon black + Silica Powder + Resin + Copper leads → the same Carbon Composition Resistor output. |
| L-22 | Advanced Resistor architecture | **LOCKED** | Ceramic body/substrate + Nichrome (Nickel–Chromium resistive alloy) + precision metallic terminations → Advanced Resistor. Nichrome is Metallurgy-produced. |
| L-23 | Paper item | **LOCKED** | Paper is a planned explicit TI intermediate, at minimum for Paper Capacitors and later science/research uses. |
| L-24 | Paper Capacitor architecture | **LOCKED** | Tin Foil + Paper + Rosin + Copper leads → Paper Capacitor; Rosin abstracts the early natural-resin impregnation/sealing treatment. |
| L-25 | Paper Capacitor dielectric concept | **LOCKED** | Paper is the dielectric separator and Rosin represents the early natural-resin impregnation/coating/sealing insulating treatment. |
| L-26 | Advanced Capacitor architecture | **LOCKED** | Aluminum Foil + Paper + Electrolyte + suitable termination/sealing materials → Advanced Capacitor. Aluminum-oxide dielectric formation and internal foil treatment/winding/impregnation are process abstractions; engineered Polymer is not a baseline required ingredient. |
| L-27 | Crystal Diode architecture | **LOCKED** | Lead Ore + Copper Wire contacts + Tin Sheet → crude Crystal Diode; later Lead Ore + Copper Wire contacts + Ceramic package → the same Crystal Diode output. Lead Ore abstracts a galena/PbS-like semiconductor crystal. |
| L-28 | Silicon Diode architecture | **LOCKED** | Fabrication-ready Silicon Wafer + contact/package materials → Silicon Diode. Doping, oxidation, lithography, deposition, patterned etching, annealing, passivation, and related device-fabrication chemistry remain implicit in Electronics machine capability. |
| L-29 | Vacuum Triode replaces Basic Transistor | **LOCKED** | The early transistor-role item is a Vacuum Triode rather than an early semiconductor transistor. |
| L-30 | Vacuum Triode architecture | **LOCKED** | Glass envelope + Carbon filament + Copper Wire + Copper Sheet/plate + insulating support → Vacuum Triode. |
| L-31 | Silicon Transistor architecture | **LOCKED** | Fabrication-ready Silicon Wafer + contact/package materials → Silicon Transistor. Device-fabrication chemistry remains implicit inside Electronics manufacturing capability. |
| L-32 | Inductors removed from Electronics | **LOCKED** | Remove Basic/Advanced Inductor items; small inductors, chokes, coils, and similar magnetics are abstracted into boards and assemblies. |
| L-33 | Transformers removed from Electronics | **LOCKED** | Remove Basic/Advanced Transformer items from Electronics; small transformers are abstracted into higher-level assemblies. |
| L-34 | Large magnetic systems boundary | **LOCKED** | Explicit transformers, motor/generator magnetic cores, stators, rotors, and related magnetic intermediates are deferred to Electrical Machinery / Power Systems if they earn explicit gameplay value. |
| L-35 | Microchip functional classes | **LOCKED** | Use Logic, Memory, and Interface chip families, each with Basic and Advanced variants. |
| L-36 | Microchip terminology | **LOCKED** | `Micro-Circuit` is retired; `Integrated Circuit` is technical/background terminology; `Microchip` is the player-facing family concept. |
| L-37 | Basic Microchip platform | **LOCKED** | All Basic Logic/Memory/Interface Chips use a shared early planar-Silicon fabrication platform. |
| L-38 | Basic Microchip material direction | **LOCKED** | Silicon Wafer + Copper + Aluminum + Epoxy Resin → Basic Logic/Memory/Interface Chip. Aluminum is the characteristic early IC metallization material; Copper abstracts broader conductive/contact interconnection; Epoxy Resin is the molded/plastic package abstraction. |
| L-39 | Basic Microchip material exclusions | **LOCKED** | Do not add Germanium merely to recreate the earliest historical ICs. Basic Microchips do not require Gold; semiconductor-process chemicals beyond the shared wafer-preparation Etching Solution remain implicit unless another TI system independently establishes them. |
| L-40 | Advanced Microchip platform | **LOCKED** | Advanced Logic/Memory/Interface Chips remain Silicon-based and progress through fabrication sophistication rather than changing semiconductor element. |
| L-41 | Advanced Microchip material direction | **LOCKED** | Silicon Wafer + Copper + Gold + Ceramic → Advanced Logic/Memory/Interface Chip. Copper remains the advanced primary interconnect/metallization abstraction; Gold represents precision/high-reliability contacts/bonding surfaces; Ceramic is the high-reliability package abstraction. |
| L-42 | Advanced Microchip noble metals | **LOCKED** | Gold is a required Advanced Microchip material representing precision/high-reliability contact, bonding, and corrosion-resistant interface functions. Silver is not part of the Basic→Advanced microchip distinction and remains primarily a PCB-metallization progression material. |
| L-43 | Conventional processor taxonomy | **LOCKED** | Exactly three conventional processors: Logic Processor, Memory Processor, Interface Processor. |
| L-44 | Processor tiering rule | **LOCKED** | No Basic/Advanced processor SKUs; processor progression occurs through recipe generations, better chips, and manufacturing improvements. |
| L-45 | Processor functional roles | **LOCKED** | Logic Processor is control/automation-heavy; Memory Processor is data/memory-heavy; Interface Processor is sensing/comms/I-O-heavy. |
| L-46 | Processor downstream use | **LOCKED** | Processors may be consumed directly by downstream systems and do not always need to become controllers first. |
| L-47 | Quantum Processor taxonomy | **LOCKED** | One Quantum Processor item exists as a separate later computing paradigm, not as Processor Tier 4; conventional processors remain relevant. |
| L-48 | Logic Control Circuit | **LOCKED** | One canonical populated Logic Control Circuit item; early recipes may use Phenolic/discrete electronics, later recipes may use Fiberglass/advanced components/chips while keeping the same output. |
| L-49 | Logic Controller | **LOCKED** | Logic Controller is the mainstream processor-controlled industrial controller, conceptually combining a Logic Control Circuit, Logic Processor, and supporting electronics. |
| L-50 | Controller specialization rule | **LOCKED** | Do not create Logic/Memory/Interface Controller variants automatically; Memory and Interface Processors can feed systems directly. |
| L-51 | Advanced Logic Controller | **LOCKED** | Separate high-end controller for ceramic/high-reliability/extreme-duty/space/scientific applications; no separate Advanced Logic Control Circuit SKU. |
| L-52 | Processing Board | **LOCKED** | Processing Board is the mid-game computer-class electronics item for computer-assisted machinery, industrial computing, advanced logistics, robotics/navigation, and research. |
| L-53 | Advanced Processing Board | **LOCKED** | Advanced Processing Board is the high-end/endgame computer-class electronics item for greater density, reliability, and computational capability. |
| L-54 | Controller vs Processing Board distinction | **LOCKED** | Logic Controller primarily controls machinery; Processing Board performs substantial computation. Advanced machines may require both. |
| L-55 | Power Supply | **LOCKED** | Explicit Power Supply item represents mainstream industrial power electronics. |
| L-56 | Advanced Power Supply | **LOCKED** | Explicit Advanced Power Supply item represents high-capacity/high-reliability/high-temperature/endgame power electronics. |
| L-57 | Power-supply magnetics abstraction | **LOCKED** | Internal inductors, transformers, chokes, and related small magnetics are abstracted inside Power Supply items rather than explicit Electronics SKUs. |
| L-58 | Memory Module | **LOCKED** | One Memory Module item only; no Basic/Advanced Memory Module variants. Progression comes through chips, PCB technology, and recipes. |
| L-59 | Compute Accelerator taxonomy | **LOCKED** | Use Compute Accelerator and Advanced Compute Accelerator as explicit parallel/scientific-compute abstractions. |
| L-60 | Removed interface/communication modules | **LOCKED** | Control Interface Module and Communication Module candidates are removed; their roles are covered by Interface Chips/Processor and completed assemblies. |
| L-61 | Storage-device abstraction | **LOCKED** | No separate SSD/HDD/storage-device family is currently required; Memory Chips/Processor/Module and higher assemblies cover the role. |
| L-62 | Logic Processor manufacturing architecture | **LOCKED** | Logic-heavy populated multi-chip processor module: Logic Chips + supporting Memory/Interface Chips + Fiberglass Layered PCB + supporting electronics/interconnect processing → Logic Processor. Earlier recipes may use more Basic chips/components; later recipes may use Advanced chips while retaining the same output. |
| L-63 | Memory Processor manufacturing architecture | **LOCKED** | Memory-centric populated multi-chip processor module: Memory Chips primary, with supporting Logic/Interface Chips on Fiberglass Layered PCB plus supporting electronics/interconnect processing. It represents memory management/data-intensive processing, not bulk memory capacity. |
| L-64 | Interface Processor manufacturing architecture | **LOCKED** | Interface-centric populated multi-chip processor module: Interface Chips primary, with supporting Logic/Memory Chips on Fiberglass Layered PCB plus supporting electronics/interconnect processing. It represents sensing/comms/instrumentation/industrial-I-O coordination. |
| L-65 | Quantum Processor manufacturing deferment | **LOCKED DEFERMENT** | Keep Quantum Processor taxonomy, but defer its recipe architecture, ingredients, manufacturing process, and tech chain to later endgame planning because prerequisite endgame/material/Chemistry systems are not yet sufficiently defined. |
| L-66 | Logic Control Circuit manufacturing | **LOCKED** | Early recipe uses Phenolic Layered PCB + Carbon Composition Resistor + Paper Capacitor + Crystal Diode + Vacuum Triode + Copper Wire + Solder. Later recipe may use Fiberglass Layered PCB + advanced discretes + Basic Logic Chip + wiring/solder while retaining the same output. |
| L-67 | Logic Controller manufacturing | **LOCKED** | Logic Control Circuit + Logic Processor + Interface Processor + Power Supply + supporting interconnects → Logic Controller. Memory Processor is not required by default. |
| L-68 | Advanced Logic Controller manufacturing | **LOCKED** | Ceramic Layered PCB + Logic Processor + Interface Processor + Advanced Logic/Memory/Interface Chips + advanced discretes + Advanced Power Supply + precision interconnects/solder → Advanced Logic Controller. Direct Advanced Memory Chips provide controller-level storage/buffering/state separate from processor-local memory. |
| L-69 | Processing Board manufacturing | **LOCKED** | Fiberglass Layered PCB + Logic/Memory/Interface Processors + Memory Module + Logic Controller + Power Supply + supporting electronics/interconnects → Processing Board. |
| L-70 | Advanced Processing Board manufacturing | **LOCKED** | Ceramic Layered PCB + Logic/Memory/Interface Processors + Memory Module + Compute Accelerator + Advanced Logic Controller + Advanced Power Supply + direct Advanced Logic/Memory/Interface Chips + precision supporting electronics/interconnects → Advanced Processing Board. Quantum Processor and Advanced Compute Accelerator are not baseline inputs. |
| L-71 | Power Supply manufacturing | **LOCKED** | Fiberglass Layered PCB + Aluminum structural/thermal material + Copper and Insulated Copper conductors + Advanced Capacitors + Silicon Diodes/Transistors + Advanced Resistors + solder/enclosure materials → Power Supply. Small magnetics remain implicit. |
| L-72 | Advanced Power Supply manufacturing | **LOCKED** | Ceramic Layered PCB + Aluminum thermal/structural materials + heavy Copper conductors + Copper/Insulated Copper Wire + Gold precision interconnects + advanced discretes + Advanced Logic/Interface Chips + high-reliability assembly materials → Advanced Power Supply. No complete processor/controller required; small magnetics remain implicit. |
| L-73 | Memory Module manufacturing | **LOCKED** | Fiberglass Layered PCB + Memory Chips as dominant input + smaller Interface Chip/support-electronics content + Copper/Gold interconnects + solder → Memory Module. Basic-chip and Advanced-chip recipes produce the same module; no complete processors/controllers/power supplies are required. |
| L-74 | Compute Accelerator manufacturing | **LOCKED** | Fiberglass Layered PCB + Logic Processor + Memory Processor + Advanced Logic/Memory/Interface Chips + Memory Module + Power Supply + supporting high-speed electronics/interconnects → Compute Accelerator. No full Interface Processor or Logic Controller required. |
| L-75 | Advanced Compute Accelerator manufacturing | **LOCKED** | Ceramic Layered PCB + Logic Processor + Memory Processor + Advanced Logic/Memory/Interface Chips + Memory Module + Advanced Power Supply + Advanced Processing Board + precision Gold/Copper interconnects/high-reliability assembly → Advanced Compute Accelerator. Quantum Processor is not a baseline input. |
| L-76 | Electronics production machine count/philosophy | **LOCKED** | Use three progressively capable general-purpose Electronics manufacturing machine tiers rather than many process-specific buildings. PCB fabrication, discrete assembly, semiconductor fabrication/packaging, board population, soldering, and final assembly are abstracted into these machine capability tiers. |
| L-77 | Electronics machine capability tiers | **LOCKED** | Tier 1 handles Phenolic-era Electronics; Tier 2 is the Space Age Electromagnetic Plant and handles Phenolic, Fiberglass, and selected early Ceramic-era Electronics; Tier 3 handles the complete conventional Electronics range including full advanced Ceramic/high-reliability production. Higher tiers retain appropriate lower-tier recipe capability. |
| L-78 | Prototype forward-compatibility bridge | **LOCKED** | Each lower-tier Electronics machine may unlock limited, deliberately expensive prototype recipes for the minimum next-tier boards/components needed to bootstrap construction of the next machine tier. Once the higher-tier machine is available, native recipes provide better cost/yield/throughput. |
| L-79 | Crude bootstrap and recipe retirement | **LOCKED** | Before Tier 1 exists, selected non-Electronics/general-purpose machinery may make crude expensive early Electronics components needed to bootstrap Tier 1. A craft-triggered progression milestone may then retire those crude recipes, forcing the factory onto dedicated Electronics production. Exact trigger counts and recipe sets remain deferred. |
| L-80 | Runtime enforcement of retired recipes | **LOCKED IMPLEMENTATION DIRECTION** | Recipe retirement is to be enforced with force-level runtime recipe availability control because Factorio technology effects unlock recipes but do not declaratively re-lock them. TI should reconcile retired-recipe state after relevant research/progression and configuration changes so bootstrap recipes do not reappear unintentionally. |
| L-81 | Electronics machine identities | **LOCKED** | Tier 1 Electronics machine is the **Electronic Workshop**; Tier 2 is the Space Age **Electromagnetic Plant**; Tier 3 is currently the **Precision Electronics Fabricator**. Retain a future consolidation option to rename/broaden Tier 3 to **Precision Fabricator** if other industrial systems benefit from sharing the machine. |
| L-82 | Solder alloy and ownership | **LOCKED** | Solder is a Tin–Lead alloy produced by Metallurgy. Electronics consumes the resulting solder family; retain a backup dependency note for Metallurgy if its current plan does not yet record Tin + Lead → Solder alloy production. |
| L-83 | Electronics resin ingredient progression | **LOCKED** | Rosin is the crude early natural-resin Electronics ingredient; Phenolic Resin is the developed synthetic resin for proper Phenolic PCB production; Epoxy Resin is the later synthetic/polymer resin for Fiberglass PCB production. Exact upstream Chemistry recipes remain outside Electronics. |
| L-84 | Paper and Wood Pulp interface | **LOCKED** | Paper remains an explicit early cross-system intermediate. Wood Pulp is the preferred upstream paper intermediate; Sawdust is a plausible early Wood Pulp feed/byproduct. Early Paper may use an abstracted low-yield route, with later Chemistry improving yield for the same Paper output. |
| L-85 | Crude-to-proper Phenolic PCB progression | **LOCKED** | Pre-Tier-1: Plyboard + Rosin + Copper Sheet → the canonical Phenolic Layered PCB through an expensive crude abstraction. Tier 1 Electronic Workshop: Paper Fiberboard + Phenolic Resin + Copper Sheet → the same PCB through the proper paper/wood-fiber phenolic-laminate abstraction. Copper Wire remains excluded from the bare PCB recipe. |
| L-86 | Fiberglass production placeholder | **LOCKED PLACEHOLDER** | Use the literal temporary item name **Fiberglass Placeholder** as the Electronics-side glass-fiber reinforcement input. It must be revisited and renamed/replaced once the shared Metallurgy/Chemistry fiberglass production chain and final material form are designed. |
| L-87 | Ceramic substrate progression | **LOCKED** | Alumina Ceramic is the earlier Ceramic Layered PCB substrate; Aluminum Nitride Ceramic is the later high-performance substrate used by an improved recipe for the same Ceramic Layered PCB output. Exact ceramic production remains cross-system. |
| L-88 | PCB Silver/Gold functional progression | **LOCKED** | Silver represents advanced conductive metallization/plating and enters before Gold. Gold represents later precision contacts, corrosion-resistant finishes, and high-reliability surface treatment. Neither metal creates a new PCB SKU. |
| L-89 | Nichrome resistor material | **LOCKED** | Advanced Resistor uses Nichrome, a Nickel–Chromium alloy. Nickel already exists in TI Metallurgy; Metallurgy owns Nichrome production, form, and exact alloy proportions. |
| L-90 | Advanced Capacitor material set | **LOCKED** | Advanced Capacitor uses Aluminum Foil + Paper + Electrolyte + suitable termination/sealing materials. Aluminum-oxide dielectric formation is implicit; Polymer is not a mandatory baseline ingredient. |
| L-91 | Crystal Diode packaging progression | **LOCKED** | Crude Crystal Diode uses Tin Sheet as the simple housing/package; the improved recipe replaces Tin Sheet with Ceramic while retaining the same Crystal Diode output. |
| L-92 | Silicon Ingot / Wafer architecture | **LOCKED** | Use one canonical Silicon Ingot and one canonical Silicon Wafer. Upstream purification improvements produce more of the same Silicon Ingot from the same silicon-bearing feedstock; each ingot retains a fixed wafer yield. No Basic/Advanced or purity-tier wafer SKUs. |
| L-93 | Semiconductor wafer-preparation chemistry | **LOCKED** | Silicon Ingot + Etching Solution → Silicon Wafer. Etching Solution is a Chemistry-produced abstraction from Sulfuric Acid + Hydrochloric Acid + Hydrofluoric Acid + Nitric Acid + Hydrogen Peroxide and represents sequential cleaning, oxide removal, silicon etching, surface conditioning, and final wafer preparation rather than one literal mixed bath. |
| L-94 | Semiconductor chemistry abstraction boundary | **LOCKED** | Do not add separate Photoresist, Semiconductor Dopant, Thin-Film Precursors, developers, resist strippers, specialty solvents, ammonium hydroxide, acetic acid, CMP slurry, semiconductor-specific process gases, separate cleaning solutions, or Basic/Advanced Etching Solution unless another TI system independently justifies them. Later device-fabrication chemistry remains implicit inside Electronics manufacturing. |
| L-95 | Chip packaging progression | **LOCKED** | Basic Microchips use Epoxy Resin as the molded/plastic package abstraction; Advanced Microchips use generic Ceramic as the high-reliability package abstraction. No separate Lead Frame, Bond Wire, Mold Compound, Die Attach, package-substrate, or Chip Package items. |
| L-96 | PCB fabrication chemistry placeholder | **LOCKED PLACEHOLDER** | Use one explicit PCB-process fluid with the literal temporary name **PCB Etching Solution Placeholder**. It is distinct from semiconductor Etching Solution and abstracts PCB copper etching/process chemistry. Its final chemical identity/name and Chemistry production chain are deferred; masks, developers, resist strippers, drilling consumables, plating baths, and similar PCB-process inputs remain implicit unless later cross-system planning justifies them. |

## 0.1.2 Pending and Deferred Decisions

| ID | Decision | Status | Current result / what remains unresolved |
|---|---|---|---|
| P-01 | Logic Processor architecture | **LOCKED** | Multi-chip processor-module architecture locked; exact quantities/balance remain deferred. |
| P-02 | Memory Processor architecture | **LOCKED** | Memory-centric multi-chip processor-module architecture locked; exact quantities/balance remain deferred. |
| P-03 | Interface Processor architecture | **LOCKED** | Interface-centric multi-chip processor-module architecture locked; exact quantities/balance remain deferred. |
| P-04 | Quantum Processor manufacturing | **DEFERRED TO ENDGAME PLANNING** | Recipe architecture, ingredients, manufacturing process, and tech chain intentionally deferred until endgame, Chemistry, materials, and supporting systems are better defined. |
| P-05 | Logic Control Circuit exact manufacturing | **LOCKED ARCHITECTURE** | Early Phenolic/discrete and later Fiberglass/solid-state/microchip recipe generations locked; exact ratios remain deferred. |
| P-06 | Logic Controller exact manufacturing | **LOCKED ARCHITECTURE** | Logic Control Circuit + Logic Processor + Interface Processor + Power Supply + supporting interconnects. |
| P-07 | Advanced Logic Controller exact manufacturing | **LOCKED ARCHITECTURE** | Ceramic PCB + Logic/Interface processors + direct Advanced Logic/Memory/Interface Chips + advanced discretes + Advanced Power Supply + precision interconnects. |
| P-08 | Processing Board manufacturing | **LOCKED ARCHITECTURE** | Fiberglass PCB + all three conventional processors + Memory Module + Logic Controller + Power Supply + support electronics. |
| P-09 | Advanced Processing Board manufacturing | **LOCKED ARCHITECTURE** | Ceramic PCB + all three conventional processors + Memory Module + Compute Accelerator + Advanced Logic Controller + Advanced Power Supply + direct Advanced Microchips. |
| P-10 | Power Supply manufacturing | **LOCKED ARCHITECTURE** | Fiberglass-PCB industrial power-electronics architecture locked; small magnetics remain implicit. |
| P-11 | Advanced Power Supply manufacturing | **LOCKED ARCHITECTURE** | Ceramic-PCB high-reliability digitally managed power-electronics architecture locked; small magnetics remain implicit. |
| P-12 | Memory Module manufacturing | **LOCKED ARCHITECTURE** | Fiberglass-PCB populated memory-board architecture locked; no Basic/Advanced module SKUs. |
| P-13 | Compute Accelerator manufacturing | **LOCKED ARCHITECTURE** | Fiberglass-PCB parallel/scientific compute module architecture locked. |
| P-14 | Advanced Compute Accelerator manufacturing | **LOCKED ARCHITECTURE** | Ceramic-PCB high-end compute-subsystem architecture locked; Quantum Processor excluded from baseline recipe. |
| P-15 | Electronics production machines/process architecture | **LOCKED CORE ARCHITECTURE** | Three general-purpose machine tiers, backward compatibility, prototype next-tier bridge recipes, crude pre-Tier-1 bootstrap recipes, and retirement of crude recipes after industrialization are locked. Tier 1 is the **Electronic Workshop**; Tier 2 is the **Electromagnetic Plant**; Tier 3 is currently the **Precision Electronics Fabricator**. A future consolidation to the broader name/function **Precision Fabricator** is explicitly retained if other industrial systems should share the machine. Exact recipe eligibility, construction recipes, trigger counts, and balance remain deferred. |
| P-16 | Exact solder implementation | **LOCKED MATERIAL BASIS / OWNERSHIP** | Solder is a Tin–Lead alloy made by Metallurgy. Early Electronics may use a solid solder wire/spool-style delivery form and later mass production may use Molten Solder; exact numerical recipes and metallurgy process details remain outside Electronics. |
| P-17 | Resin-based Electronics ingredients | **LOCKED ELECTRONICS INTERFACE** | Electronics consumes Rosin for crude/early natural-resin applications, Phenolic Resin for proper Phenolic PCB production, and Epoxy Resin for Fiberglass PCB production. Chemistry owns exact feedstocks, synthesis, reagents, machines, and yields. |
| P-18 | Paper production / Electronics requirement | **LOCKED ELECTRONICS INTERFACE** | Paper is required early; Wood Pulp is the preferred upstream intermediate, with Sawdust a plausible crude source. Exact manufacturing remains cross-system. Retain a future science/research note: Paper is expected to support Science Papers and a Wooden Research Desk for early non-trigger research. |
| P-19 | Phenolic wood-derived substrate / bootstrap | **LOCKED** | Crude pre-Tier-1 recipe uses Plyboard + Rosin + Copper Sheet to produce the canonical Phenolic Layered PCB at poor economics. The Electronic Workshop unlocks the proper Paper Fiberboard + Phenolic Resin + Copper Sheet recipe for the same PCB output. |
| P-20 | Fiberglass production chain | **LOCKED PLACEHOLDER / DEFERRED CHAIN** | Electronics uses **Fiberglass Placeholder** as the literal temporary reinforcement item name plus Epoxy Resin and Copper conductive material. Final fiberglass material form, production chain, ownership split, and final item name are deferred to joint Metallurgy/Chemistry planning. |
| P-21 | Advanced ceramic composition | **LOCKED MATERIAL PROGRESSION** | Alumina Ceramic is the earlier substrate; Aluminum Nitride Ceramic is the later improved substrate for the same Ceramic Layered PCB. Exact upstream ceramic production is deferred to Metallurgy/Chemistry/material-system planning. |
| P-22 | Silver/Gold PCB recipe progression | **LOCKED ARCHITECTURE** | Copper is baseline; Silver enters first for advanced conductive metallization/plating; Gold enters later for precision/high-reliability contacts and finishes. Improved recipes retain the same PCB outputs. |
| P-23 | Advanced Resistor resistive alloy | **LOCKED MATERIAL** | Use Nichrome (Nickel–Chromium alloy), produced by Metallurgy. Exact alloy proportions, forms, and metallurgy recipe remain outside Electronics. |
| P-24 | Advanced Capacitor chemistry | **LOCKED ELECTRONICS INTERFACE** | Aluminum Foil + Paper + Electrolyte + suitable termination/sealing materials. Polymer is not a baseline requirement; exact Electrolyte and sealing/termination chemistry remain deferred. |
| P-25 | Crystal Diode package progression | **LOCKED PROGRESSION** | Crude recipe uses Tin Sheet packaging; improved recipe uses Ceramic packaging for the same Crystal Diode output. Exact quantities/timing remain deferred. |
| P-26 | Silicon purification / wafer chain | **LOCKED ELECTRONICS INTERFACE** | One canonical Silicon Ingot feeds one canonical Silicon Wafer. Better upstream purification yields more of the same Silicon Ingot from the same feedstock; ingot→wafer yield remains fixed. Exact Quartzite→Silicon production and purification recipes remain Metallurgy/Chemistry-owned. |
| P-27 | Semiconductor chemistry | **LOCKED ARCHITECTURE** | Silicon Ingot + Etching Solution → Silicon Wafer; Etching Solution abstracts sequential wafer-preparation chemistry using Sulfuric Acid, Hydrochloric Acid, Hydrofluoric Acid, Nitric Acid, and Hydrogen Peroxide as Chemistry inputs. Later device-fabrication chemistry remains implicit; no separate dopant/photoresist/process-gas family is added by Electronics. |
| P-28 | Chip packaging | **LOCKED ARCHITECTURE** | Basic Microchips use Epoxy Resin packaging; Advanced Microchips use Ceramic packaging. Existing Copper/Aluminum and Copper/Gold inputs abstract lead-frame/bonding/contact requirements. No separate package subassembly items. |
| P-29 | Exact PCB fabrication process details | **LOCKED PLACEHOLDER / DEFERRED CHEMISTRY IDENTITY** | Add one explicit PCB-process fluid named **PCB Etching Solution Placeholder** for now. It is distinct from semiconductor Etching Solution. Final chemistry/name is deferred to Chemistry planning; masks, plating baths, drilling consumables, developers/strippers, and similar process inputs remain abstracted unless another system later justifies them. |
| P-30 | Electrical Machinery magnetic components | **DEFERRED TO OTHER SYSTEM** | Decide later whether explicit Transformer, Magnetic Core, Motor Stator, Motor Rotor, or related items earn a place outside Electronics. |
| P-31 | Neodymium / rare-earth magnetic uses | **DEFERRED TO OTHER SYSTEM** | Revisit for advanced motors, generators, permanent-magnet systems, or other Electrical Machinery rather than Electronics components. |
| P-32 | AI / Quantum endgame architecture | **FUTURE DESIGN** | Develop Undeveloped AI Core → training/development → Developed/Sentient AI Core concepts, possible Quantum Processor involvement, and possible AI-Integrated Quantum Processor. |
| P-33 | Semiconductor iconography | **DEFERRED** | Decide shared base art, badges/overlays, and visual differentiation for Logic/Memory/Interface/Quantum classes. |
| P-34 | Exact recipe ratios and yields | **DEFERRED** | Keep placeholder/simple ratios until content exists; balance later through in-game iteration. |
| P-35 | Crafting times and power use | **DEFERRED** | Set after machines and production chains exist. |
| P-36 | Machine speeds and module compatibility | **DEFERRED** | Define during implementation/balance phase. |
| P-37 | Progression balance and technology costs | **DEFERRED** | Do not finalize until the content foundation exists and can be tested in-game. |

### Resume priority

P-01 through P-03 and P-05 through P-29 are resolved at the Electronics architecture/interface level. P-04 remains intentionally deferred to later endgame planning; P-20 and P-29 retain explicit temporary placeholder names pending cross-system materials/Chemistry work. P-30 through P-31 are deferred to Electrical Machinery / Power Systems, P-32 to future AI/Quantum endgame design, P-33 to art/UI planning, and P-34 through P-37 to implementation/balance. **There is no remaining unresolved decision inside the current Electronics architecture scope.**

# 1. Electronics Design Philosophy

## 1.1 Electronics Simulation and Abstraction Model

**STATUS: LOCKED**

The Electronics system uses a hybrid of:

- industrial-electronics abstraction; and
- selective semiconductor-heavy simulation.

Meaningful layers are represented without simulating every real semiconductor fabrication step.

The system should include:

1. conductors and interconnects;
2. bare PCBs;
3. explicit discrete electronic components where they add gameplay value;
4. populated industrial control circuitry;
5. integrated semiconductor chips;
6. processors;
7. higher-order computing boards and assemblies.

### Progression philosophy

- Early Electronics should be comparatively simple and physically understandable.
- Semiconductor depth increases later.
- Old completed boards are not automatically consumed merely because they precede a later generation.
- Improved technologies can unlock better recipes for the **same output item**.
- Recipe progression can reduce input counts, improve yields, or substitute more advanced materials without creating unnecessary Mk2/Mk3 inventory clutter.
- The factory grind should come primarily from production chains and industrial integration, not from dozens of visually similar SKUs.

### Functional split

Electronics is divided conceptually into:

- **Control electronics**, for machine control, sequencing, automation, robotics, logistics, and industrial I/O.
- **Processing/computing electronics**, for substantial computation, data-heavy systems, advanced research, navigation, autonomy, and later high-end computing.

Processing-class assemblies may consume control-class assemblies where functionally appropriate.

---

# 2. Core Product Taxonomy

## 2.1 Conductors / Interconnects

**STATUS: LOCKED**

Core conductor families:

- Copper Wire
- Aluminum Wire
- Steel Wire
- Gold Wire

Insulated conductor variants:

- Insulated Copper Wire
- Insulated Aluminum Wire
- Insulated Gold Wire

There is **no Insulated Steel Wire** item.

### Material roles

- **Copper:** precision electronics, computing, low-voltage industrial wiring, general-purpose conductor.
- **Aluminum:** primarily medium-duty / medium-voltage industrial and power abstraction.
- **Steel:** rugged structural electrical use, reinforcement, high-voltage-class structural/electromagnetic uses. It is not treated as a superior conductor.
- **Gold:** precision, high-reliability, and advanced electronic conductor.
- **Silver:** not a general wire family. Silver is reserved as a specialized advanced Electronics material, especially for PCB traces, contacts, or advanced recipe progression.

---

## 2.2 Solder

**STATUS: LOCKED**

There is one solder material family, not multiple quality-tier solder items.

### Material basis and ownership

- Solder is a **Tin–Lead alloy**.
- The alloy itself is produced under **Metallurgy**, not Electronics.
- Electronics owns only how the solder material is consumed in electronic manufacturing.
- If the current Metallurgy plan does not yet include Tin + Lead → Solder alloy production, this Electronics plan retains that requirement as a backup cross-system dependency to add when Metallurgy is next updated.

### Delivery progression

- early hand/spot-soldering-style Electronics may consume a solid solder wire/spool-style form;
- advanced mass-manufacturing equipment may consume **Molten Solder** as a fluid;
- solid and molten forms are process/delivery forms of the same Tin–Lead solder family, not quality tiers.

Exact ratios, melting/casting details, Metallurgy machine assignments, and numerical balance remain deferred to Metallurgy/implementation planning.

---

## 2.3 Resin-Based Electronics Material Interfaces

**STATUS: LOCKED ELECTRONICS INTERFACE**

Electronics recognizes three resin-based ingredients without defining their upstream Chemistry recipes:

- **Rosin** — crude/early natural-resin material derived upstream from tree/conifer resin. Used for early Paper Capacitor treatment, crude pre-Tier-1 Phenolic PCB production, and other early resin/flux/insulation abstractions where justified.
- **Phenolic Resin** — developed synthetic resin used by the proper Tier-1 Phenolic Layered PCB process.
- **Epoxy Resin** — later synthetic/polymer resin used by Fiberglass Layered PCB production and other later applications only where justified.

Chemistry owns exact feedstocks, synthesis, reagents, machines, byproducts, and yields. Forestry/biological systems own raw tree-resin sourcing. Electronics should not create separate varnish, wax, flux, hardener, or resin-solvent inventory items solely because real manufacturing can use them unless later cross-system gameplay justifies those items.

---

# 3. PCB Family

## 3.1 Localized Names and Internal IDs

**STATUS: LOCKED**

Player-facing localized names:

- **Phenolic Layered PCB**
- **Fiberglass Layered PCB**
- **Ceramic Layered PCB**

Internal prototype IDs should remain compact and implementation-oriented, for example:

- `pcb-1`
- `pcb-2`
- `pcb-3`

The exact internal ID convention may be normalized during implementation. Full localized material names do not need to be encoded into prototype IDs.

---

## 3.2 Phenolic Layered PCB

**STATUS: LOCKED**

The **Phenolic Layered PCB** is one canonical item spanning a crude pre-Tier-1 bootstrap method and a proper Tier-1 industrial laminate process. No separate primitive PCB SKU is required.

### Pre-Tier-1 crude bootstrap recipe

```text
Plyboard
+ Rosin
+ Copper Sheet
→ Phenolic Layered PCB
```

This deliberately expensive/inefficient recipe abstracts a very early thin wooden-board circuit substrate with crude resin bonding/sealing and Copper Sheet cut, bonded, or patterned into usable conductive paths. It is a gameplay bridge, not a claim that literal plywood was the standard historical phenolic-PCB laminate.

### Tier-1 proper Phenolic PCB recipe

Once the **Electronic Workshop** is established, proper PCB manufacture is represented by:

```text
Paper Fiberboard
+ Phenolic Resin
+ Copper Sheet
+ PCB Etching Solution Placeholder
→ Phenolic Layered PCB
```

Paper Fiberboard represents the paper/wood-fiber reinforcement. Phenolic Resin represents the proper synthetic laminate binder. The Electronic Workshop abstracts impregnation, pressing, curing, copper bonding, patterning/etching, drilling, and finishing.

### Locked interpretation

- Both recipes produce the same canonical **Phenolic Layered PCB**.
- The pre-Tier-1 route is deliberately poor in material efficiency/yield; exact penalties remain deferred.
- The Tier-1 route is the realistic historical-process abstraction and should be materially/industrially superior; exact improvements remain deferred.
- Copper Sheet represents the conductive copper-clad/foil material in both generations.
- Copper Wire is **not** part of the bare PCB recipe and enters later during populated-board or assembly manufacture.
- No separate primitive wired-board inventory item is required.
- **Plyboard** is expected to be a broader woodworking/construction intermediate rather than an Electronics-only item.
- **Paper Fiberboard** is the proper cellulose/fiber laminate substrate for this PCB family.
- Later progression may retire the crude Plyboard/Rosin recipe under the locked pre-Tier-1 industrialization/recipe-retirement system.
- Exact Plyboard, Paper Fiberboard, and forestry/material production chains remain outside Electronics.

---

## 3.3 Fiberglass Layered PCB

**STATUS: LOCKED**

Conceptual baseline:

```text
Fiberglass Placeholder
+ Epoxy Resin
+ Copper conductive layer
+ PCB Etching Solution Placeholder
→ Fiberglass Layered PCB
```

### Locked temporary fiberglass interface

- **Fiberglass Placeholder** is the literal temporary item name used by Electronics planning.
- The word `Placeholder` is intentionally part of the name so the material cannot be mistaken for a finalized item.
- It represents the future glass-fiber reinforcement material required by the PCB laminate.
- The final material form, final item name, glass/fiber production steps, and exact ownership boundary are deferred until a shared **Metallurgy + Chemistry** fiberglass production chain is designed.
- Once that chain is planned, `Fiberglass Placeholder` must be replaced/renamed throughout Electronics documentation and implementation.
- **Epoxy Resin** is the locked Electronics-facing synthetic resin for this PCB generation; Chemistry owns its production.

### Conductive-material progression

- **Copper** remains the baseline conductor.
- **Silver** is the first noble-metal progression material and represents advanced conductive metallization, plating/coatings, improved current handling, and higher-performance conductive surfaces.
- **Gold** enters later and represents precision contacts, connector/pad finishing, corrosion resistance, and high-reliability surface treatment.
- A conceptual progression is Copper-only → Copper + Silver → Copper + Silver + Gold, while retaining the same **Fiberglass Layered PCB** output.
- Silver and Gold do **not** create separate PCB output items.
- Exact quantities, plating ratios, yields, and technology timing remain deferred.

---

## 3.4 Ceramic Layered PCB

**STATUS: LOCKED**

The Ceramic Layered PCB is a specialized advanced board for:

- high-power electronics;
- high-temperature environments;
- harsh industrial conditions;
- high-reliability electronics;
- space/scientific/endgame uses.

It does not automatically obsolete Fiberglass Layered PCB.

### Substrate and conductor progression

The Ceramic Layered PCB has a locked technical-ceramic substrate progression:

```text
Earlier recipe:
Alumina Ceramic
+ Copper conductive layer
+ Aluminum conductive layer
+ Silver conductive/plating layer
+ PCB Etching Solution Placeholder
→ Ceramic Layered PCB

Later improved recipe:
Aluminum Nitride Ceramic
+ Copper conductive layer
+ Aluminum conductive layer
+ Silver conductive/plating layer
+ Gold high-reliability contact/finish layer
+ PCB Etching Solution Placeholder
→ Ceramic Layered PCB
```

**Alumina Ceramic** is the earlier, accessible technical-ceramic substrate. **Aluminum Nitride Ceramic** is the later high-performance substrate emphasizing superior thermal management while retaining electrical insulation. Both recipes produce the same canonical Ceramic Layered PCB; no Mk2 board SKU is created.

Silver represents advanced conductive metallization/plating. Gold represents later precision, corrosion-resistant, high-reliability contacts and surface finishing.

Exact ceramic powders, binders, nitriding, firing/sintering, conductor stack, plating method, layer count, via technology, recipe quantities, and machine ownership remain deferred to Metallurgy/Chemistry/material-system planning.

The design represents an advanced multilayer electronic substrate, not a literal real-world stack-up specification.

---

## 3.5 PCB Fabrication Chemistry / Process Abstraction

**STATUS: LOCKED PLACEHOLDER (P-29)**

Electronics uses one explicit PCB-process fluid with the literal temporary name:

- **PCB Etching Solution Placeholder**

The word `Placeholder` is intentionally part of the temporary player-facing planning name. It must be replaced once Chemistry planning determines the actual PCB etchant/process chemistry and final localization.

This fluid is **distinct from** the semiconductor wafer-preparation **Etching Solution**. The PCB fluid represents copper-patterning / PCB-process chemistry rather than silicon-wafer cleaning and etching.

Proper Tier-1 and later PCB fabrication recipes may consume **PCB Etching Solution Placeholder**. The crude pre-Tier-1 Plyboard/Rosin Phenolic PCB route does not require it because that recipe intentionally abstracts primitive cutting/bonding/patterning rather than proper chemical PCB processing.

The Electronics machines abstract the rest of the PCB fabrication sequence, including as appropriate:

- surface preparation;
- masking / circuit patterning;
- copper etching;
- resist removal;
- drilling;
- cleaning;
- plating / finishing;
- Silver / Gold surface treatments unlocked by later recipes.

Do **not** add separate PCB-only inventory items for photoresist, developer, resist stripper, soldermask, drilling consumables, plating baths, or individual cleaning baths unless later Chemistry/material-system planning establishes a broader gameplay reason for them.

Exact chemical identity, production recipe, ratios, machine ownership, and final name for **PCB Etching Solution Placeholder** remain deferred to Chemistry planning.

---

# 4. Discrete Component Philosophy

## 4.1 Early-era naming convention

**STATUS: LOCKED**

Early / Phenolic-era components use historically descriptive **localized names**, while internal prototype IDs may remain simple generic IDs.

| Internal concept / example ID | Localized item name |
|---|---|
| `basic-resistor` | **Carbon Composition Resistor** |
| `basic-capacitor` | **Paper Capacitor** |
| `basic-diode` | **Crystal Diode** |
| `basic-transistor` | **Vacuum Triode** |

The early item names should communicate the actual technology represented rather than simply using `Basic X` as localization.

Modern/advanced items can retain simpler advanced/modern names unless later planning finds a better descriptive convention.

---

# 5. Resistor Family

## 5.1 Carbon Composition Resistor

**STATUS: LOCKED**

The early resistor represents carbon/ceramic composition resistor technology.

### Early crude recipe direction

```text
Crude carbon / crushed coal
+ Clay
+ Copper leads
→ Carbon Composition Resistor
```

Interpretation:

- crude carbon or powdered coal represents the resistive material;
- clay represents an early insulating ceramic matrix/filler;
- Copper Wire represents component leads;
- forming, firing, grinding, and assembly are abstracted by the manufacturing process.

### Improved recipe for the same output

After early Chemistry develops:

```text
Processed Graphite / Carbon Black
+ Silica Powder
+ Resin
+ Copper leads
→ Carbon Composition Resistor
```

This is still the **same output item**, not a second resistor tier.

Possible upstream directions:

- Coal → processed carbon / graphite / carbon black
- Sand → silica powder
- tree-derived or chemical resin → binder / protective material

Exact chemistry remains deferred.

---

## 5.2 Advanced Resistor

**STATUS: LOCKED**

The Advanced Resistor represents modern metal-film / engineered resistive-material technology.

Conceptual construction:

```text
Ceramic body / substrate
+ Nichrome
+ precision metallic terminations
→ Advanced Resistor
```

### Resistive material

**Nichrome** is the locked resistive material. It represents a Nickel–Chromium resistance alloy and is produced by Metallurgy. Nickel already exists in TI Metallurgy, so this decision does not introduce a metal solely for Electronics.

Possible termination/finish materials include:

- Copper terminations;
- Tin plating/soldering;
- Gold for specialized high-reliability termination if later justified.

Tantalum, ruthenium, palladium, or other resistor materials should not be added solely because real resistors can use them. Exact Nichrome proportions, alloying recipe, material form, and Metallurgy machine assignment remain deferred to Metallurgy.

---

# 6. Capacitor Family

## 6.1 Paper Capacitor

**STATUS: LOCKED**

The early capacitor represents paper-and-foil capacitor technology.

Conceptual construction:

```text
Tin Foil
+ Paper
+ Rosin
+ Copper leads
→ Paper Capacitor
```

### Material roles

- **Tin:** early conductive foil/electrode abstraction.
- **Paper:** dielectric separator.
- **Rosin:** early natural-resin impregnation, coating, sealing, and insulating-treatment abstraction.
- **Copper:** external leads.

### Paper item and upstream direction

**Paper is a planned explicit TI intermediate item.**

At minimum it has anticipated uses in:

- Paper Capacitors;
- future science/research production.

**Wood Pulp** is the preferred upstream paper intermediate. **Sawdust** is a plausible early Wood Pulp source/byproduct from plank production, tree processing, or later woodworking/construction-material chains. A crude early Paper recipe may fully abstract pulping/pressing/drying and intentionally provide poor usable yield; later Chemistry may unlock improved production for the same Paper output. Exact recipes and ownership are deferred outside Electronics.

### Future research/science integration note

Paper is expected to matter to the later research/science overhaul. Retain the concept that early non-craft-trigger research may use **Science Papers** and a **Wooden Research Desk**. This is only a cross-system dependency note here; the research system is not designed under Electronics.

### Resin-processing direction

For Electronics, the natural-resin material interface is **Rosin**. Chemistry/forestry planning will later define the raw Tree Resin collection and conversion process. Electronics does not require separate inventory items for capacitor varnish/wax solely for this use.

---

## 6.2 Advanced Capacitor

**STATUS: LOCKED**

The Advanced Capacitor uses an Aluminum-electrolytic abstraction.

Conceptual construction:

```text
Aluminum Foil
+ Paper
+ Electrolyte
+ suitable termination / sealing materials
→ Advanced Capacitor
```

### Locked interpretation

- **Aluminum Foil** provides the electrode structure.
- **Paper** remains as the separator material.
- **Electrolyte** is the explicit Chemistry-facing functional material.
- Aluminum-oxide dielectric formation is implicit in the fabrication process rather than requiring a separate Aluminum Oxide capacitor ingredient.
- Foil etching/treatment, winding, impregnation, sealing, and internal assembly are abstracted by manufacturing.
- An explicit engineered Polymer is **not** a mandatory baseline ingredient, although polymer materials may still appear elsewhere in Electronics.

The intended technology jump is:

```text
Tin Foil + Paper + Rosin
→ Paper Capacitor

Aluminum Foil + Paper + Electrolyte
→ Advanced Capacitor
```

Exact Electrolyte composition, termination materials, sealing materials, package details, quantities, and Chemistry production remain deferred.

---

# 7. Diode Family

## 7.1 Crystal Diode

**STATUS: LOCKED**

The early diode represents primitive mineral-crystal semiconductor rectification.

The Crystal Diode has two packaging generations that produce the same canonical item.

### Crude early recipe

```text
Lead Ore
+ Copper Wire contacts
+ Tin Sheet
→ Crystal Diode
```

Tin Sheet represents a simple metal cup/casing, mounting frame, contact structure, and protective housing.

### Improved recipe

```text
Lead Ore
+ Copper Wire contacts
+ Ceramic package/body
→ Crystal Diode
```

Ceramic represents the later, more stable electrically insulating package with improved heat resistance and isolation. Tin Sheet is replaced rather than automatically required alongside Ceramic.

### Shared interpretation

- Lead Ore abstracts selecting/processing a suitable lead-sulfide / galena-like semiconductor crystal.
- Copper Wire provides contact points/leads.
- A separate explicit Galena electronics item is not required.
- Exact quantities, recipe timing, package material form, and balance remain deferred.

---

## 7.2 Silicon Diode

**STATUS: LOCKED**

The advanced diode represents engineered Silicon semiconductor technology fabricated from the canonical prepared **Silicon Wafer**.

Conceptual construction:

```text
Silicon Wafer
+ contact / package materials
→ Silicon Diode
```

The Silicon Wafer is already a cleaned, etched, surface-conditioned, fabrication-ready semiconductor substrate. Doping, oxidation, lithography, deposition, patterned etching, annealing, passivation, and related device-fabrication chemistry are implicit inside the Electronics manufacturing recipe/machine rather than represented as separate inventory items.

The exact contact/package material set remains deferred where not otherwise established. No additional diode SKU is required for later fabrication improvements.

---

# 8. Transistor / Amplification Family

## 8.1 Vacuum Triode

**STATUS: LOCKED**

The early transistor-role item is **not a semiconductor transistor**.

`basic-transistor` is localized as:

**Vacuum Triode**

It represents the early amplification/switching component that predates practical semiconductor transistors.

Conceptual construction:

```text
Glass envelope
+ Carbon filament
+ Copper Wire
+ Copper Sheet / plate
+ insulating support
→ Vacuum Triode
```

This provides an early amplification/switching technology without requiring:

- Gold;
- Germanium;
- advanced Silicon purification.

The design intentionally creates a meaningful technology transition from vacuum electronics to solid-state electronics.

---

## 8.2 Silicon Transistor

**STATUS: LOCKED**

The modern transistor represents engineered Silicon semiconductor junction/device fabrication from the canonical prepared **Silicon Wafer**.

Conceptual construction:

```text
Silicon Wafer
+ contact / package materials
→ Silicon Transistor
```

The technological progression is:

```text
Vacuum Triode
→ Silicon Transistor
```

rather than:

```text
Basic Transistor
→ Advanced Transistor
```

Doping, oxidation, lithography, deposition, patterned etching, annealing, passivation, and related semiconductor-processing chemistry remain implicit inside Electronics manufacturing.

## 8.3 Shared Silicon Ingot / Wafer Platform

**STATUS: LOCKED (P-26 / P-27)**

Thelian Industries uses exactly one canonical:

- **Silicon Ingot**;
- **Silicon Wafer**.

There are no Raw/Prepared/Etched/Basic/Advanced/High-Purity wafer variants and no separate purity-tier Silicon Ingot SKUs for Electronics progression.

### Upstream purification progression

Improved Metallurgy/Chemistry purification is represented by better recipes that recover more of the **same Silicon Ingot** from the same underlying silicon-bearing feedstock:

```text
Early purification:
X silicon-bearing feedstock
→ lower yield of Silicon Ingots

Improved purification:
same X silicon-bearing feedstock
+ improved Metallurgy / Chemistry processing
→ higher yield of the SAME Silicon Ingot
```

Exact yields are deferred. This represents improved recovery, impurity removal, batch acceptance, and semiconductor-grade usable material rather than creating a second ingot item.

### Wafer-production step

```text
Silicon Ingot
+ Etching Solution
→ Silicon Wafer
```

Each Silicon Ingot has the same eventual wafer yield. The wafer-production operation abstracts ingot slicing, wafer separation, saw-damage removal, surface etching, chemical cleaning, native-oxide removal, surface conditioning, polishing/lapping as appropriate, and final semiconductor-grade wafer preparation.

The resulting **Silicon Wafer** is already fabrication-ready and is consumed by:

- Silicon Diode;
- Silicon Transistor;
- Basic Logic / Memory / Interface Chips;
- Advanced Logic / Memory / Interface Chips.

### Etching Solution

**Etching Solution** is one explicit Chemistry-produced semiconductor wafer-preparation fluid:

```text
Sulfuric Acid
+ Hydrochloric Acid
+ Hydrofluoric Acid
+ Nitric Acid
+ Hydrogen Peroxide
→ Etching Solution
```

This is a gameplay abstraction of multiple real sequential cleaning, oxide-removal, silicon-etching, and surface-treatment chemistries. It is **not** interpreted as one literal real-world bath containing all five chemicals simultaneously.

Conceptual roles:

- Sulfuric Acid + Hydrogen Peroxide → organic/resist contamination cleaning abstraction;
- Hydrochloric Acid + Hydrogen Peroxide → metallic/ionic contamination cleaning abstraction;
- Hydrofluoric Acid → silicon-dioxide/native-oxide removal;
- Hydrofluoric Acid + Nitric Acid → silicon wet-etching basis.

Exact acid-production chains, ratios, and Etching Solution recipe details remain Chemistry decisions.

### Semiconductor fabrication abstraction boundary

Do not add separate semiconductor inventory items for:

- Photoresist;
- Semiconductor Dopant;
- Thin-Film Precursors;
- developers;
- resist strippers;
- specialty solvents;
- ammonium hydroxide;
- acetic acid;
- CMP slurry;
- semiconductor-specific process gases;
- separate cleaning solutions;
- Basic/Advanced Etching Solution.

Lithography, doping/implantation/diffusion, oxidation and dielectric formation, deposition, patterned etching, resist stripping, annealing, passivation, CMP, and process-gas usage remain implicit inside Electronics manufacturing recipes/machine capability unless another TI system independently establishes one of those materials for broader use.

---

# 9. Magnetic Components and Transformers

## 9.1 Inductors

**STATUS: REMOVED FROM ELECTRONICS TAXONOMY**

Standalone:

- Basic Inductor
- Advanced Inductor

are removed.

Small inductors, chokes, wound coils, and similar magnetics are abstracted inside:

- PCBs;
- Power Supplies;
- electronic assemblies;
- other higher-level products.

The previously discussed advanced rare-earth/neodymium inductor direction is not part of Electronics.

---

## 9.2 Transformers

**STATUS: REMOVED FROM ELECTRONICS TAXONOMY**

Standalone:

- Basic Transformer
- Advanced Transformer

are also removed from the Electronics component family.

Small transformers used inside electronic devices are abstracted into higher-level assemblies.

### Deferred global use

Transformers and explicit magnetic subassemblies may still reappear later under:

- Electrical Machinery;
- Power Systems;
- motors;
- generators;
- substations;
- high-voltage equipment;
- charging systems;
- industrial power conversion;
- metallurgy machines;
- heavy industrial machinery.

Possible future intermediates may include:

- magnetic cores;
- motor stators;
- motor rotors;
- electrical transformers;
- laminated electrical steel;
- ferrites;
- rare-earth permanent-magnet systems.

### Neodymium direction

The previously discussed Neodymium/rare-earth magnetic-material concept is **retained for later Electrical Machinery / advanced motor / generator planning**, where it is more physically and gameplay-appropriate.

---

# 10. Microchip Family

## 10.1 Functional Microchip Classes

**STATUS: LOCKED**

There are three functional chip families:

- Logic Chip
- Memory Chip
- Interface Chip

Each has:

- Basic variant;
- Advanced variant.

Total:

- Basic Logic Chip
- Advanced Logic Chip
- Basic Memory Chip
- Advanced Memory Chip
- Basic Interface Chip
- Advanced Interface Chip

### Functional meanings

**Logic**
- digital logic;
- machine decisions;
- sequencing;
- automation;
- programmable control.

**Memory**
- RAM/ROM/flash/cache/storage abstraction;
- data retention and working memory.

**Interface**
- sensors;
- I/O;
- communications;
- ADC/DAC abstraction;
- instrumentation;
- telemetry;
- actuator interfaces;
- measurement/network interfaces.

`Micro-Circuit` is retired as a canonical family name.

`Integrated Circuit` is technical/background terminology.

`Microchip` is the player-facing integrated-semiconductor family concept.

---

# 11. Basic Microchip Manufacturing Platform

## 11.1 Basic Logic / Memory / Interface Chips

**STATUS: LOCKED**

All Basic Microchips use a shared **early planar-Silicon integrated-circuit platform** and the same canonical **Silicon Wafer**.

Conceptual manufacturing basis:

```text
Silicon Wafer
+ Copper
+ Aluminum
+ Epoxy Resin
→ Basic Microchip
```

The output function is determined by circuit design:

- Basic Logic Chip
- Basic Memory Chip
- Basic Interface Chip

### Locked principles

- Silicon Wafer is the common fabrication-ready semiconductor substrate.
- **Aluminum** is the characteristic early IC metallization/interconnect material.
- **Copper** represents broader conductive/contact/interconnection requirements around the chip/package.
- **Epoxy Resin** represents the molded/plastic package abstraction.
- All three Basic chip classes share the same fabrication technology.
- Logic, Memory, and Interface distinctions are architectural/function distinctions, not unrelated material systems.
- Germanium is not introduced merely to reproduce the first historical integrated circuits.
- Gold is not required for Basic Microchips.
- Doping, lithography, oxidation, dielectric formation, deposition, patterned etching, annealing, passivation, dicing, die attach, bonding, package forming, and testing are abstracted into Electronics manufacturing.
- No separate Lead Frame, Bond Wire, Mold Compound, Die Attach, package substrate, or Chip Package inventory items are required.

---

# 12. Advanced Microchip Manufacturing Platform

## 12.1 Advanced Logic / Memory / Interface Chips

**STATUS: LOCKED**

Advanced Microchips remain Silicon-based and use the same canonical **Silicon Wafer** as Basic Microchips. Their progression comes from fabrication sophistication, metallization/contact materials, machine capability, and packaging rather than a different wafer SKU.

Conceptual manufacturing basis:

```text
Silicon Wafer
+ Copper
+ Gold
+ Ceramic
→ Advanced Microchip
```

### Progression principles

- **Copper** remains the primary advanced interconnect/metallization abstraction.
- **Gold** is required as the precision/high-reliability contact, bonding, corrosion-resistant interface, and sensitive conductive-area abstraction. It does not imply that the chip's entire interconnect network is Gold.
- **Ceramic** is the generic high-reliability package/body/substrate abstraction for the completed Advanced Microchip. It is not a completed Ceramic Layered PCB.
- Silver is not part of the Basic→Advanced microchip material distinction and remains primarily a PCB metallization/plating progression material.
- All three Advanced chip classes share the same fabrication platform.
- No Advanced Silicon Wafer item is created.
- Advanced lithography, doping, dielectrics, deposition, etching, annealing, passivation, CMP, dicing, die attach, bonding, sealing, and testing remain implicit inside Electronics manufacturing.
- No separate Lead Frame, Bond Wire, Mold Compound, Die Attach, package substrate, or Chip Package items are introduced.

The material progression between chip generations is therefore readable without multiplying semiconductor substrate items:

```text
Basic:    Silicon Wafer + Copper + Aluminum + Epoxy Resin
Advanced: Silicon Wafer + Copper + Gold + Ceramic
```

---

# 13. Processor Family

## 13.1 Conventional Processor Taxonomy

**STATUS: LOCKED**

Exactly three conventional processor items exist:

- Logic Processor
- Memory Processor
- Interface Processor

There are no Basic/Advanced processor SKUs.

Processor progression should occur through:

- different recipe generations;
- better chip generations;
- better manufacturing technology;
- different chip proportions;
- improved material efficiency.

### Intended functional emphasis

**Logic Processor**
- logic/control-heavy;
- automation;
- robotics;
- sequencing;
- logistics.

**Memory Processor**
- memory/data-heavy;
- research;
- data-intensive computation;
- server-like systems.

**Interface Processor**
- interface-heavy;
- sensing;
- communications;
- instrumentation;
- industrial I/O.

Processors may be consumed directly by downstream systems. They do not always need to become a controller first.

---

# 14. Conventional Processor Manufacturing Architectures

## 14.1 Logic Processor

**STATUS: LOCKED**

The Logic Processor is a **Logic-heavy populated multi-chip processor module**, not a monolithic CPU die and not a complete computer board.

Conceptual architecture:

```text
Logic Chips
+ supporting Memory Chips
+ supporting Interface Chips
+ Fiberglass Layered PCB
+ supporting electronic components
+ solder / interconnect processing
→ Logic Processor
```

Functional weighting:

- **High:** Logic Chips;
- **Medium:** Memory Chips;
- **Low:** Interface Chips;
- **Base:** Fiberglass Layered PCB;
- **Support:** discrete/support electronics and interconnects.

Earlier recipes may use more Basic Microchips and supporting components. Later recipes may use fewer/more-integrated Advanced Microchips and improved manufacturing while retaining the same Logic Processor output.

This preserves the manufacturing hierarchy:

```text
Microchips
→ Processors
→ Controllers / Processing Boards / higher assemblies
```

## 14.2 Memory Processor

**STATUS: LOCKED**

The Memory Processor uses the same populated multi-chip module platform but is weighted toward memory-centric/data-intensive processing.

```text
Memory Chips
+ supporting Logic Chips
+ supporting Interface Chips
+ Fiberglass Layered PCB
+ supporting electronic components
+ solder / interconnect processing
→ Memory Processor
```

Functional weighting:

- **High:** Memory Chips;
- **Medium:** Logic Chips;
- **Low:** Interface Chips.

The Memory Processor represents memory handling, addressing, caching, memory management, and data-intensive computation. It is distinct from the **Memory Module**, which represents organized memory/storage capacity.

## 14.3 Interface Processor

**STATUS: LOCKED**

The Interface Processor uses the same populated multi-chip module platform but is weighted toward sensing, communications, instrumentation, telemetry, and industrial I/O.

```text
Interface Chips
+ supporting Logic Chips
+ supporting Memory Chips
+ Fiberglass Layered PCB
+ supporting electronic components
+ solder / interconnect processing
→ Interface Processor
```

Functional weighting:

- **High:** Interface Chips;
- **Medium:** Logic Chips;
- **Low:** Memory Chips.

It represents high-level coordination, conversion, routing, interpretation, and management of external-device/sensor data rather than simply being an individual I/O chip.

### Shared processor-platform rule

The three conventional processors share a common manufacturing abstraction and remain separate by **functional chip weighting and downstream role**, not by arbitrary Basic/Advanced SKU tiers. Exact ratios, crafting times, and numerical balance remain deferred.

---

# 15. Quantum Processor

## 15.1 Taxonomy

**STATUS: LOCKED**

There is one explicit:

- **Quantum Processor**

It is a separate later computing paradigm, not `Processor Tier 4`. Conventional processors remain relevant after Quantum Processor technology appears.

## 15.2 Manufacturing / Tech-Chain Deferment

**STATUS: DEFERRED TO ENDGAME PLANNING — LOCKED DEFERMENT**

Quantum Processor manufacturing, recipe architecture, ingredients, production process, and supporting technology chain are intentionally deferred.

Reason:

- the Quantum Processor belongs to a substantially different endgame crafting and technology progression than conventional Electronics;
- the project does not yet have enough endgame, materials, Chemistry, or supporting-system planning to determine an appropriate recipe;
- premature selection of Ceramic PCB, quantum-device materials, or specific quantum-computing technology would over-constrain later endgame design.

The Quantum Processor will be revisited only after the prerequisite areas of the overhaul are sufficiently designed. Previous speculative Ceramic-PCB/hybrid-quantum manufacturing proposals are **not locked recipe architecture**.

---

# 16. Control Electronics

## 16.1 Logic Control Circuit

**STATUS: LOCKED**

One canonical populated control-circuit item:

- **Logic Control Circuit**

It represents non-processor or low-level industrial electronic control.

### Early / Phenolic-era manufacturing

```text
Phenolic Layered PCB
+ Carbon Composition Resistor
+ Paper Capacitor
+ Crystal Diode
+ Vacuum Triode
+ Copper Wire
+ Solder
→ Logic Control Circuit
```

### Improved / solid-state manufacturing

```text
Fiberglass Layered PCB
+ Advanced Resistor
+ Advanced Capacitor
+ Silicon Diode
+ Silicon Transistor
+ Basic Logic Chip
+ Copper Wire
+ Solder
→ Logic Control Circuit
```

The later recipe may reduce the number of discrete components because integrated logic replaces part of the earlier discrete circuitry. The output remains the same **Logic Control Circuit**. Exact ratios remain deferred.

Simple electronic machinery may consume Logic Control Circuits directly.

## 16.2 Logic Controller

**STATUS: LOCKED**

The Logic Controller is the mainstream processor-controlled industrial controller.

```text
Logic Control Circuit
+ Logic Processor
+ Interface Processor
+ Power Supply
+ supporting interconnects
→ Logic Controller
```

Functional roles:

- Logic Control Circuit = low-level control circuitry;
- Logic Processor = programmable logic/computation;
- Interface Processor = industrial I/O and device interfacing;
- Power Supply = internal power conditioning.

A Memory Processor is not required by default. The controller remains primarily a machine-control device rather than a full computer-class system.

There are **not** separate Logic/Memory/Interface Controller variants by default.

## 16.3 Advanced Logic Controller

**STATUS: LOCKED**

The Advanced Logic Controller is a directly manufactured Ceramic-PCB-based high-reliability/extreme-duty controller. It is **not** manufactured by upgrading a normal Logic Controller, and there is no separate Advanced Logic Control Circuit SKU.

```text
Ceramic Layered PCB
+ Logic Processor
+ Interface Processor
+ Advanced Logic Chips
+ Advanced Memory Chips
+ Advanced Interface Chips
+ Advanced Resistor
+ Advanced Capacitor
+ Silicon Diode
+ Silicon Transistor
+ Advanced Power Supply
+ precision interconnects / solder
→ Advanced Logic Controller
```

Direct **Advanced Memory Chips** provide controller-level firmware/configuration storage, buffering, logging, calibration/state data, and similar functions. This is distinct from the processor-local memory already abstracted inside the Logic Processor.

The Advanced Logic Controller remains a controller rather than a computer-class Processing Board, so a full Memory Processor is not required by default.

---

# 17. Processing Boards

## 17.1 Processing Board

**STATUS: LOCKED**

The Processing Board is the mid-game computer-class Electronics assembly for computer-assisted machinery, industrial computing, advanced logistics, robotics/navigation, and research.

```text
Fiberglass Layered PCB
+ Logic Processor
+ Memory Processor
+ Interface Processor
+ Memory Module
+ Logic Controller
+ Power Supply
+ supporting advanced electronics
+ solder / interconnects
→ Processing Board
```

The Processing Board is the first conventional computer-class assembly that combines all three processor families with dedicated memory, control, I/O, and power subsystems.

It remains distinct from the Logic Controller:

- Logic Controller = machine control;
- Processing Board = substantial computation.

Advanced machinery may require both.

## 17.2 Advanced Processing Board

**STATUS: LOCKED**

The Advanced Processing Board is the high-end conventional computer-class Electronics assembly with greater density, capability, reliability, and computational sophistication.

```text
Ceramic Layered PCB
+ Logic Processor
+ Memory Processor
+ Interface Processor
+ Memory Module
+ Compute Accelerator
+ Advanced Logic Controller
+ Advanced Power Supply
+ Advanced Logic Chips
+ Advanced Memory Chips
+ Advanced Interface Chips
+ supporting advanced electronics
+ precision solder / interconnects
→ Advanced Processing Board
```

Direct Advanced Microchips provide board-level support functions such as glue logic, local buffers/cache, firmware storage, buses, networking, instrumentation, and peripheral I/O beyond the processor modules themselves.

The baseline recipe uses a **Compute Accelerator**, not an Advanced Compute Accelerator, and does **not** require Quantum Processor technology.

Ceramic Layered PCB is used here as a meaningful high-reliability/high-density substrate rather than merely as `Fiberglass Mk2`.

---

# 18. Power Supplies

## 18.1 Power Supply

**STATUS: LOCKED**

The Power Supply represents mainstream industrial power electronics.

```text
Fiberglass Layered PCB
+ Aluminum Sheet / Plate
+ Copper Wire
+ Insulated Copper Wire
+ Advanced Capacitors
+ Silicon Diodes
+ Silicon Transistors
+ Advanced Resistors
+ Solder
+ structural / enclosure materials
→ Power Supply
```

Material/function abstraction:

- Fiberglass PCB = regulation/control circuitry;
- Aluminum = chassis, heat sinking, and thermal management;
- Copper / Insulated Copper = high-current wiring, internal harnessing, and wound-component abstraction;
- Advanced Capacitors = filtering / energy storage;
- Silicon Diodes = rectification / protection;
- Silicon Transistors = switching / regulation;
- Advanced Resistors = sensing / biasing / current limiting.

A complete Logic Control Circuit or processor is not required. Small transformers, inductors, chokes, filter magnetics, and related wound components remain implicit inside the Power Supply abstraction.

## 18.2 Advanced Power Supply

**STATUS: LOCKED**

The Advanced Power Supply represents high-capacity, high-reliability, high-temperature, and endgame conventional power electronics.

```text
Ceramic Layered PCB
+ Aluminum Sheet / Plate
+ Copper Sheet
+ Copper Wire
+ Insulated Copper Wire
+ Gold Wire / precision contacts
+ Advanced Capacitors
+ Silicon Diodes
+ Silicon Transistors
+ Advanced Resistors
+ Advanced Logic Chips
+ Advanced Interface Chips
+ advanced solder / interconnect processing
+ high-reliability structural / enclosure materials
→ Advanced Power Supply
```

Advanced Logic/Interface Chips represent digital regulation, switching control, protection logic, monitoring, fault detection, telemetry, and equipment communication. A complete Logic Processor or Interface Processor is not required, and direct Advanced Memory Chips are not a baseline requirement.

Small transformers, inductors, chokes, high-frequency magnetics, and filter cores remain implicit here as well.

---

# 19. Memory Module

**STATUS: LOCKED**

One explicit item:

- **Memory Module**

There are no Basic/Advanced Memory Module variants. It is a dedicated populated memory board rather than another processor assembly.

Conceptual architecture:

```text
Fiberglass Layered PCB
+ Memory Chips
+ Interface Chips
+ supporting passive electronics
+ Copper / Gold interconnects
+ Solder
→ Memory Module
```

Memory Chips are the dominant semiconductor input. Interface Chips provide addressing, buffering, signaling, bus, and host-communication support.

Early/mid-generation recipes may use many Basic Memory Chips and Basic Interface Chips. Later recipes may use fewer Advanced Memory Chips, Advanced Interface Chips, improved contacts, and reduced supporting electronics while retaining the same output.

Complete Logic/Memory/Interface Processors, Logic Controllers, and Power Supply assemblies are not baseline ingredients.

Gold may enter later/high-reliability contact technology but is not mandatory for the earliest module recipe.

Possible uses include Processing Boards, research computing, navigation, accelerators, advanced robotics, and other data-heavy systems. Exact ratios remain deferred.

---

# 20. Compute Accelerators

## 20.1 Compute Accelerator

**STATUS: LOCKED**

The Compute Accelerator represents GPU / FPGA / vector / scientific / parallel-compute abstraction.

```text
Fiberglass Layered PCB
+ Logic Processor
+ Memory Processor
+ Advanced Logic Chips
+ Advanced Memory Chips
+ Advanced Interface Chips
+ Memory Module
+ Power Supply
+ supporting advanced electronics
+ precision interconnects / solder
→ Compute Accelerator
```

The Logic Processor supplies primary programmable/parallel execution capability; the Memory Processor handles data-intensive movement/management; Advanced Logic/Memory Chips provide dedicated execution/support/cache/buffer functions; Advanced Interface Chips provide high-bandwidth bus/interconnect support.

A full Interface Processor and Logic Controller are not baseline requirements. The standard Power Supply is used here to preserve progression room for the Advanced Compute Accelerator.

## 20.2 Advanced Compute Accelerator

**STATUS: LOCKED**

The Advanced Compute Accelerator is the high-end conventional parallel/scientific-compute subsystem.

```text
Ceramic Layered PCB
+ Logic Processor
+ Memory Processor
+ Advanced Logic Chips
+ Advanced Memory Chips
+ Advanced Interface Chips
+ Memory Module
+ Advanced Power Supply
+ Advanced Processing Board
+ precision Gold / Copper interconnects
+ high-reliability supporting electronics
+ advanced solder / assembly processing
→ Advanced Compute Accelerator
```

The Advanced Processing Board acts as the supervisory high-end conventional-computing layer, while direct Logic/Memory Processors and Advanced Microchips represent additional specialized compute engines, memory engines, scheduling/control fabric, caches/buffers, high-speed interfaces, telemetry, synchronization, and fault-detection hardware.

Quantum Processor technology is **not** part of the baseline recipe and remains separately deferred to later endgame planning.

---

# 21. Electronics Production Machine / Process Architecture

## 21.1 Core machine philosophy

**STATUS: LOCKED CORE ARCHITECTURE (P-15)**

Electronics production uses **three progressively capable general-purpose Electronics manufacturing machine tiers**, not a large set of process-specific buildings.

The system intentionally abstracts PCB fabrication, discrete-component production, semiconductor fabrication and packaging, board population, soldering, wiring/interconnect installation, electronic testing, and final Electronics assembly into the capability of these three machine tiers.

Dedicated buildings such as a separate PCB Fabricator, Semiconductor Fabricator, Soldering Machine, or Chip Packaging Machine are **not** part of the current architecture.

Tier 1 is locked as the **Electronic Workshop**. Tier 2 is locked as the **Electromagnetic Plant**. Tier 3 is currently locked as the **Precision Electronics Fabricator**. A future consolidation option is explicitly retained to broaden/rename Tier 3 to **Precision Fabricator** if later industrial-system planning shows that the same high-precision machine should serve multiple non-Electronics applications as well.

## 21.2 Tier capability model

### Tier 1 Electronics Machine — Electronic Workshop

Primary capability:

- Phenolic-era Electronics;
- early discrete components;
- Phenolic Layered PCBs;
- early populated boards and other appropriate early Electronics intermediates/assemblies.

The **Electronic Workshop** represents the first dedicated Electronics-production machine and abstracts the crude industrial processes needed for early board/component manufacture.

### Tier 2 Electronics Machine — Electromagnetic Plant

**Machine identity locked:** Factorio: Space Age **Electromagnetic Plant**.

Capability envelope:

- appropriate Tier 1 / Phenolic recipes;
- Fiberglass-era Electronics;
- semiconductor/microchip production as progression unlocks it;
- conventional processor and related mid-game Electronics production as progression unlocks it;
- selected **early Ceramic-era** Electronics where appropriate.

Machine capability does **not** itself unlock every supported recipe. Technology/research progression separately determines when each recipe becomes available.

### Tier 3 Electronics Machine — Precision Electronics Fabricator

Primary capability:

- appropriate Tier 1 recipes;
- appropriate Tier 2 recipes;
- full conventional Ceramic-era Electronics;
- highest conventional advanced/high-reliability Electronics manufacturing.

The **Precision Electronics Fabricator** is the highest-capability conventional Electronics machine but does not automatically define the separate deferred Quantum/endgame fabrication chain.

**Retained consolidation note:** the current name remains authoritative for Electronics planning, but later machine-system planning may broaden this building to **Precision Fabricator** and allow it to serve multiple advanced industrial applications that require precision fabrication. This possible consolidation is not yet a rename and does not alter the locked Tier 3 Electronics capability model.

### Nested capability rule

```text
Tier 1
└─ Phenolic-era native production

Tier 2 — Electromagnetic Plant
├─ appropriate Tier 1 production
├─ Fiberglass-era native production
└─ selected early Ceramic-era production

Tier 3 — Precision Electronics Fabricator
├─ appropriate Tier 1 production
├─ appropriate Tier 2 production
└─ full advanced Ceramic/high-reliability conventional Electronics production
```

Higher-tier machines are intentionally backward-compatible with appropriate lower-tier Electronics recipes. A higher machine is not merely a speed upgrade; some recipes are technologically unsupported in lower machines until specific prototype bridges are unlocked.

## 21.3 Recipe capability states

Electronics recipes may conceptually exist in three machine-capability states:

1. **Native recipe** — the machine tier is designed for the manufacturing technology; normal industrial cost/throughput applies.
2. **Prototype recipe** — the previous machine tier can manufacture a limited next-tier output through a deliberately expensive/slow/low-yield process.
3. **Unsupported recipe** — the machine cannot manufacture that technology at all.

Exact numerical penalties and machine eligibility remain deferred to implementation/balance.

## 21.4 Next-tier prototype bootstrap bridge

**STATUS: LOCKED**

Each lower-tier Electronics machine may receive a **narrow, deliberately inefficient prototype recipe set** for the minimum next-tier boards/components needed to bootstrap construction of the next Electronics machine tier.

The rule is:

> The previous-tier Electronics machine must be able to manufacture, through expensive prototype recipes, every next-tier Electronics intermediate strictly necessary to construct the first machine of the next tier.

The bridge is intentionally narrow. It does **not** grant the lower-tier machine the full next-era recipe catalog.

Conceptual Tier 1 → Tier 2 progression:

```text
Tier 1 machine
→ native Phenolic Electronics
→ late research unlocks expensive prototype Fiberglass boards/components
→ manufacture enough next-tier Electronics to build first Electromagnetic Plant
→ Electromagnetic Plant gains native/efficient Fiberglass production
```

Conceptual Tier 2 → Tier 3 progression:

```text
Electromagnetic Plant
→ native Fiberglass + selected early Ceramic Electronics
→ late research unlocks expensive prototype advanced Ceramic/next-tier components
→ manufacture enough next-tier Electronics to build first Precision Electronics Fabricator
→ Precision Electronics Fabricator gains native/efficient full advanced Ceramic production
```

This prevents softlocks and avoids a progression discontinuity where a next-tier machine would need materials that cannot exist until after that machine is already built.

## 21.5 Pre-Tier-1 crude Electronics bootstrap

**STATUS: LOCKED**

Before the Tier 1 Electronics machine exists, selected pre-existing/non-Electronics general-purpose machinery may receive **crude, expensive early Electronics recipes**.

Purpose:

- produce the minimum early boards/components needed to construct the first dedicated Tier 1 Electronics machines;
- establish Electronics progression without requiring a dedicated Electronics machine to manufacture the ingredients needed to build itself.

These crude recipes should normally be separate recipe prototypes that produce the same canonical item outputs as later industrial recipes. This allows crude manufacturing to be retired without disabling the proper dedicated-machine recipe for the same item.

The exact non-Electronics bootstrap machine(s), crude recipe list, material penalties, and quantities remain deferred.

## 21.6 Craft-triggered industrialization and crude-recipe retirement

**STATUS: LOCKED**

TI may use craft-triggered research/progression to retire the crude pre-Tier-1 Electronics routes after the player has manufactured a sufficient number of dedicated Tier 1 Electronics machines.

Conceptual progression:

```text
General-purpose / primitive machine
→ crude expensive Electronics
→ construct Tier 1 Electronics machines
→ craft X amount of Tier 1 Electronics machines
→ Electronics industrialization milestone completes
→ proper Tier 1 machine recipes remain available
→ old crude Electronics recipes are retired/disabled
```

This is intentionally allowed to create a temporary production crisis if the player crosses the transition before establishing adequate dedicated Electronics production. The design goal is a readable factory-transition puzzle: industrialization removes obsolete bootstrap methods and forces adaptation to the new production regime.

The exact machine-count threshold, warning/UI presentation, and specific retired recipes remain deferred to balance/implementation planning.

## 21.7 Factorio implementation direction for recipe retirement

**STATUS: LOCKED IMPLEMENTATION DIRECTION**

The recipe-retirement mechanic should be implemented through runtime force recipe-state control rather than relying on a nonexistent declarative `lock-recipe` technology effect.

Implementation principles:

- technology/progression may unlock recipes normally;
- when the industrialization milestone completes, TI runtime logic disables the designated crude recipe prototypes for that force;
- TI should maintain a small recipe-state reconciliation function so retired recipes remain disabled after relevant research events, migrations/configuration changes, or other operations that reapply technology effects;
- if testing shows already-configured crafting machines can continue a retired recipe in an undesirable way, TI may explicitly clear/disable those machine recipes during the transition;
- the canonical item outputs remain unchanged, so dedicated Electronics machines continue manufacturing the same component items through their proper recipes.

This rule is an implementation direction, not a lock on exact Lua code.

## 21.8 Solder/process compatibility

The three-machine architecture preserves the existing solder-delivery progression:

- early Electronics may use solid solder/wire/spool-style input;
- later mass production may use molten solder as a fluid;
- the Tin–Lead alloy basis is locked; exact solid-form implementation, fluid support, and which machine tiers use solid versus Molten Solder remain deferred.

No dedicated Soldering Machine is required solely to represent this progression.

## 21.9 Deferred details within the locked P-15 architecture

The following remain intentionally unresolved:

- Electronic Workshop entity implementation, art, exact recipe, and construction ingredients;
- Precision Electronics Fabricator entity implementation, art, exact recipe, and construction ingredients;
- exact recipe-category implementation and per-recipe machine eligibility;
- exact prototype bridge recipes and penalties;
- exact crude bootstrap machine(s) and recipes;
- exact Tier 1 industrialization craft-count threshold;
- exact warning/UI treatment for crude-recipe retirement;
- exact machine speeds, energy usage, module compatibility, productivity behavior, and fluidbox capabilities;
- exact solder-solid versus molten-solder transition points;
- all numerical balance.

---

# 22. Retired / Removed Candidate Items

## 22.1 Retired terminology

**STATUS: LOCKED**

- `Micro-Circuit` is retired as a canonical family.
- `Integrated Circuit` remains technical/background terminology.
- `Microchip` is the player-facing integrated-semiconductor family concept.
- `CPU` is represented under the broader Processor architecture rather than as a separate generic tier.

## 22.2 Removed candidate modules

**STATUS: LOCKED**

The following candidate items were explicitly removed:

- Control Interface Module
- Communication Module

Their functions are represented through:

- Interface Chips;
- Interface Processor;
- completed boards/controllers;
- other functional assemblies.

Do not reintroduce them unless explicitly revisited.

## 22.3 Storage devices

**STATUS: CURRENT DIRECTION**

No separate SSD/HDD/storage-device inventory family is currently required.

Memory Chips, Memory Processor, Memory Module, and higher-level computing assemblies provide sufficient abstraction unless future gameplay proves otherwise.

## 22.4 Magnetic Electronics components

Removed from Electronics:

- Basic Inductor
- Advanced Inductor
- Basic Transformer
- Advanced Transformer

Their small-device functions are abstracted. Large electrical-machine versions are deferred to another system.

---

# 23. Cross-System Ownership

Documentation owners and reserved link targets:

- Metallurgy: [Metallurgy Processing Chains](../../03_Production_Systems/01_Metallurgy_Processing_Chains.md) and [TI_Metallurgy_Plan](TI_Metallurgy_Plan.md).
- Chemistry: [Chemistry and Oil Processing](../../03_Production_Systems/03_Chemistry_and_Oil_Processing.md). *(Reserved for a dedicated Chemistry plan link when that plan is generated.)*
- Forestry / Biological Resources: *(Reserved for a Forestry system document link when that system is planned and its owner document is generated.)*
- Electronics canonical summary: [Electronics](../../03_Production_Systems/04_Electronics.md).
- Electrical Machinery / Power Systems: [Power, Steam, and Early Infrastructure](../../04_Gameplay_Mechanics/04_Power_Steam_and_Early_Infrastructure.md). *(Reserved for a dedicated Electrical Machinery plan link when that plan is generated.)*
- Technology/unlocks and recipe/balance ownership: [Research and Technology Design](../../01_Game_Design/03_Research_and_Technology_Design.md), [Recipe Tables](../../03_Production_Systems/06_Recipe_Tables.md), and [Gameplay Balance Research](../../06_Research/02_Gameplay_Balance_Research.md).
- Quantum/endgame integration: [Victory and Postgame](../../02_Progression_and_Worlds/03_Victory_and_Postgame.md). *(Reserved for a dedicated Quantum/endgame manufacturing plan link when that plan is generated.)*
- Electronics art/UI: *(Reserved for an art/UI documentation link when that documentation is generated.)*

## Metallurgy

Owns metallic and Silicon material production/forms, including potential or locked interfaces such as:

- Copper Sheet / Wire;
- Aluminum material forms;
- Tin Sheet / Foil;
- Lead Ore processing;
- Steel / Iron materials;
- Gold;
- Silver;
- Nickel;
- Chromium;
- Nichrome alloy production;
- the canonical **Silicon Ingot** and its upstream purification/recovery progression;
- other metallurgy intermediates;
- **Tin–Lead Solder alloy production** as a required Electronics dependency;
- likely part of the future glass/fiberglass material chain, exact boundary TBD.

Improved Silicon purification should produce more of the **same Silicon Ingot** from the same silicon-bearing feedstock rather than creating separate high-purity ingot SKUs. Exact Quartzite/silica reduction, purification chemistry, furnaces, yields, and machine ownership remain outside Electronics.

## Chemistry

Owns chemical materials/processes required by Electronics, including:

- Rosin processing from raw natural/tree resin;
- Phenolic Resin;
- Epoxy Resin;
- polymers where independently required;
- Electrolyte;
- Sulfuric Acid;
- Hydrochloric Acid;
- Hydrofluoric Acid;
- Nitric Acid;
- Hydrogen Peroxide;
- **Etching Solution** for Silicon Wafer preparation;
- the eventual final chemical identity/name and production chain replacing **PCB Etching Solution Placeholder**;
- processed carbon forms where appropriate;
- silica processing where appropriate;
- likely part of the future glass/fiberglass treatment/production chain, exact boundary TBD.

For semiconductor device fabrication, Electronics intentionally does **not** require separate Photoresist, Semiconductor Dopant, Thin-Film Precursors, developers, resist strippers, specialty solvents, CMP slurry, semiconductor-specific process gases, or multiple cleaning solutions unless another TI system independently establishes one of those materials for broader use.

## Forestry / Biological Resources

Potentially supplies:

- Plyboard / woodworking feedstocks as appropriate;
- Wood Pulp / Paper feedstock as appropriate;
- raw tree resin feeding Rosin production;
- possible rubber-bearing biological resources.

Exact harvesting and processing systems are deferred.

## Electronics

Owns:

- PCBs;
- discrete electronic components;
- consumption of fabrication-ready **Silicon Wafers** in semiconductor devices and Microchips;
- chip fabrication;
- processors;
- controllers;
- processing boards;
- power supplies;
- memory modules;
- compute accelerators;
- higher-order electronic assemblies.

The exact machine/system ownership of the Silicon Ingot + Etching Solution → Silicon Wafer preparation step may be finalized during Metallurgy/Chemistry/Electronics machine integration, but the material interface and recipe abstraction are locked.

## Electrical Machinery / Power Systems

Deferred possible ownership:

- large transformers;
- motor/generator magnetic cores;
- stators;
- rotors;
- high-voltage electrical equipment;
- power-distribution components;
- rare-earth magnet systems.

---

# 24. Retained Future Design Directions

## 24.1 AI / Quantum Computing

**STATUS: RETAINED FUTURE DESIGN DIRECTION, NOT FINAL IMPLEMENTATION**

Possible future chain:

```text
Undeveloped AI Core
→ training / development process
→ Developed or Sentient AI Core
```

Potential mechanics:

- Quantum Processor involvement;
- unusual “fuel-style” consumption to model AI development/training;
- AI-Integrated Quantum Processor;
- specialized endgame computing infrastructure.

This direction is intentionally retained for later concept planning but is **not yet a canonical recipe architecture**.

---

## 24.2 Semiconductor visual differentiation

Possible future art direction:

- shared base icons;
- colored badges/overlays;
- visual markers for Logic / Memory / Interface / Quantum processor classes.

Art/UI implementation remains deferred.

---

# 25. Deferred Decisions

The current Electronics architecture pass is complete. The following remain intentionally deferred because they belong to dependent systems, implementation, endgame design, art/UI, or numerical balance rather than unresolved core Electronics architecture:

- exact recipe ratios, yields, and material counts for all locked architectures;
- crafting times;
- power usage;
- machine speeds;
- module compatibility and productivity behavior;
- Electronic Workshop entity implementation/art/exact construction recipe;
- Precision Electronics Fabricator entity implementation/art/exact construction recipe;
- exact recipe-by-recipe eligibility across the three Electronics machine tiers;
- exact prototype bridge recipe penalties and output yields;
- exact crude bootstrap machine(s), recipe set, and retirement threshold;
- exact warning/UI behavior around crude-recipe retirement;
- exact Tin–Lead solder ratios, Metallurgy processing steps, and solid/molten delivery implementation details;
- exact upstream Chemistry recipes for Rosin, Phenolic Resin, and Epoxy Resin;
- exact Wood Pulp, Sawdust, Paper, Plyboard, and Paper Fiberboard production chains;
- exact crude-versus-Tier-1 Phenolic PCB numerical penalties/yields;
- final replacement name/material form and exact production chain for **Fiberglass Placeholder**;
- exact Alumina Ceramic and Aluminum Nitride Ceramic production chains, material forms, and machine ownership;
- exact Quartzite/silica → Silicon Ingot production and purification recipes, machines, and yields;
- exact numerical Silicon Ingot → Silicon Wafer yield and final machine ownership for wafer preparation;
- exact Sulfuric Acid, Hydrochloric Acid, Hydrofluoric Acid, Nitric Acid, Hydrogen Peroxide, and Etching Solution Chemistry production chains/ratios;
- final chemical identity, player-facing name, and Chemistry production chain replacing **PCB Etching Solution Placeholder**;
- exact Silicon Diode and Silicon Transistor contact/package materials where not otherwise established;
- exact generic Ceramic material/form used for Advanced Microchip packaging;
- exact Silver/Gold PCB quantities, plating ratios, yields, and technology timing;
- exact Nichrome alloy proportions, material form, and Metallurgy production recipe;
- exact Advanced Capacitor Electrolyte composition, termination/sealing materials, and package details;
- exact Crystal Diode crude/improved recipe quantities, timing, and package material forms;
- P-30 Electrical Machinery magnetic components;
- P-31 Neodymium / rare-earth magnetic uses;
- P-32 AI / Quantum endgame architecture;
- P-33 semiconductor iconography;
- exact Quantum Processor manufacturing and endgame tech chain;
- progression balance and technology costs.

The decision **not** to create separate semiconductor Photoresist, Dopant, Thin-Film Precursor, developer, stripper, specialty-solvent, CMP-slurry, process-gas, or multiple cleaning-solution inventory families is locked for the current Electronics scope; these are not merely pending P-27 decisions.

---

# 26. Current Electronics Taxonomy Snapshot

```text
CONDUCTORS
├─ Copper Wire
├─ Aluminum Wire
├─ Steel Wire
├─ Gold Wire
├─ Insulated Copper Wire
├─ Insulated Aluminum Wire
└─ Insulated Gold Wire

PCB FAMILY
├─ Phenolic Layered PCB
├─ Fiberglass Layered PCB
└─ Ceramic Layered PCB

EARLY DISCRETE ELECTRONICS
├─ Carbon Composition Resistor
├─ Paper Capacitor
├─ Crystal Diode
└─ Vacuum Triode

MODERN / ADVANCED DISCRETE ELECTRONICS
├─ Advanced Resistor
├─ Advanced Capacitor
├─ Silicon Diode
└─ Silicon Transistor

SEMICONDUCTOR / PCB PROCESS INTERFACES
├─ Silicon Wafer
├─ Etching Solution
└─ PCB Etching Solution Placeholder  [temporary name]

MICROCHIPS
├─ Basic Logic Chip
├─ Advanced Logic Chip
├─ Basic Memory Chip
├─ Advanced Memory Chip
├─ Basic Interface Chip
└─ Advanced Interface Chip

CONVENTIONAL PROCESSORS
├─ Logic Processor
├─ Memory Processor
└─ Interface Processor

ADVANCED COMPUTING PARADIGM
└─ Quantum Processor

CONTROL ELECTRONICS
├─ Logic Control Circuit
├─ Logic Controller
└─ Advanced Logic Controller

COMPUTING ASSEMBLIES
├─ Processing Board
├─ Advanced Processing Board
├─ Memory Module
├─ Compute Accelerator
└─ Advanced Compute Accelerator

POWER ELECTRONICS
├─ Power Supply
└─ Advanced Power Supply

ELECTRONICS PRODUCTION MACHINES
├─ Tier 1 — Electronic Workshop
├─ Tier 2 — Electromagnetic Plant
└─ Tier 3 — Precision Electronics Fabricator
   └─ retained future option: broaden to Precision Fabricator for shared advanced industrial use
```

Explicit inductors and transformers are intentionally absent from the Electronics taxonomy.

---

# 27. Resume Point

## Current planning state

**The current Electronics architecture planning pass is complete.**

P-01 through P-03 and P-05 through P-29 are resolved at the Electronics architecture/interface level. P-04, **Quantum Processor manufacturing**, remains intentionally deferred to later endgame planning.

The final late-stage locks established:

- one canonical **Silicon Ingot** and one canonical **Silicon Wafer**;
- improved upstream Silicon purification as better yield of the same Silicon Ingot rather than new purity-tier items;
- `Silicon Ingot + Etching Solution → Silicon Wafer` as the final wafer-preparation abstraction;
- **Etching Solution** as a Chemistry fluid abstracting sequential wafer cleaning/etching/surface preparation using Sulfuric Acid, Hydrochloric Acid, Hydrofluoric Acid, Nitric Acid, and Hydrogen Peroxide as upstream Chemistry inputs;
- no separate Electronics inventory family for Photoresist, Semiconductor Dopant, Thin-Film Precursors, developers, strippers, specialty solvents, CMP slurry, semiconductor-specific process gases, multiple cleaning solutions, or Basic/Advanced Etching Solution;
- Basic Microchips: `Silicon Wafer + Copper + Aluminum + Epoxy Resin`;
- Advanced Microchips: `Silicon Wafer + Copper + Gold + Ceramic`;
- Epoxy Resin → Ceramic as the chip-package material progression without separate package subassembly items;
- one separate PCB-process fluid using the temporary name **PCB Etching Solution Placeholder**, with its final chemical identity/name deferred to Chemistry.

The earlier P-16 through P-25 decisions remain authoritative, including Tin–Lead Solder, Rosin/Phenolic Resin/Epoxy Resin, Paper/Wood Pulp, crude-to-proper Phenolic PCB progression, **Fiberglass Placeholder**, Alumina→Aluminum Nitride Ceramic substrate progression, Silver→Gold PCB progression, Nichrome, the Advanced Capacitor architecture, and Tin Sheet→Ceramic Crystal Diode packaging progression.

### No active next Electronics decision

There is currently **no unresolved decision that should be advanced inside Electronics alone**. Resume this document only when one of the following prerequisite areas is ready:

- Chemistry/material planning to replace **Fiberglass Placeholder** and **PCB Etching Solution Placeholder** and finalize upstream resin/acid/electrolyte chains;
- Metallurgy planning to finalize Silicon Ingot purification, Nichrome, Tin–Lead Solder, and related material forms;
- Electrical Machinery / Power Systems for P-30 and P-31;
- endgame planning for Quantum Processor and AI/Quantum architecture;
- machine implementation/balance for exact recipe eligibility, speeds, power, modules, yields, and technology costs;
- art/UI planning for semiconductor iconography.

When those prerequisites are available, update only the affected deferred interfaces without reopening unrelated locked Electronics architecture.

---

# 28. Planning Workflow Reminder

When continuing this plan:

1. Work on **one component / one decision at a time** unless explicitly grouped.
2. For each major physical component, where useful:
   - explain what early real-world technology used;
   - explain what modern technology uses;
   - map both to TI's available/planned materials;
   - identify Chemistry dependencies;
   - present plausible TI abstractions;
   - then lock the selected direction.
3. After an explicit lock, immediately continue to the next unresolved decision.
4. Do not ask “what next?” unless genuinely blocked.
5. Preserve gameplay abstraction over unnecessary real-world item proliferation.
6. Keep progression/balance numerical tuning deferred until implementation exists.
7. Preserve the three-machine Electronics capability model: Tier 1 Phenolic, Tier 2 Electromagnetic Plant for Fiberglass/early Ceramic, Tier 3 full advanced conventional Electronics.
8. Preserve narrow prototype bridge recipes so each machine tier can bootstrap the next without granting the lower tier the entire next-era catalog.
9. Preserve the pre-Tier-1 crude bootstrap/retirement concept unless explicitly revisited; exact recipe sets and trigger thresholds remain balance decisions.

---

**END OF CURRENT ELECTRONICS PLANNING SNAPSHOT**
