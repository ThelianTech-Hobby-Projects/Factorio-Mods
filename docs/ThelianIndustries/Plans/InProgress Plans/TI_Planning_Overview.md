# Thelian Industries — Planning Overview

**Status:** Planning Coordination Report  
**Purpose:** Define the remaining concept-planning workload, distinguish full system plans from lightweight framework documents, and establish where planet-specific planning owns detailed gameplay decisions.  
**Intended repository location:** `docs/ThelianIndustries/Plans/InProgress Plans/TI_Planning_Overview.md`

> This document is a planning inventory and coordination source. It does **not** claim that any listed future system is implemented, finalized, or approved merely because it appears here. Existing locked planning records remain authoritative for their own domains.

---

## 1. Project Planning Principle

Thelian Industries is an **enhancement overhaul**, not a complete replacement of Factorio: Space Age.

The default rule is:

- Preserve vanilla Factorio mechanics when they already provide an adequate foundation.
- Extend, rebalance, specialize, gate, or reinterpret vanilla systems only where Thelian Industries has a clear design reason.
- Avoid rebuilding a vanilla system solely for the sake of making it different.
- Use shared framework documents for cross-mod consistency.
- Put detailed planetary content, resource assignments, progression, balance, enemies, hazards, and local technology gates in each planet's dedicated planning documents.
- Keep implementation status separate from intended design status.

---

## 2. Current Deep Planning Coverage

The following areas already have substantial architecture-level planning and should be **completed or integrated**, not restarted from scratch.

### 2.1 Metallurgy

Current state:

- Architecture is substantially established through the existing metallurgy decision record.
- Detailed progression and final balance remain deferred.
- Metal forms and component granularity still require completion.
- Exact recipes, unlock timing, machine statistics, ratios, yields, pacing, and planetary progression placement remain later work.

Future work:

- Complete remaining metallurgy architecture decisions.
- Integrate planetary resource decisions through each planet plan.
- Finalize metallurgy progression during the unified progression pass.
- Finalize numerical recipes and balance during recipe/balance planning.

### 2.2 Electronics

Current state:

- Electronics taxonomy, assembly architecture, production-machine hierarchy, and major interfaces are substantially established.
- The remaining work is primarily cross-system integration and detailed balancing.

Future work includes:

- exact ratios and yields;
- recipe times and energy use;
- machine speeds;
- module behavior and eligibility;
- technology costs;
- prototype-bridge quantities;
- recipe retirement thresholds;
- entity construction recipes;
- planetary/stage placement;
- art, UI, and presentation.

### 2.3 Research System Foundation

Current state:

- The governing research architecture is established.
- The detailed global technology tree remains intentionally deferred.

Future work includes:

- exact technology placement;
- prerequisite graph;
- costs;
- media recipes;
- research infrastructure;
- planet-specific experiments and research mechanisms;
- integration with planetary progression;
- full Research, Technology, and Game Progression plan.

---

## 3. Dedicated System Concept Plans Still Needed

These systems justify substantial dedicated planning sessions because Thelian Industries intends to meaningfully extend or restructure their gameplay role.

### 3.1 Chemistry and Oil Processing

A full concept plan is required.

Scope should include:

- oil-processing architecture;
- acids;
- bases where needed;
- resins;
- solvents where justified;
- electrolyte;
- etching chemistry;
- process gases;
- chemical reagents;
- water treatment;
- salt water and distilled water integration;
- chemical waste and byproducts;
- chemical production machines;
- chemical interfaces required by Electronics, Metallurgy, Power, planetary systems, and later technologies;
- planet-specific chemistry specializations;
- progression and balance boundaries.

### 3.2 Recycling and Waste

A full concept plan is required.

Scope should include:

- solid waste;
- fluid waste;
- recoverable process waste;
- slag and metallurgy recovery interfaces;
- electronics recycling;
- construction recovery;
- module recycling;
- Fulgora-specific recycling specialization;
- salvage versus disposal;
- material recovery efficiency;
- waste logistics;
- pollution and environmental relationships.

