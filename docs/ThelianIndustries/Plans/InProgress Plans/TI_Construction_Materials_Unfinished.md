# Thelian Industries — Construction Materials & Building Components
## Deferred Concept Snapshot

**Status:** Deferred / Background Context  
**Purpose:** Preserve the current construction-materials and building-components concept direction for later continuation after adjacent systems are further planned.  
**Do not treat this file as a locked or canonical subsystem plan.**

---

## 1. Why This Planning Session Is Paused

Construction materials and building-component design depends heavily on other systems that are not yet sufficiently defined, including:

- Logistics and material-handling systems
- Power and electrical machinery
- Chemistry and polymers
- Forestry and wood processing
- Metallurgy forms and component granularity
- Fluid and pipe systems
- Production-machine architecture
- Electronics and control-system integration
- Recycling, waste, dismantling, and recovery
- Building-specific machinery and infrastructure inventories

Finalizing construction bundles now risks forcing later systems to conform to premature assumptions or requiring substantial redesign.

**Current decision:** preserve the architecture and design principles developed here, but defer final bundle taxonomy, item lists, recipes, and building requirements until more adjacent systems are known.

---

## 2. Core Design Direction

The construction system should use a **flexible hierarchical model**, not a rigid universal recipe format.

A finished building may consume any mixture of:

1. **Explicit materials / fabricated forms**
   - Examples: lumber, brick, concrete, plate, pipe, wire, rubber sheet, glass.

2. **Explicit manufactured components**
   - Examples: nails, rivets, screws, bolt-and-nut sets, mechanical parts, motors, valves, actuators, control systems.

3. **Construction-part bundles**
   - Standardized assemblies that abstract repetitive low-level construction details.

4. **Finished building/entity**
   - Each building receives its own bill of construction based on its physical and technological identity.

Construction bundles are therefore **an abstraction tool**, not a mandatory replacement for all direct materials and specialist components.

---

## 3. Construction Philosophy

### Selective realism
Model industrially meaningful processes and components, but do not reproduce every real-world subcomponent.

A player-facing item is justified when it contributes meaningful:

- technological identity;
- manufacturing progression;
- automation;
- cross-system integration;
- recipe readability;
- efficiency progression;
- or multiple downstream uses.

Do not add items solely because they exist in real engineering.

### Flexible abstraction
The abstraction level may change with progression.

Early recipes may directly consume broad materials while implicitly performing minor fabrication internally.

Later technology may externalize that work into dedicated automated intermediates.

Example:

**Early:** Rubber Sheet directly feeds Fluid Hardware, implicitly including gasket cutting.

**Later:** Rubber Sheet -> Rubber Gasket -> improved Fluid Hardware.

Conversely, increasing industrial standardization may compress many low-level details into construction bundles.

### Recipe progression over unnecessary item tiers
Where possible, technological advancement should improve how an existing useful item is manufactured rather than automatically introducing Mk1/Mk2/Mk3 copies.

New item tiers should exist only when the item itself changes materially in function, capability, technology, or material class.

### Complexity should arrive with automation
Specialized intermediates should generally appear once the player has enough industrial capability to automate them.

The intended progression feeling is broadly:

**survive -> establish capability -> automate -> industrialize -> technologically mature**

---

## 4. Primitive-to-Industrial Construction Direction

Very early buildings may bypass construction bundles entirely.

Example conceptual pattern:

**Lumber + Fired Brick + Nails -> Primitive Workshop**

Later, standardized manufacturing can introduce reusable construction bundles.

This creates a natural progression from:

- direct craftsmanship;
- standardized components;
- prefabricated construction assemblies;
- advanced industrial specialization.

---

## 5. Candidate Construction-Facing Materials

These are not locked. They are current candidates and interface requirements for future owning systems.

### Wood / structural
- Lumber
- Structural Timber
- Wood Panel / Plywood

### Masonry / mineral
- Unfired Brick
- Fired Brick
- Quicklime
- Mortar
- Cement
- Concrete
- Rebar / reinforcement — open candidate

### Fasteners
- Nails
- Rivets
- Screws
- Bolt & Nut Set