### 3.3 Construction and Building Components

A full concept plan is required.

Scope should include:

- universal construction materials;
- mechanical parts;
- hydraulic/fluid parts;
- electrical/electronic construction interfaces;
- construction-part bundles;
- building-specific requirements;
- building assembly philosophy;
- compact inventory representation;
- building recovery;
- semi-permanent placement concepts;
- reprocessing recovered building components;
- progression and balance.

### 3.4 Logistics System

A dedicated concept plan is required.

Scope should include:

- vanilla belt integration;
- loose-material belt concepts;
- regular conveyor-belt roles;
- loaders;
- inserter roles;
- splitter extensions;
- filtering;
- circuit interfaces where useful;
- storage interfaces;
- specialized material logistics;
- progression boundaries;
- planet-specific logistics unlocks.

### 3.5 Robotics Foundation

A dedicated concept plan is required.

Current intended progression direction:

1. Prototype Logistic Robots
2. Prototype Construction Robots
3. Advanced Logistic Robots
4. Advanced Construction Robots

Known planetary direction:

- Advanced Logistic Robots: Voltaris.
- Advanced Construction Robots: Tectara is the current candidate and remains subject to planetary planning.

The plan should define:

- capability boundaries;
- robot roles;
- prototype versus advanced behavior;
- roboport infrastructure;
- charging and logistics constraints;
- construction limitations;
- recipes and technology interfaces at architecture level;
- what remains planet-specific.

### 3.6 Fluid and Pipe Systems

A dedicated concept plan is required.

Scope should include:

- standard liquid networks;
- gas networks;
- molten-material networks;
- special-purpose pipe networks;
- pipe-material progression;
- underground-pipe rules;
- temperature behavior;
- distance limits where technically available;
- molten crucible transport;
- fluid cargo transport;
- chemistry and power interfaces.

### 3.7 Power, Steam, and Electrical Machinery

A dedicated concept plan is required.

This plan must reconcile intended design with the existing registered power prototypes rather than treating current prototype values as final design.

Scope should include:

- burner and primitive power;
- steam temperature progression;
- boilers;
- superheating;
- heat exchangers;
- steam engines and turbines;
- hydropower;
- electrical transmission;
- transformers and large magnetics;
- battery and charging infrastructure;
- power progression;
- fuel interfaces;
- machine and planet dependencies;
- technology and balance.

### 3.8 Modules, Quality, and Effects

A dedicated concept plan is required.

Scope should include:

- TI module families;
- module crafting progression;
- module recycling and upgrading;
- interaction with vanilla Quality;
- additional quality effects where justified;
- productivity, speed, efficiency, precision, craftsmanship, biological/aromatic effects, or successors to those ideas;
- waste-product interactions;
- machine eligibility;
- balance rules.

### 3.9 Space, Rockets, Asteroids, and Space Transport

A major concept plan is required.

Scope should include:

- rocket progression;
- cargo rockets;
- fluid cargo rockets;
- launch infrastructure;
- platform logistics;
- inter-platform item transport;
- inter-platform player transport where supported and desired;
- platform-to-platform construction/deployment concepts;
- space resource processing;
- asteroid mining;
- existing vanilla asteroid integration;
- new asteroid types for selected TI materials where justified;
- asteroid composition and resource distribution;
- space-platform progression;
- deep-space hazards;
- Icarion's Grave integration;
- Solar System Edge transition;
- technical feasibility constraints.

### 3.10 Combat and Military Progression Foundation

A dedicated global foundation plan is required.

This plan should establish common rules rather than attempting to contain every weapon and enemy in one document.

Scope should include:

- early military progression;
- damage and weapon-family philosophy;
- ammunition progression;
- defensive structures;
- armor and personal combat interfaces;
- planetary military specialization;
- research progression principles;
- biological warfare boundaries;
- plasma/fusion/endgame warfare boundaries;
- how much vanilla combat remains unchanged.

Planet-specific military content should remain in the relevant planet plans.

### 3.11 Research Infrastructure and Media Production

A dedicated concept plan is required beneath the locked Research System Foundation.