Potential material progression remains intentionally open.

Examples discussed included:
- early bronze/iron nails;
- aluminum rivets;
- steel screws;
- stronger iron/steel bolt-and-nut sets.

### Fluid / mechanical
- Pipe
- Mechanical Parts
- Fluid Hardware
- Rubber Gasket — possible later specialization
- Industrial Valve — possible later specialization

### Chemistry / polymer interfaces
- Processed Rubber
- Rubber Sheet
- Plastic / Polymer Sheet — candidate

### Electrical / control
- Electrical Hardware
- Sensors & Switching / Instrumentation Hardware
- Actuator Assembly
- Control System Assembly
- Power Regulation System
- Process Control Terminal — later candidate
- Industrial IT Infrastructure — later candidate

Detailed production chains remain owned by their respective subsystem plans.

---

## 6. Reusable Tooling Concept

A **Wooden Brick Mold** remains a candidate reusable production tool.

Conceptual requirement:

- mold is not consumed every brick recipe;
- mold has finite service life;
- worn mold eventually becomes a wood-based waste product;
- waste/recycling later determines recovery or disposal.

Potential implementation via Factorio Space Age spoilage/durability-like mechanics requires future technical research.

Do not lock the implementation mechanism yet.

---

## 7. Real-World Construction Disciplines Identified

Research into industrial and commercial construction suggests five recurring disciplines that are useful candidates for TI construction abstractions:

1. Structural / Civil
2. Mechanical Machinery
3. Process Piping / Fluid Systems
4. Electrical Installation
5. Instrumentation / Control

Other real construction disciplines such as HVAC, fire protection, thermal/refractory systems, and material handling are currently better treated as combinations of existing bundles plus explicit specialty materials/components rather than universal bundle families.

---

## 8. Provisional Construction-Bundle Candidates

These remain **provisional only**.

### Structural Construction Parts
Could abstract:
- small framing members;
- brackets;
- connection plates;
- anchor hardware;
- hangers;
- bracing;
- equipment mounting;
- minor structural fastening and supports.

Likely explicit outside the bundle:
- bulk concrete;
- brick;
- lumber;
- large structural metal material;
- glass;
- specialty panels.

### Mechanical Construction Parts
Could abstract:
- bearings;
- bushings;
- minor shafts;
- small couplings;
- keys/splines;
- small gears;
- housings;
- guards;
- mounts;
- springs;
- miscellaneous mechanical hardware.

Likely explicit outside:
- electric motors;
- major gearboxes;
- conveyor belts;
- turbines;
- pumps;
- compressors;
- major drive mechanisms.

### Fluid-System Construction Parts
Could abstract:
- elbows;
- tees;
- fittings;
- couplings;
- flanges;
- routine seals/gaskets;
- clamps;
- supports;
- minor valves;
- branch hardware.

Likely explicit outside:
- Pipe;
- major valves where technologically significant;
- pumps;
- pressure vessels;
- specialty seals/materials.

### Electrical Construction Parts
Could abstract:
- conduit/raceway installation;
- cable supports/trays;
- junction hardware;
- terminals;
- connectors;
- grounding hardware;
- small enclosures;
- ordinary protective/distribution details.

Likely explicit outside:
- motors;
- transformers;
- major switchgear;
- batteries;
- major power supplies;
- advanced controllers.

### Control & Instrumentation Construction Parts
Could abstract:
- simple sensors;
- limit switches;
- transmitters;
- local indicators;
- minor relays;
- instrumentation mounting;
- routine control wiring/interfaces.

Likely explicit outside:
- advanced actuators;
- logic controllers;
- process-control terminals;
- major analyzers;
- advanced control computers;
- industrial IT systems.

---

## 9. Important Lower-Level Distinctions

Potential hierarchy:

**Material / fabricated form**
-> **functional hardware / component**
-> **construction assembly / bundle**
-> **finished building**

Examples:

**Rubber Sheet -> Fluid Hardware -> Fluid-System Construction Parts -> Pump**

or:

**Metal -> Screws / Mechanical Parts -> Mechanical Construction Parts -> Assembler**