Scope should include:

- Primitive Research Desk concept;
- research labs;
- research computers/supercomputers where retained;
- physical research media;
- digital research media;
- data storage abstractions;
- research-media production chains;
- Wood Pulp/Paper interfaces;
- research infrastructure progression;
- planet-specific research infrastructure requirements;
- retirement or replacement of obsolete research infrastructure.

### 3.12 Unified Research, Technology, and Game Progression Plan

This should be created **after enough subsystem and planetary architecture is complete**.

It will own:

- global technology ordering;
- major prerequisites;
- stage gates;
- planetary access gates;
- cross-planet dependencies;
- science/research media requirements;
- technology longevity;
- progression pacing;
- integration of subsystem unlocks;
- Stage 1 through Stage 6 global flow.

It should not independently redesign subsystem architecture already owned by dedicated plans.

### 3.13 Recipe and Numerical Balance Framework

A dedicated late-architecture plan is required.

It should own concrete numerical tuning after system architecture stabilizes:

- ingredient counts;
- outputs;
- yields;
- crafting times;
- machine speeds;
- energy consumption;
- pollution;
- productivity;
- module eligibility;
- quality interactions;
- recovery percentages;
- technology costs;
- throughput targets;
- progression pacing targets.

---

## 4. Global Foundation and Guideline Documents

These areas need common documentation, but most do **not** require a complete independent gameplay overhaul.

### 4.1 Enemies and Factions Framework

Create one global framework.

It should define:

- how TI uses vanilla enemy systems;
- when custom factions are justified;
- faction identity rules;
- spawning and expansion philosophy;
- pollution/hazard interactions;
- evolutionary scaling philosophy;
- combat-pressure pacing;
- common implementation boundaries.

Specific enemy factions, behaviors, units, nests, defenses, and hazards belong in their planet plans.

### 4.2 Environment, Pollution, and Ecology Framework

Create one global framework.

It should define:

- use of vanilla pollution systems;
- when custom pollution layers are justified;
- terrain and vegetation absorption principles;
- ecological response;
- early-game pollution philosophy;
- planetary pollution specialization;
- pollution relationships with enemies and hazards.

Planet-specific values and mechanics belong in planet plans.

### 4.3 Production Machine Framework

Create a consolidation/foundation document.

This should gather and normalize rules already emerging from Metallurgy, Electronics, and future Chemistry.

It should define:

- when a dedicated production machine is justified;
- process specialization versus generic tiering;
- machine obsolescence;
- recipe eligibility;
- module compatibility;
- Quality interactions;
- energy/pollution expectations;
- footprint conventions;
- technology progression rules;
- prototype bridge rules where used.

This document should not erase subsystem-specific machine rules.

### 4.4 Fuel and Energy Carrier Framework

Create a global framework covering:

- solid fuels;
- liquid fuels;
- gases;
- steam and heat;
- electricity;
- batteries;
- advanced energy carriers;
- vehicle/locomotive fuel interfaces;
- energy-density philosophy;
- compatibility between fuel types and machine classes.

Exact production chains remain owned by Chemistry, Power, planets, and transportation plans.

### 4.5 Hazards and Environmental Resistance Framework

Create a global framework covering:

- heat;
- cold;
- pressure;
- corrosive environments;
- toxicity;
- radiation;
- electrical storms;
- volcanic activity;
- seismic activity;
- wind;
- other planetary hazards;
- resistance and mitigation principles.

Specific hazards belong in planet plans.

### 4.6 Trains and Ground Transportation Improvement Plan

Create a **small dedicated improvement plan**, not a total train overhaul.

Default rule:

- Preserve vanilla rail-network mechanics, signaling, scheduling, routing, stations, and normal train behavior unless a specific TI feature requires otherwise.

Planned extension areas should include:

- diesel locomotives;
- direct fluid-fueled locomotive concepts;
- locomotive fuel tanks where technically feasible;
- possible steam-locomotive concepts or successors;
- additional locomotive classes;
- specialized freight/fluid transport where useful;
- fuel-type compatibility;
- progression and planetary unlock placement;
- reuse or redesign of earlier experimental locomotive-fuel and steam-locomotive work in the repository.

The plan must include a technical-feasibility section because current Factorio locomotive prototypes normally use item-based burner fuel. Any direct-fluid locomotive implementation must be validated against the Factorio version/API available when implementation begins.

### 4.7 Player Equipment, Armor, and Personal Infrastructure Framework

Create a lightweight framework.

Scope should include:

- starter rechargeable equipment;
- batteries;
- personal power;
- armor progression;
- scanners;
- specialized planetary gear;
- environmental protection;
- personal construction/logistics interfaces.

Most concrete items and unlocks should be defined by planet and progression plans.

### 4.8 Art, UI, UX, and Audio Foundation

Create a project-wide guideline document.

Scope should include:

- icon style;
- visual language;
- naming/display conventions;
- technology icon conventions;
- item and machine readability;
- planet visual identity;
- sounds and audio identity;
- UI conventions;
- placeholder-asset rules;
- final-art replacement expectations.

### 4.9 Mod Packaging and Sub-Mod Architecture

Create a formal architecture document.

Direction:

- continue the Bob's-Mods-style modular approach where appropriate;
- define which concerns belong in Core, libraries, power, chemistry, planets, asset packs, compatibility, and future modules;
- define dependency rules;
- define shared versus planet-specific ownership;
- define naming conventions;
- define optional versus mandatory packages.

This plan should follow Factorio's normal mod architecture rather than inventing an unrelated packaging system.

### 4.10 Save Migration and Versioning Guidelines

Create a lightweight policy.

Default:

- follow Factorio's supported migration/versioning mechanisms.

TI-specific additions may include:

- prototype rename rules;
- technology migration;
- recipe retirement/reconciliation;
- removed/changed entities;
- force-level state corrections;
- configuration-change handling;
- save compatibility expectations across alpha/beta/release stages.

---

## 5. Systems That Remain Mostly Vanilla by Default

These areas should not receive major standalone overhaul plans unless future requirements change.

### 5.1 Circuit Network and Automation Logic

Default to vanilla Factorio mechanics.

TI entities may expose filters, circuit controls, or special signals where useful, but no broad circuit-system redesign is currently planned.

### 5.2 Core Rail-Network Behavior

Signals, schedules, routing, stations, and standard rail behavior remain vanilla.

The separate **Trains and Ground Transportation Improvement Plan** may add new locomotive or transport classes without replacing the core train network.

### 5.3 General Inventory Mechanics

Use vanilla behavior unless a specific TI logistics, cargo, or planetary system requires specialized containers or inventory handling.

### 5.4 Fundamental Construction Controls

Use vanilla placement/deconstruction controls unless TI's construction-component recovery or semi-permanent-building systems explicitly require additional behavior.

### 5.5 General Save-System Mechanics

Use Factorio-supported save and migration infrastructure, supplemented by TI policy rather than replaced.

---


## 6. Idea Backlog Review and Scope-Control Process

The project maintains an Ideas Backlog as the holding area for speculative concepts that have not yet been promoted into canonical plans:

`docs/ThelianIndustries/Plans/Idea_Backlog.md`

The backlog is expected to continue changing. Every major future concept-planning session must therefore review the **latest** Ideas Backlog rather than assuming that every current or future idea is already represented in this overview.

### 6.1 Required idea triage

Each substantive backlog entry should eventually receive one of these dispositions:

- **Promote into an existing global system plan**
- **Promote into a planet Concept and Systems Plan**
- **Promote into a planet Progression and Balance Plan**
- **Promote into a shared framework/guideline document**
- **Reserve for technical feasibility research or prototyping**
- **Defer until a later development phase**
- **Merge with another overlapping idea**
- **Reject / archive to prevent unnecessary scope growth**
- **Needs Owner Decision**

An idea is not approved merely because it appears in the backlog.

### 6.2 Evaluation criteria

Evaluate backlog ideas against:

- compatibility with the enhancement-overhaul philosophy;
- whether vanilla Factorio already solves the problem adequately;
- gameplay value;
- thematic fit;
- relationship to existing locked plans;
- cross-system dependencies;
- technical feasibility;
- implementation complexity;
- maintenance burden;
- balance risk;
- performance risk where relevant;
- whether the idea belongs globally or on one or more specific planets;
- overlap with existing ideas or systems;
- scope-creep risk.

### 6.3 Scope-creep rule

If an idea adds substantial complexity without a strong gameplay, progression, or thematic benefit, prefer to simplify, defer, merge, or reject it.

The project should generally prefer:

- extending existing Factorio mechanics;
- reusing established TI systems;
- planet-specific specialization;
- shared frameworks;

over introducing disconnected standalone mechanics.

### 6.4 Planning-session requirement

Before finalizing any new system or planet concept plan:

1. Review the latest Ideas Backlog.
2. Identify entries relevant to that plan.
3. Classify each relevant entry using the triage categories above.
4. Move accepted ideas into the appropriate planning owner.
5. Preserve provenance for deferred, rejected, merged, or superseded ideas.
6. Add cross-links so promoted ideas are not left only in the backlog.
7. Flag unresolved placement or contradictions as `Needs Owner Decision`.

Because the Ideas Backlog may contain newer entries than this planning overview, the latest backlog must always be consulted during future planning sessions.


## 7. Planet Planning Structure

Every primary planet receives **two dedicated plans**.

### Plan A — Planet Concept and Systems Plan

Owns:

- planetary identity;
- terrain;
- map generation;
- resources;
- minerals;
- biological resources;
- atmosphere;
- hazards;
- enemies;
- factions;
- planetary pollution;
- local production chains;
- unique materials;
- items;
- buildings;
- machines;
- technologies;
- research specialization;
- recipes at architecture level;
- local logistics;
- orbit interaction;
- exports/imports;
- unique gameplay mechanics.

### Plan B — Planet Progression and Balance Plan

Owns:

- arrival requirements;
- player starting state on arrival;
- bootstrap requirements;
- progression milestones;
- technology gates;
- resource accessibility;
- local balance;
- difficulty;
- hazard pressure;
- enemy pressure;
- production pacing;
- research pacing;
- cross-planet dependencies;
- what the planet unlocks globally;
- exit/completion conditions;
- readiness for the next stage.

Exact resource assignments that remain fluid in older documents should be finalized in the relevant planet pair rather than treated as permanent contradictions.

---

## 8. Planet-Specific Planning Queue

### Stage 1

#### Nauvis
- `Nauvis Concept and Systems Plan`
- `Nauvis Progression and Balance Plan`

Expected focus:

- primitive technology;
- Bronze Age;
- Iron Age;
- early electronics;
- starting minerals;
- biological resources;
- starting-area resource generation;
- early pollution curve;
- early biter evolution/expansion;
- starter equipment;
- early research;
- construction-system bootstrap.

Resource naming rule:

- internal/planning documents may use elemental/material identities for clarity;
- in-game localization may use mineralogical ore names;
- exact Nauvis resource naming, mapping, placement, and starting-set composition will be finalized in the Nauvis plans.

#### Luna
- `Luna Concept and Systems Plan`
- `Luna Progression and Balance Plan`

Detailed identity remains to be planned.

### Stage 2

#### Vulcanus
- `Vulcanus Concept and Systems Plan`
- `Vulcanus Progression and Balance Plan`

Expected focus includes TI metallurgy specialization and any changes to vanilla Vulcanus progression.

#### Gleba
- `Gleba Concept and Systems Plan`
- `Gleba Progression and Balance Plan`

Expected focus includes biological production and the TI-specific use of Gleba mechanics.

#### Fulgora
- `Fulgora Concept and Systems Plan`
- `Fulgora Progression and Balance Plan`

Expected focus includes recycling, waste, salvage, and TI-specific electromagnetic/technological progression changes.

### Stage 3

#### Voltaris
- `Voltaris Concept and Systems Plan`
- `Voltaris Progression and Balance Plan`