However, buildings may skip layers where appropriate.

Example:

**Structural Parts + Mechanical Parts + Rubber Belt + Steel Plate -> Conveyor**

This mixed bill-of-construction approach is intentional.

---

## 10. Cross-System Ownership Rule

This plan may declare that a construction-facing item is needed without defining its full production process.

Example:

- Construction declares **Rubber Sheet** is needed.
- Chemistry later owns how rubber is actually produced.
- Construction declares **Pipe** is needed.
- Metallurgy later owns the metal forms, machines, and recipes.
- Construction declares **Structural Timber** is needed.
- Forestry later owns the processing chain.

Construction planning should therefore define:

- what the item is;
- why it is needed;
- what construction role it serves;
- what it conceptually contains;
- whether it remains explicit or becomes abstracted;
- rough progression identity.

Owning subsystem plans later define detailed manufacturing architecture.

---

## 11. Building-Specific Bills of Construction

No rule should force every building to be constructed solely from bundles.

Recipes should communicate what makes the building physically and technologically distinct.

Examples discussed:

### Conveyor
Possible mixture of:
- Structural Construction Parts
- Mechanical / Electrical Construction Parts
- explicit Rubber Belt
- explicit metal plate/form

### Pump
Possible mixture of:
- Structural Construction Parts
- Mechanical Construction Parts
- Fluid-System Construction Parts
- explicit Pipe

### Primitive Workshop
May bypass bundles entirely:
- Lumber
- Brick
- Nails

Building recipes should remain flexible but follow project-wide anti-scope-creep and industrial-progression rules.

---

## 12. Semi-Permanent Construction Direction

A future candidate mechanic remains:

- place a building ghost/construction site;
- supply required construction materials/components;
- building progresses toward completion;
- dismantling returns construction components rather than always returning a pristine building item;
- damaged/recovered components may require reprocessing;
- waste/recycling systems may participate.

This is inspired in part by Captain of Industry-style construction logistics.

Factorio API feasibility and exact implementation are **deferred**.

---

## 13. Major Open Decisions for the Future

When this planning session resumes, do **not** restart from scratch.

Revisit:

1. Exact construction-bundle taxonomy.
2. Which real-world hardware remains explicit versus implicit in each bundle.
3. Whether Mechanical Parts and Mechanical Construction Parts both need to exist.
4. Whether Fluid Hardware and Fluid-System Construction Parts both need to exist.
5. Whether Electrical Hardware and Electrical Construction Parts both need to exist.
6. Whether Control & Instrumentation deserves a universal construction bundle.
7. Whether Actuation should be its own bundle or remain explicit.
8. Whether Power Regulation should be a bundle or explicit component.
9. Which advanced components emerge later through de-abstraction.
10. Final construction-facing item list after Logistics, Power, Chemistry, Forestry, Metallurgy, Fluid Systems, and Production Machines are further defined.
11. Building-specific construction bills.
12. Semi-permanent construction / dismantling technical feasibility.
13. Recovery, reprocessing, and waste behavior.

---

## 14. Recommended Resume Point

Return to this plan **after several adjacent subsystem plans are further developed**.

At that point:

1. Inventory the actual machines/buildings now planned across TI.
2. Identify recurring real construction disciplines across those entities.
3. Re-evaluate the five provisional bundle families.
4. Determine what materials/components must remain explicit.
5. Finalize construction-facing item requirements.
6. Hand those requirements back to the owning systems for manufacturing-chain refinement.
7. Only afterward finalize building recipes and numerical balance.

---

## 15. Current Summary

The planning completed so far is useful and should be retained, but **final construction architecture is intentionally deferred**.

The current strongest direction is:

> Thelian Industries should use a flexible hierarchical construction system in which buildings may consume direct materials, explicit components, and standardized construction bundles simultaneously. Bundles abstract repetitive low-level engineering details, while distinctive materials and technologically meaningful components remain visible. Abstraction may increase or decrease with industrial progression, and construction-facing requirements should be handed back to the owning production systems for later detailed manufacturing design.