Expected focus:

- electromagnetics;
- electrical hazards;
- robotic enemies/faction;
- advanced logistics;
- Advanced Logistic Robots;
- associated materials and technologies.

#### Tectara
- `Tectara Concept and Systems Plan`
- `Tectara Progression and Balance Plan`

Expected focus:

- volcanic/seismic environment;
- advanced metallurgy;
- resilient infrastructure;
- unique resource exposure;
- current candidate location for Advanced Construction Robots.

#### Pyrosauria
- `Pyrosauria Concept and Systems Plan`
- `Pyrosauria Progression and Balance Plan`

Expected focus:

- advanced biochemistry;
- biological manipulation;
- pheromone systems where retained;
- custom wildlife/enemy faction;
- advanced military research;
- bio-warfare;
- environmental hazards.

### Stage 4

#### Aquilo
- `Aquilo Concept and Systems Plan`
- `Aquilo Progression and Balance Plan`

TI-specific changes remain largely open.

#### Zephyrus
- `Zephyrus Concept and Systems Plan`
- `Zephyrus Progression and Balance Plan`

Expected focus:

- gas-giant/atmospheric gameplay;
- floating infrastructure;
- gas harvesting;
- corrosive/pressure/wind hazards;
- advanced chemistry;
- fusion-related dependencies.


### Stage 5

#### Icarion's Grave
- `Icarion's Grave Concept and Systems Plan`
- `Icarion's Grave Progression and Balance Plan`

Icarion's Grave is the **first Stage 5 destination** and occurs before Solar System Edge.

Although it is a special deep-space asteroid-field destination rather than a normal terrestrial planet, it belongs in the staged planet/location planning queue.

Expected focus:

- reinterpretation/rework of the vanilla Shattered Planet role;
- persistent asteroid-field gameplay;
- asteroid mining;
- new TI asteroid/material types where justified;
- Promethium and other deep-space resources;
- space-platform infrastructure;
- platform deployment and logistics;
- deep-space hazards and defenses;
- late-game resource and military progression;
- preparation for Solar System Edge.

The full special-location scope remains defined in the dedicated Icarion's Grave section below.

#### Solar System Edge
- `Solar System Edge and Main Victory Plan`

Solar System Edge follows Icarion's Grave and is the **Stage 5 main-game victory destination**.

It does not currently require the standard two-plan planet structure unless future design gives it substantial persistent local gameplay.

Expected focus:

- final Stage 5 approach;
- platform/spacecraft readiness;
- required prior progression;
- final resource and technology gates;
- victory objective;
- victory trigger;
- transition into Stage 6/postgame;
- discovery/access to Archo Nexus.


### Stage 6 / Postgame

#### Archo Nexus
- `Archo Nexus Concept and Systems Plan`
- `Archo Nexus Progression and Balance Plan`

Expected focus:

- postgame integration;
- nanite technology;
- extreme cross-system production;
- orbital defenses;
- advanced/postgame military;
- all-world integration;
- infinite/endgame research boundaries.

---

## 9. Icarion's Grave — Special Location Planning Pair

Icarion's Grave is **not merely a route marker**.

The intended direction is to rework the vanilla Shattered Planet concept into a named, usable deep-space asteroid-field destination representing the shattered remains of Icarion.

It should receive two dedicated plans despite not being a normal planet.

### 9.1 Icarion's Grave Concept and Systems Plan

Scope should include:

- conversion/reinterpretation of the Shattered Planet destination;
- persistent asteroid-field location;
- orbital-style usable surface;
- asteroid mining;
- permanent or semi-permanent infrastructure;
- vanilla asteroid integration;
- new TI asteroid types where justified;
- selected new metals/materials available through asteroids;
- Promethium;
- deep-space resource extraction;
- asteroid spawn/composition rules;
- hazards;
- defenses;
- local production;
- platform interaction;
- platform deployment;
- possibility of launching platform starter packs from existing space platforms or equivalent space infrastructure;
- technical feasibility investigation for Factorio 2.x/available API behavior.

### 9.2 Icarion's Grave Progression and Balance Plan

Scope should include:

- access requirements;
- platform/ship readiness;
- required prior planets;
- asteroid-resource throughput;
- mining risk;
- combat pressure;
- local infrastructure costs;
- technologies obtained there;
- military progression where appropriate;
- materials needed for Solar System Edge;
- transition into main-game victory;
- later relationship with Archo Nexus.

---

## 10. Solar System Edge — Main Victory Plan

Solar System Edge is primarily the **Stage 5 main-game victory destination**.

Create:

### `Solar System Edge and Main Victory Plan`

Scope should include:

- final approach;
- required spacecraft/platform capability;
- resource requirements;
- required planetary completion state;
- final technology gate;
- victory objective;
- victory trigger;
- presentation of main-game completion;
- transition into Stage 6/postgame;
- unlocking or discovering Archo Nexus.

It does not automatically require a full planet-style two-plan structure unless future design gives Solar System Edge persistent local gameplay.

---

## 11. Planet-Specific Combat, Enemy, and Environmental Ownership

Global frameworks provide common rules.

Planet plans own specific implementations.

### Combat examples

- Nauvis: primitive and early military.
- Vulcanus: Stage 2 industrial/combat extensions as needed.
- Gleba: biological/environment-oriented combat.
- Fulgora: technological and salvage-oriented combat additions where justified.
- Pyrosauria: major advanced military and bio-warfare specialization.
- Icarion's Grave: deep-space military progression where appropriate.
- Archo Nexus: postgame military and advanced warfare.

### Enemy/faction examples

- Nauvis biters and expansion.
- Voltaris robotic faction.
- Pyrosauria biological/dinosaur-inspired faction.
- Archo Nexus orbital drones and postgame defenses.

### Environment examples

- Nauvis early pollution.
- Tectara seismic/volcanic hazards.
- Voltaris electrical/toxic environment.
- Pyrosauria ecological/biological hazards.
- Zephyrus pressure/wind/corrosive atmosphere.
- Aquilo cold and related survival constraints.
- Icarion's Grave deep-space/asteroid hazards.

---

## 12. Deferred Late-Development Planning

These areas are intentionally deferred until the modpack is much closer to stable beta or release.

### 12.1 Third-Party Compatibility Plan
Trigger: stable beta and relatively stable internal APIs/content.

### 12.2 Performance / UPS Optimization Plan
Trigger: profiling or beta testing demonstrates actual bottlenecks.

Do not prematurely redesign systems solely out of speculative performance concerns.

### 12.3 Tutorials, Tips, and Player Onboarding
Trigger: progression is sufficiently stable to document accurately.

### 12.4 Final Release Workflow and Polish
Trigger: public beta/release preparation.

---

## 13. Recommended Planning Order

A practical order is:

1. Chemistry and Oil Processing
2. Construction and Building Components
3. Recycling and Waste
4. Power / Steam / Electrical Machinery
5. Production Machine Framework
6. Fuel and Energy Carrier Framework
7. Logistics
8. Robotics
9. Fluid and Pipe Systems
10. Trains and Ground Transportation Improvement
11. Modules / Quality / Effects
12. Combat and Military Foundation
13. Enemies and Factions Framework
14. Environment / Pollution / Ecology Framework
15. Hazards and Environmental Resistance Framework
16. Research Infrastructure and Media Production
17. Space / Rockets / Asteroids / Space Transport
18. Planet planning pairs, progressively from Stage 1 onward
19. Icarion's Grave planning pair
20. Solar System Edge / Main Victory Plan
21. Archo Nexus planning pair
22. Unified Research, Technology, and Game Progression Plan
23. Recipe and Numerical Balance Framework
24. Art/UI/UX/Audio refinement
25. Mod packaging and migration policy consolidation
26. Late beta: compatibility, performance, onboarding, release polish

This order is not a hard dependency graph. Planet plans may be started earlier when enough upstream architecture exists.

---

## 14. Planning Inventory Summary

### Existing deep architecture
- Metallurgy
- Electronics
- Research System Foundation

### Major dedicated future plans
- Chemistry and Oil Processing
- Recycling and Waste
- Construction and Building Components
- Logistics
- Robotics
- Fluid and Pipe Systems
- Power / Steam / Electrical Machinery
- Modules / Quality / Effects
- Space / Rockets / Asteroids / Space Transport
- Combat and Military Progression Foundation
- Research Infrastructure and Media Production
- Unified Research, Technology, and Game Progression
- Recipe and Numerical Balance Framework

### Foundation/guideline documents
- Enemies and Factions
- Environment / Pollution / Ecology
- Production Machines
- Fuel and Energy Carriers
- Hazards and Environmental Resistance
- Trains and Ground Transportation Improvement
- Player Equipment / Armor / Personal Infrastructure
- Art / UI / UX / Audio
- Mod Packaging / Sub-Mod Architecture
- Save Migration / Versioning

### Location-specific plans
- 11 primary planets × 2 plans = **22 documents**
- Icarion's Grave × 2 plans = **2 documents**
- Total dedicated planet/location planning documents = **24**
- Stage 5 order: **Icarion's Grave → Solar System Edge → main-game victory**

### Special progression plan
- Solar System Edge and Main Victory Plan

### Planning-governance process
- Ideas Backlog review, triage, feasibility, placement, and scope-control pass for every major future concept-planning session

### Mostly vanilla by default
- Circuit network/automation behavior
- core train-network behavior
- general inventory behavior
- fundamental construction controls
- general save-system mechanics

### Deferred to stable beta/release
- third-party compatibility
- performance/UPS optimization
- tutorial/onboarding
- final release/polish workflow

---

## 15. Documentation Governance for Future Work

When documentation is updated from this report:

1. Do not convert a future-plan entry into an implementation claim.
2. Do not promote an idea into locked canon without owner approval.
3. Preserve existing locked subsystem authority.
4. Create placeholders for missing documents where needed.
5. Label placeholders clearly as planning required.
6. Cross-link planet plans to global framework owners.
7. Cross-link global frameworks to relevant planets.
8. Keep exact planet resources, recipes, enemies, hazards, and balance in the appropriate planet documents unless a global system genuinely owns them.
9. Keep `PROJECT_CONTEXT.md` implementation evidence separate from future design intent.
10. Treat this report as the current coordination source for **what planning work still needs to exist**, not as a replacement for the detailed plans that will eventually fill those slots.
11. Consult the latest `Plans/Idea_Backlog.md` before finalizing any system or planet plan.
12. Explicitly triage backlog ideas for adoption, placement, feasibility, deferral, merging, or rejection to control scope creep.

---

## 16. Key Refinements Captured by This Report

This report incorporates the following current owner direction:

- Thelian Industries enhances vanilla Factorio rather than replacing every vanilla mechanic.
- Every primary planet receives a separate Concept/Systems Plan and Progression/Balance Plan.
- Icarion's Grave receives the same two-plan treatment as a special asteroid-field destination.
- Stage 5 progression is **Icarion's Grave first, then Solar System Edge**, with Solar System Edge remaining the main Stage 5 victory destination.
- The Ideas Backlog must be reviewed during future concept sessions so every idea is deliberately adopted, placed, deferred, merged, researched, or rejected rather than silently accumulating scope.
- New asteroid types/materials may be added where TI's expanded material system justifies them.
- Space-platform deployment from existing space infrastructure is a design goal to investigate, not yet a confirmed API capability.
- Combat, enemies, ecology, hazards, equipment, and similar content use global frameworks plus planet-specific implementation.
- Trains remain vanilla at the network level but receive a dedicated improvement plan for diesel locomotives, direct-fluid-fuel concepts, steam-locomotive possibilities, and other locomotive/transport extensions.
- Circuit-network behavior remains mostly vanilla.
- Compatibility, UPS optimization, and onboarding are deferred until substantially later development.
- Nauvis resource naming should distinguish internal material identity from player-facing mineral localization; exact starting resources are finalized by Nauvis planning rather than treated as a settled cross-document conflict.
