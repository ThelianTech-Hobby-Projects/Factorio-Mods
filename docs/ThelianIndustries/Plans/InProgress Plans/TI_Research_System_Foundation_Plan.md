# Thelian Industries Research System Foundation Plan

**Project:** Thelian Industries Factorio Mod / Modpack  
**Document Type:** Canonical Research-System Foundation / Design Constitution  
**Status:** LOCKED FOUNDATION  
**Planning Phase:** Research and Technology Foundation  
**Scope:** Governing principles, constraints, allowed mechanisms, and architectural rules  
**Out of Scope:** Final technology tree, exact research costs, exact recipes, exact prerequisites, balance values, final research-machine progression, and implementation-specific Lua architecture

---

## 1. Purpose

This document defines the conceptual foundation of the Thelian Industries research and technology system.

It is **not** the finished technology tree.

It establishes the rules that future subsystem planning, research planning, game-progression planning, planetary progression, and technology-tree design must obey.

The final technology tree will be designed later, after the underlying production systems, materials, machines, entities, recipes, planets, logistics systems, and other major subsystems are sufficiently mature to be integrated into a coherent game-progression architecture.

The research system acts as the progression framework that connects those systems over time.

---

# 2. Foundation Authority

This document is the governing design authority for the structure and philosophy of the Thelian Industries research system.

Future subsystem plans may define:

- materials;
- items;
- intermediates;
- recipes;
- machines;
- entities;
- production chains;
- physical process rules;
- industrial dependencies;
- broad progression intent;
- intrinsic research/progression requirements.

However, those subsystem plans do **not** independently own the final technology-tree architecture.

The later unified **Research, Technology, and Game Progression Plan** will determine:

- technology placement;
- prerequisite chains;
- research-media requirements;
- milestone structure;
- stage/frontier placement;
- planetary integration;
- cross-subsystem dependencies;
- research costs;
- research timing;
- final progression-flow structure.

Existing locked subsystem decisions remain authoritative inputs and may not be silently overridden.

---

# 3. Research-System Core Identity

## Decision 1 — Core Identity and Purpose

**Status:** LOCKED

Research in Thelian Industries represents the **development, proof, and application of scientific, engineering, and industrial knowledge by the player's force**.

Progression should reflect the factory learning how to:

- understand;
- manufacture;
- operate;
- improve;
- automate;
- investigate;
- analyze;
- apply

something new.

Research is not merely the spending of an abstract research currency in exchange for unlocks.

As progression advances, the factory itself increasingly becomes part of the research apparatus, moving from:

1. direct experimentation;
2. demonstrated industrial capability;
3. documented science;
4. industrial research data;
5. computation;
6. specialized planetary research;
7. integrated interplanetary science.

Research does not need to simulate real-world R&D literally. It remains a gameplay abstraction. However, the abstraction must represent a meaningful acquisition, proof, application, or transfer of knowledge.

### Governing Principle

> **Research is the development, proof, and application of knowledge through the player's industrial civilization.**

---

# 4. Interaction-Driven Progression and Formal Research

## Decision 2 — Flexible Hybrid Research Architecture

**Status:** LOCKED

Thelian Industries uses a **flexible hybrid research architecture**.

Interaction-driven progression and formal scientific research are both first-class mechanisms throughout the entire game.

Neither mechanism is inherently limited to:

- early game;
- late game;
- a specific subsystem;
- a specific technology class;
- a specific planet.

A development may use:

- interaction alone;
- formal research alone;
- industrial contribution;
- another approved mechanism;
- a justified hybrid of multiple mechanisms.

The mechanism used must be justified by:

- what the development represents;
- the gameplay needs of that progression area;
- pacing;
- balance;
- technological meaning;
- subsystem logic.

Hybrid requirements should not be added merely to increase complexity.

No technology should routinely be double-gated when one meaningful progression mechanism is sufficient.

### Industrial Contribution

Industrial contribution milestones are explicitly permitted.

A player or force may demonstrate industrial capability by supplying meaningful materials, components, products, or other outputs.

This is conceptually similar to proving:

> "The factory can now sustain this level of industry."

It is not automatically the same thing as formal science.

### Architecture Rule

TI may use:

- hierarchical structures;
- branching structures;
- parallel research;
- milestone-driven research;
- mixed research structures;
- side branches;
- transitional branches;
- integrated progression networks.

The system must remain conceptually unified under this foundation.

### Deferred

The following remain deferred until actual progression planning:

- exact milestone types;
- exact milestone thresholds;
- exact item quantities;
- exact sequencing;
- exact technologies using each mechanism;
- exact research costs;
- exact technology-tree topology;
- progression balance.

---

# 5. Allowed Research and Progression Mechanisms

## Decision 3 — Tiered Mechanism Framework

**Status:** LOCKED

Thelian Industries uses a tiered toolbox of approved progression mechanisms.

## 5.1 First-Class Mechanisms

These are normal parts of TI research/progression design.

### Interaction / Industrial Milestones

Meaningful player or factory accomplishments, including:

- crafting;
- construction;
- processing;
- production;
- demonstrated industrial capability;
- meaningful progression achievements.

These should represent actual technological or industrial proof rather than arbitrary achievement counters.

### Formal Scientific Research

Deliberate scientific and engineering work conducted through approved research infrastructure and research media.

### Industrial Contribution Milestones

Supplying meaningful industrial products or resources to prove sustained factory capability.

### Exploration and Discovery

Progression associated with:

- reaching locations;
- discovering environments;
- encountering materials;
- identifying phenomena;
- opening previously unknown scientific domains.

### Experimentation, Measurement, and Observation

Progression through empirical investigation, including:

- experiments;
- measurements;
- tests;
- physical observation;
- scientific trials;
- analysis of real system behavior.

## 5.2 Specialized Mechanisms

These are valid but should be used only where the subsystem genuinely benefits from them.

### Scanning and Information Gathering

Research may grant methods for obtaining information, while application of those methods produces the actual knowledge.

### Planetary or Environment-Dependent Progression

Progression may depend on:

- reaching a world;
- accessing local materials;
- operating local industry;
- interacting with environmental conditions;
- developing a planet-specific scientific discipline.

### System-State Transitions

Progression may intentionally alter how an existing system behaves, including:

- recipe retirement;
- industrialization transitions;
- automation-state changes;
- force-level behavior changes;
- technological-state changes.

## 5.3 Mechanism Scope Controls

Every progression mechanism must represent an understandable:

- acquisition;
- demonstration;
- application;
- consequence

of knowledge under this foundation.

Progression mechanics must not exist solely to add:

- time;
- chores;
- arbitrary repetition;
- resource sinks;
- checklists.

Existing approved mechanisms should be reused where they adequately represent the progression.

New progression-mechanism categories require explicit architectural approval.

---

# 6. Research as Knowledge, Capability, and Technological State

## Decision 4 — Research Is More Than an Unlock

**Status:** LOCKED

A technology in Thelian Industries represents a meaningful change in the:

- knowledge;
- understanding;
- industrial capability;
- technological state

of the player's force.

Technology is not limited to unlocking recipes or machines.

A technology may legitimately change what the force can:

- manufacture;
- operate;
- analyze;
- improve;
- automate;
- investigate;
- recover;
- optimize;
- transition away from.

## 6.1 Permitted Technology Outcomes

Technologies may:

- unlock recipes;
- unlock machines or equipment;
- unlock process capabilities;
- unlock improved recipes for existing outputs;
- improve recovery where physically justified;
- improve energy efficiency;
- improve reagent efficiency;
- improve fluid efficiency;
- improve process efficiency;
- improve throughput;
- improve manufacturing productivity where justified;
- reveal information;
- enable information acquisition;
- enable automation behavior;
- enable prototype/bridge processes;
- alter force-level technological state;
- retire explicitly designated obsolete methods.

## 6.2 Governing Constraint

A technology effect must be a credible consequence of the:

- knowledge;
- capability;
- progression state

represented by the technology.

Research should not be used as a generic excuse to modify unrelated game systems.

However, a broad or indirect game-state change may be permitted when:

1. it is part of a well-documented progression-state transition;
2. there is a rational connection between the research and the resulting effect;
3. the effect serves a legitimate gameplay or subsystem purpose.

The governing test is not whether an effect is conventional.

The test is whether it has:

- a documented progression purpose;
- a credible causal relationship;
- a logical design justification.

If that justification does not exist, the effect should not be attached to the technology.

### Core Interpretation

> **An unlock is one form of capability change. It is not the definition of research.**

---

# 7. Process Advancement and Hardware Progression

## Decision 5 — Separate Knowledge Progression From Hardware Progression

**Status:** LOCKED

Thelian Industries should generally advance industry through:

- improved knowledge;
- improved recipes;
- improved processes;
- improved operating methods;
- improved efficiency;
- improved recovery;
- improved throughput;
- improved capability

rather than relying on repetitive Mk-tier machine proliferation.

Process progression and hardware progression are separate design levers.

A new machine should not exist merely because technology has advanced.

## 7.1 Hardware Justification Rule

A new machine or machine tier should represent a meaningful change in:

- industrial capability;
- operating regime;
- scale;
- specialization;
- automation;
- process requirements.

Valid conceptual reasons include:

- fundamentally different process category;
- new technological operating regime;
- materially different precision/control capability;
- automation or integration unavailable to previous equipment;
- substantially different industrial scale;
- new inputs or fluids;
- new temperature/pressure/environmental requirements;
- a major industrialization stage.

Literal real-world engineering proof is not required.

The gameplay distinction must be meaningful.

## 7.2 Statistical-Upgrades Rule

Pure statistical improvement is not sufficient justification for a new machine tier.

Higher:

- speed;
- efficiency;
- module capacity;
- arbitrary tier number

may accompany meaningful machine progression, but should not normally be the sole reason for it.

## 7.3 Canonical-Output Principle

Where an item fundamentally remains the same product, improved technology should generally improve **how that item is produced** rather than proliferating unnecessary:

- Basic;
- Improved;
- Advanced;
- Mk2;
- Mk3

variants.

Distinct products remain appropriate where the products actually represent different technologies or materials.

---

# 8. Machine Capability Versus Researched Knowledge

## Decision 6 — Separate Concepts, Separate Gates Only When Meaningful

**Status:** LOCKED

Physical machine capability and researched technological knowledge are distinct concepts.

A machine being physically capable of performing a process does not automatically mean the force knows how to perform that process.

Possessing knowledge does not automatically mean the factory has hardware capable of applying it.

### Conceptual Model

> **Usable industrial process = sufficient knowledge + sufficient physical capability**

However, those conditions should only be represented as separate progression gates when the distinction creates meaningful progression.

They must not be split merely to create extra prerequisites.

## 8.1 Valid Patterns

### Technology Unlocks Both

A machine technology may simultaneously provide:

- the machine;
- foundational operating knowledge;
- its basic native processes.

### Existing Hardware, New Knowledge

An existing machine can gain new process capability through later research.

### Knowledge Before Hardware

A process may be understood before suitable equipment exists.

### Prototype Workaround

Research may allow older or suboptimal machinery to execute a constrained prototype process to bootstrap the next hardware generation.

## 8.2 Default Machine-Introduction Rule

A newly introduced machine should normally arrive with enough immediately usable capability to justify building it.

Machines should not ordinarily unlock as empty shells requiring arbitrary extra technologies before performing any useful work.

## 8.3 Scope-Control Rule

Hardware capability and research knowledge should not be split into separate requirements unless each gate represents a distinct and meaningful technological step.

---

# 9. Technological Obsolescence and Transitional Spur Research

## Decision 7 — Exceptional Obsolescence and Transitional Spurs

**Status:** LOCKED

Technological obsolescence is a supported but exceptional industrial-transition mechanic.

The default behavior is:

> **Previously unlocked processes remain available after improved alternatives are developed.**

An older process becoming inferior is not, by itself, sufficient reason to remove it.

## 9.1 Transitional Spur Technologies

TI supports temporary research/progression nodes that branch from the permanent progression network.

These may provide:

- bootstrap capability;
- prototype capability;
- temporary workaround;
- transitional manufacturing.

They normally do not become permanent prerequisites for later mainline progression.

### Conceptual Structure

```text
Mainline Knowledge
    ├──> Transitional Spur ───> RETIRED
    └──> Permanent Mainline ──> Later Progression
```

The spur may depend on mainline knowledge.

The mainline should not normally depend on the spur unless later knowledge genuinely requires it.

## 9.2 Research Mechanism Is Independent

A transitional spur may use any approved progression mechanism:

- formal research;
- milestone;
- industrial contribution;
- experimentation;
- hybrid.

"Spur" describes its role in the progression graph, not how it is researched.

## 9.3 Retirement

Once the documented destination industrial state has been established, a transitional technology and its capabilities may be:

- retired;
- disabled;
- hidden;
- unresearched;
- otherwise removed from active technological state.

Exact runtime implementation is deferred.

## 9.4 Retirement Conditions

A temporary technology/process may be retired only when:

1. its transitional role is explicit;
2. a viable permanent replacement exists;
3. the destination state is clearly established;
4. retirement cannot create an unintended softlock;
5. removal reinforces intended progression;
6. the transition is understandable to the player.

## 9.5 Game-Wide Availability

Transitional spur architecture is available across TI, not only Electronics.

However, it must solve a real bootstrap or transition problem and must not become a routine mechanism for creating artificial research complexity.

---

# 10. Information and Knowledge Research

## Decision 8 — General Information Research with Knowledge-Acquisition Separation

**Status:** LOCKED

Information and knowledge technologies are a first-class research category.

A technology may improve what the force can:

- detect;
- measure;
- analyze;
- interpret;
- classify;
- understand

even when it provides no direct production bonus or recipe unlock.

## 10.1 Core Distinction

> **Research determines what the force is capable of knowing. Interaction determines what the force has actually learned about a specific target.**

### Knowledge Capability

What the force knows how to determine.

### Acquired Knowledge

What the force actually knows about a specific:

- object;
- location;
- deposit;
- system;
- phenomenon.

## 10.2 Information-State Architecture

The underlying world state and the force's knowledge of that state are separate concepts.

Research may improve understanding without changing the physical world being observed.

## 10.3 Direct-Information Exception

Research may directly reveal information when:

- the observations/data already exist;
- the research logically represents analysis or interpretation of those data.

The restriction is against unjustified omniscience, not against all direct information rewards.

## 10.4 Re-Observation

A subsystem may require:

- rescanning;
- re-observation;
- reanalysis;
- new measurements

when better information logically requires them.

Whether existing data can be reprocessed remains subsystem-specific.

---

# 11. Immediate Effects and Applied Capabilities

## Decision 9 — Implicit Hybrid Model

**Status:** LOCKED

Research completion immediately applies the:

- knowledge;
- capability;
- modifier;
- permission;
- technological-state change

represented by the technology to the player's force.

Some practical effects occur immediately.

Other effects immediately grant a capability whose practical result occurs only when:

- the player;
- the factory;
- the relevant world system

uses that capability.

Both behaviors are normal and may exist in the same technology.

## 11.1 No Universal "Apply Research" Layer

TI does not require a separate global activation step after research.

Where interaction is required, it should normally be the natural use of the researched capability itself, such as:

- manufacturing the recipe;
- operating the machine;
- performing the survey;
- running the experiment;
- deploying infrastructure.

## 11.2 Supporting Constraint

Do not add post-research interaction merely to make research appear more interactive.

Additional action is justified only when the action is inherently part of applying the researched knowledge.

---

# 12. Industrialization and Automation of Research

## Decision 10 — Research Evolves as an Industrial Production System

**Status:** LOCKED

The research system itself industrializes throughout progression.

New or immature scientific domains may involve:

- direct player interaction;
- experimentation;
- discovery;
- documentation;
- hands-on progression.

Established research domains should increasingly transition toward:

- automation;
- industrial scientific production;
- computerized processing;
- automated data generation.

## 12.1 Player Role Evolution

The player or multiplayer force should progressively move from directly performing routine scientific labor toward:

- designing research infrastructure;
- constructing it;
- supplying it;
- expanding it;
- optimizing it;
- troubleshooting it;
- choosing research direction;
- investigating new frontiers.

Mature research should function as part of the automated factory.

## 12.2 Domain-Relative Maturity

Research progression is not one fixed global ladder.

Different research domains may exist at different maturity levels simultaneously.

A new planet or scientific discipline may temporarily return the player to more direct investigation while established fields remain fully automated.

## 12.3 Mature Research Stability

Late-game research may settle into mechanically stable computerized infrastructure.

Further advancement may come from:

- new scientific disciplines;
- specialized data sources;
- planetary outputs;
- greater integration;
- computation;
- scale

rather than endless replacement of the core research machine.

## 12.4 Planetary Maturation

Planetary research may follow:

```text
Arrival / Exposure
    ↓
Discovery / Investigation
    ↓
Local Scientific Industry
    ↓
Automation
    ↓
Mature Transferable Research Data
```

## 12.5 Governing Maxim

> **Interaction at the frontier; automation after industrialization.**

## 12.6 Rigid Philosophy, Fluid Implementation

The research architecture is rigid in its governing philosophy but intentionally flexible in local implementation.

---

# 13. Research Media Philosophy

## Decision 11 — Knowledge Media, Industrial Maturity, and Legacy Conversion

**Status:** LOCKED

Research media represents both:

1. transferable scientific knowledge;
2. the technological maturity of the research system that generated, recorded, processed, and preserved that knowledge.

Research media evolves alongside the industrialization of science.

## 13.1 Three Conceptual Research-Maturity Tiers

### Primitive Tier

Primary conceptual medium: **Science Papers**

Represents:

- documented experiments;
- observations;
- engineering notes;
- theory;
- calculations;
- manually organized scientific knowledge.

Primitive research may begin hands-on and later gain limited automation.

### Intermediate Tier

Represents the migration from document-based science to digital science.

During this phase:

- research facilities increasingly automate experiments;
- Science Papers may be produced automatically;
- Electronics begins supporting digital scientific workflows;
- Science Papers can be digitized into advanced digital research media.

### Advanced Tier

Primarily computerized and data-driven.

Mature research directly produces digital research media representing:

- machine-generated measurements;
- experiments;
- datasets;
- simulations;
- computation;
- analysis;
- processed scientific knowledge.

The final name of the digital medium remains deferred.

Possible historical placeholders include:

- Research Data Drive;
- Scientific Data Drive;
- Research Databank;
- Data Packet.

## 13.2 Legacy Science-Paper Conversion

Science Papers become technologically obsolete in mature scientific domains without becoming mechanically useless.

An approved conversion pathway may remain:

```text
Science Papers
    ↓
Digitization / Processing
    ↓
Advanced Digital Research Medium
```

This allows:

- old stockpiles to retain value;
- old research installations to remain technically usable;
- legacy research to migrate into modern research.

The conversion should generally be less efficient than native digital research.

It is a fallback/migration route, not the optimal advanced workflow.

## 13.3 Native Digital Research

Advanced research eventually bypasses the paper intermediary:

```text
Scientific / Experimental Inputs
    ↓
Automated Experimentation
    ↓
Electronic Measurement
    ↓
Computation / Analysis
    ↓
Digital Research Medium
```

## 13.4 Legacy vs Transitional Obsolescence

### Transitional Obsolescence

Temporary bridge technology may be retired.

### Legacy Obsolescence

A formerly primary process remains functional but is economically or technologically inferior.

Science Papers generally become a **legacy** methodology rather than being deleted.

## 13.5 Canonical Digital Outputs

The same canonical digital research output may have:

- a legacy conversion recipe;
- a native advanced production route.

This follows TI's broader process-improvement philosophy.

---

# 14. Planetary Research Philosophy

## Decision 12 — Hybrid Planetary Scientific Lifecycle

**Status:** LOCKED

Each major planet should function as a specialized scientific and industrial domain rather than simply producing another generic science currency.

Planetary research should arise from the world's:

- materials;
- environment;
- phenomena;
- industries;
- technological problems.

## 14.1 Access Does Not Equal Mastery

Reaching a planet grants access to a new domain.

It does not automatically provide complete understanding of that domain.

Initial progression may include:

- exploration;
- experimentation;
- milestones;
- information gathering;
- local industry;
- formal research;
- other approved mechanisms.

## 14.2 Planetary Industry Connection

Mature planetary research must be meaningfully connected to the actual industrial work of that planet.

Planetary science should not be disconnected from planetary gameplay.

## 14.3 Flexible Planetary Mechanisms

Each planet may use a different mix of approved progression mechanisms.

No universal planetary formula is required.

## 14.4 Domain-Relative Research Maturity

A new planet may initially require direct investigation even while the wider civilization already possesses advanced computers and automated science.

The force has advanced tools but lacks local knowledge.

## 14.5 Mature Planetary Automation

Once the planet's industrial/scientific infrastructure matures, routine research should increasingly become automatable.

## 14.6 Specialized Transferable Knowledge

A mature planet may produce specialized digital research media.

However, TI does **not** currently require exactly one research item per planet.

Possible structures include:

- one broad medium;
- several disciplines;
- a shared digital carrier with specialized upstream data;
- another coherent design.

## 14.7 Planetary Media Is Not Required for Every Local Technology

Some local progression may be better represented through:

- discoveries;
- milestones;
- materials;
- infrastructure;
- experiments;
- existing research media.

Planetary research media is one mature output mechanism, not the universal gate for every planetary technology.

## 14.8 Canonical Planet/Subystem Alignment

Planetary research identity must follow current canonical:

- material allocation;
- subsystem architecture;
- world identity.

Historical concepts may inspire future science identities only where compatible with current design.

---

# 15. Cross-Planet Research Integration

## Decision 13 — Hybrid Integration Architecture

**Status:** LOCKED

Cross-planet research represents integration of genuinely distinct bodies of scientific and industrial knowledge.

It is not merely the accumulation of more research currencies.

## 15.1 Technology-Specific Integration

Most cross-planet technologies should require only the disciplines they genuinely depend upon.

No universal rule requires every late technology to consume every planetary research output.

## 15.2 Broad Multidisciplinary Technologies

Technologies that genuinely synthesize multiple disciplines may require several planetary knowledge streams simultaneously.

## 15.3 Explicit Integration Milestones

Major progression thresholds may use explicit integration technologies or milestones when the act of combining scientific domains is itself meaningful.

These should not become generic administrative gates.

## 15.4 Multiple Progression Mechanisms

Cross-planet integration may use:

- research media;
- industrial milestones;
- experiments;
- contributions;
- infrastructure;
- other approved mechanisms.

## 15.5 Mature Digital Research as the Scalable Layer

Mature planetary digital research outputs provide the primary scalable mechanism for repeatedly using established planetary knowledge in automated advanced research.

## 15.6 Increasing Integration Over Time

General conceptual trend:

```text
Single-Domain Technologies
    ↓
Planet-Specialized Technologies
    ↓
Selective Cross-Planet Technologies
    ↓
Deep Multidisciplinary Technologies
    ↓
System-Scale Integration
```

This is not a fixed tier count.

## 15.7 Preserve Planetary Identity

Cross-planet integration means combining specialized expertise.

It does not mean collapsing all science into one generic universal research currency.

## 15.8 Main Game vs Postgame

Main-game cross-planet integration and postgame total-system integration are distinct.

Stage 5 may require substantial interdisciplinary science.

Stage 6 may later represent deeper post-victory integration.

---

# 16. Main-Game and Postgame Research

## Decision 14 — Hybrid of Total-System Integration, Experimental Technology, and Long-Term Research

**Status:** LOCKED

Thelian Industries postgame uses a hybrid architecture combining:

1. total-system integration;
2. experimental technological development;
3. selectively justified long-term research.

## 16.1 Primary Postgame Identity

Postgame primarily extends TI's existing research constitution into deeper integration of:

- mature industries;
- planetary disciplines;
- research systems;
- interplanetary infrastructure.

Stage 6 assumes an already advanced civilization.

## 16.2 Experimental Postgame Technology

Postgame may introduce genuinely new:

- machines;
- processes;
- automation systems;
- information capabilities;
- industrial capabilities;
- scientific technologies.

These are optional for normal victory.

## 16.3 Long-Term Research

Postgame may include:

- extended finite technologies;
- repeatable technologies;
- true infinite technologies.

These support continued development but are not the sole purpose of postgame.

## 16.4 Scaling Justification

A technology should only scale indefinitely when indefinite scaling remains:

- logically credible;
- mechanically sustainable;
- economically meaningful;
- compatible with subsystem rules.

## 16.5 Powerful Does Not Mean Infinite

Postgame rewards may be:

- major finite upgrades;
- new capabilities;
- long capped chains;
- repeatables;
- true infinities.

## 16.6 Vanilla / Space Age as Precedent Only

Vanilla Factorio and Space Age repeatable technologies may provide inspiration but are not automatically inherited.

TI evaluates each long-term research category against its own subsystem rules.

## 16.7 Victory Boundary

Stage 5 remains the main-victory path.

Dedicated Stage 6 research extends the game after victory rather than becoming retroactively necessary for that victory.

---

# 17. Finite, Extended-Finite, Repeatable, and Infinite Research

## Decision 15 — Four-Class Longevity Framework

**Status:** LOCKED

Thelian Industries uses four intentional research-longevity classes:

1. **Finite**
2. **Extended Finite**
3. **Repeatable**
4. **True Infinite**

Finite technology remains the default.

## 17.1 Finite

Used when a development has a meaningful completion point.

## 17.2 Extended Finite

Used when repeated refinement is useful but unlimited scaling would eventually become:

- implausible;
- mechanically harmful;
- subsystem-breaking.

Extended-finite research may contain many levels while still ending at a defined cap.

## 17.3 Repeatable

Represents research that can be developed through multiple successive levels.

Repeatable does **not** inherently mean infinite.

A repeatable branch may terminate.

## 17.4 True Infinite

Reserved for effects that remain, at arbitrarily high levels:

- conceptually credible;
- mechanically sustainable;
- economically meaningful;
- compatible with subsystem rules;
- useful as long-term progression.

Infinite status must be justified individually.

## 17.5 Controlled Scaling

Long-duration research should use controlled scaling.

Diminishing returns are explicitly permitted.

Hard physical, technological, or subsystem limits remain authoritative.

## 17.6 No Infinite Research as Substitute for Missing Systems

Infinite research should not substitute for missing:

- renewable-resource systems;
- recycling systems;
- logistics systems;
- energy systems;
- production systems;
- other necessary industrial architecture.

## 17.7 Scope Clarification

This decision defines **only the framework and rules**.

It does **not** classify any specific technology as:

- finite;
- extended finite;
- repeatable;
- infinite.

Specific classifications are deferred to late-game planning, postgame planning, and progression balancing.

---

# 18. Research Pacing and Industrial Readiness

## Decision 16 — Industrial Readiness with Stage-Bounded Forward Research

**Status:** LOCKED

Thelian Industries uses industrial readiness as a broad pacing framework while allowing substantial player freedom to research ahead within already-accessible progression domains.

Research should remain connected to the force's current:

- scientific context;
- planetary context;
- technological context;
- progression context.

However, the player should not be required to immediately implement every researched capability before continuing through the available technology network.

## 18.1 Research Ahead Within an Open Domain

Once a:

- progression stage;
- scientific domain;
- planetary branch;
- research frontier

has been legitimately opened, the player may research substantially ahead of current industrial implementation capacity within that space.

Possessing researched knowledge and possessing mass-production capacity are separate states.

## 18.2 Major Gates at Meaningful Frontiers

Stronger progression gates should generally be concentrated around:

- new planetary tiers;
- new scientific domains;
- major industrial eras;
- other significant progression frontiers.

Internal progression within an already-open domain should generally be freer.

## 18.3 General Pacing Rhythm

```text
Open Domain
    ↓
Flexible Research and Factory Development
    ↓
Major Culmination Requirement
    ↓
Next Frontier
```

This does not imply one universal linear stage tree.

## 18.4 Researching Ahead Is Legitimate

Players may research a body of technologies first and later redesign or expand factories to implement several technologies together.

TI should not require production/construction milestones after every unlock merely to prove previous research was used.

## 18.5 Forward Research Does Not Unlock Closed Domains

Advanced research capacity cannot substitute for missing:

- planetary access;
- discoveries;
- specialized knowledge;
- justified frontier requirements.

## 18.6 Governing Shorthand

> **Research ahead within the frontier; prove readiness to open the next frontier.**

---

# 19. Bootstrap Viability and Softlock Prevention

## Decision 17 — Case-by-Case Development Quality Concern

**Status:** LOCKED

Softlock prevention and bootstrap viability are required development-quality concerns, but they are **not** a major governing mechanic of the research foundation.

Mandatory progression should have a viable route forward.

However, exact bootstrap and recovery solutions are handled case by case during:

- subsystem planning;
- implementation;
- integration;
- gameplay testing;
- debugging;
- balancing;
- QA.

## 19.1 Bootstrap Tools Remain Available

Possible tools include:

- prototype recipes;
- transitional spur technologies;
- alternate recipes;
- manual processes;
- other approved mechanisms.

They are available when a real dependency problem requires them.

They are not mandatory features of every subsystem.

## 19.2 Hard Recovery Is Not Automatically a Softlock

Recovery from:

- enemy attacks;
- factory destruction;
- infrastructure loss;
- poor planning

may legitimately be difficult.

The development requirement is to avoid unintended states where mandatory progression has no legitimate path forward.

## 19.3 Implementation Responsibility

Detailed dependency auditing, recovery behavior, and softlock handling belong primarily to implementation and testing rather than this foundation.

---

# 20. Research/Progression Authority Versus Subsystem Plans

## Decision 18 — Research and Game Progression Own the Technology-Tree Architecture

**Status:** LOCKED

The unified Research, Technology, and Game Progression plan owns the architecture of the Thelian Industries technology tree.

Individual subsystem plans do not independently own or finalize that architecture.

## 20.1 Subsystem Responsibility

Subsystem planning primarily defines:

- materials;
- items;
- recipes;
- machines;
- entities;
- processes;
- capabilities;
- physical dependencies;
- industrial dependencies;
- logical industrial progression.

Subsystems may document broad progression intent and research-related requirements.

## 20.2 Unified Research/Progression Responsibility

Later unified planning determines:

- global technology placement;
- prerequisites;
- research/progression mechanisms;
- research-media requirements;
- stage/frontier relationships;
- planetary integration;
- cross-subsystem dependencies;
- final progression balance.

## 20.3 Foundation Compliance

All future subsystem planning must remain compatible with this foundation.

This document acts as a design constraint during subsystem development.

## 20.4 Existing Locked Subsystem Requirements

Existing locked subsystem research/progression decisions remain authoritative constraints.

They must be integrated later unless explicitly reopened.

They do not themselves constitute a finished global technology tree.

## 20.5 Timing of Final Technology-Tree Design

The detailed technology tree should be constructed only after the underlying industrial systems are sufficiently mature for their dependencies to be understood.

## 20.6 Modular Later Planning

Later progression planning may be divided into:

- stage-specific plans;
- domain-specific plans;
- planetary progression plans;
- subsystem branch reviews;
- integration passes.

They must ultimately combine into one coherent progression graph.

## 20.7 Authority Boundary

> **Subsystem plans define what the industrial systems are and how they function.**
>
> **The Research and Game Progression plan defines how those systems are progressively revealed, unlocked, interconnected, and balanced across the game.**

---

# 21. Default-Reject Design Rule

## Decision 19 — Closed Design Set with Explicit Amendment Path

**Status:** LOCKED

The research-system design patterns authorized by Decisions 1–18 form the **approved design set** for the Thelian Industries research system.

> **Any research-system design pattern, progression mechanism, architecture, or governing behavior not already permitted by this foundation is explicitly rejected by default.**

TI does not need to maintain an exhaustive blacklist of every disallowed design pattern.

The approved architecture is defined positively by this document.

Everything outside it is rejected unless intentionally amended.

## 21.1 Default Rule

If a proposed research-system design:

- is not already authorized by this foundation;
- does not fit an existing approved mechanism;
- would introduce a new architectural pattern;
- would contradict an existing locked rule;

then it is **REJECTED by default**.

## 21.2 Amendment / Exception Path

A new pattern may only be considered when a specific subsystem or progression problem creates a genuine need.

It must go through an explicit design review / ADR-style process.

The proposal must answer, affirmatively and with documentation:

1. **Is the new pattern actually necessary?**
2. **Does an existing approved pattern fail to solve the problem adequately?**
3. **Does the new pattern logically fit the Thelian Industries research philosophy?**
4. **Does it provide a meaningful gameplay, industrial, scientific, or progression benefit?**
5. **Does it avoid unnecessary complexity and scope creep?**
6. **Does it remain compatible with existing locked subsystem decisions?**
7. **Does it avoid creating contradictions with this foundation?**
8. **Has the design been sufficiently researched or prototyped to show that it is likely to work?**

If these questions cannot be answered satisfactorily, the proposal remains rejected.

## 21.3 Amendment Authority

A new pattern is not silently accepted because it appears convenient during implementation.

It must be deliberately:

- proposed;
- justified;
- reviewed;
- researched where necessary;
- approved;
- documented.

If approved, the relevant locked foundation decision must be explicitly amended or extended.

## 21.4 Governing Rule

> **This foundation is the rule set. Everything outside it is rejected unless a documented, necessary, beneficial, and logically justified amendment is explicitly approved.**

This closes the research-system architecture for the current planning phase.

---

# 22. Consolidated Governing Principles

The following principles summarize the entire foundation.

1. **Research represents knowledge and capability, not merely unlock currency.**
2. **Interaction and formal research coexist throughout progression.**
3. **Use only approved progression mechanisms unless an amendment is explicitly approved.**
4. **Technology effects must have logical, documented relationships to the knowledge or state they represent.**
5. **Prefer process advancement over arbitrary machine-tier proliferation.**
6. **Separate machine capability from researched knowledge when that distinction creates meaningful progression.**
7. **Use technological obsolescence selectively; distinguish temporary spurs from persistent legacy methods.**
8. **Information itself can be a technology reward.**
9. **Research effects may apply immediately, through later use, or both.**
10. **Research industrializes and becomes increasingly automated.**
11. **Research maturity is domain-relative rather than one globally fixed tier.**
12. **Science Papers represent primitive/formal documented knowledge.**
13. **Intermediate research supports automation and paper-to-digital migration.**
14. **Advanced research becomes native digital scientific production.**
15. **Legacy Science Papers remain convertible rather than becoming dead inventory.**
16. **Planetary research emerges from planetary industry and scientific identity.**
17. **Cross-planet integration follows actual disciplinary needs rather than universal pack checklists.**
18. **Postgame combines system-scale integration, experimental technology, and selective long-term research.**
19. **Finite technology is the default; long-term scaling requires justification.**
20. **Players may research ahead within open frontiers.**
21. **Major progression gates belong at meaningful frontiers, not between every ordinary technology.**
22. **Softlock prevention is validated case by case during implementation and testing.**
23. **Subsystems define industrial systems; research/game progression owns final technology-tree integration.**
24. **Everything outside this approved design set is rejected unless formally amended.**

---

# 23. Research-System Maturity Model

The research system broadly progresses through three conceptual maturity tiers.

## Primitive

Characteristics:

- direct investigation;
- manual experimentation;
- documented findings;
- Science Papers;
- low automation;
- early formal research.

## Intermediate

Characteristics:

- industrialized laboratories;
- increasingly automated experimentation;
- automated Science Paper production;
- developing Electronics/data systems;
- digitization of paper research;
- transition from document-based to digital science.

## Advanced

Characteristics:

- computerized research;
- native digital scientific data;
- automated measurement;
- automated experimentation;
- computation;
- simulation;
- large-scale research production;
- planetary digital research outputs;
- cross-disciplinary integration.

These are maturity categories, not fixed global game-stage assignments.

A new planetary domain may temporarily operate at a lower research maturity level while established domains remain advanced.

---

# 24. Research Media Model

## Primitive Route

```text
Discovery / Experiment
    ↓
Observation / Analysis
    ↓
Science Papers
    ↓
Formal Research
```

## Intermediate Migration Route

```text
Automated Scientific Work
    ↓
Science Papers
    ↓
Digitization / Data Processing
    ↓
Digital Research Medium
```

## Advanced Native Route

```text
Scientific Inputs
    ↓
Automated Experimentation
    ↓
Electronic Measurement
    ↓
Computation / Analysis
    ↓
Digital Research Medium
```

The legacy conversion route remains available but should generally be less efficient than native digital research.

---

# 25. Planetary Research Lifecycle

General pattern:

```text
Planet Reached
    ↓
Scientific Domain Opened
    ↓
Exploration / Discovery / Experimentation
    ↓
Local Industrial Development
    ↓
Early Formal Research
    ↓
Research Industrialization
    ↓
Automated Planetary Science
    ↓
Transferable Planetary Research Data
    ↓
Cross-Planet Integration
```

This is a conceptual lifecycle, not a mandatory identical recipe for every planet.

---

# 26. Progression Pacing Model

General pacing rhythm:

```text
Open Research Frontier
    ↓
Flexible Internal Research
    ↓
Factory Development / Specialization
    ↓
Major Culmination Requirement
    ↓
Next Research Frontier
```

Researching ahead inside an open frontier is legitimate.

Opening a new frontier may require stronger proof of readiness.

---

# 27. Postgame Research Model

General postgame structure:

```text
Stage 5 Main Victory
    ↓
Stage 6 / Postgame
    ↓
Deep System-Wide Integration
    +
Experimental Technologies
    ↓
New Postgame Capabilities
    ↓
Extended-Finite / Repeatable / Infinite Research Where Justified
```

Postgame is not merely infinite bonuses.

It remains a continuation of the same research constitution at a higher level of industrial maturity and integration.

---

# 28. Technology Longevity Framework

| Class | Definition | Default Use |
|---|---|---|
| **Finite** | Development has a meaningful completion point | Default |
| **Extended Finite** | Many levels, explicit cap | Long refinement without unlimited scaling |
| **Repeatable** | Successive levels; may terminate | Structured long-form progression |
| **True Infinite** | No final level; strict justification required | Select long-term/postgame effects |

No specific technologies are assigned to these classes by this foundation.

---

# 29. Locked Existing Subsystem Constraints to Preserve

Unless explicitly reopened in later planning, future research/progression work must preserve existing subsystem boundaries, including:

- Initial Bronze does not require the technology-gated Blast Furnace.
- Better technology does not automatically mean higher material yield.
- Metallurgy prefers process/recipe advancement over excessive generic machine-tier proliferation.
- GPR research changes available knowledge/capability; it does not change geology.
- Deep Mining throughput does not enlarge geological reserves.
- Surface and Deep Mining productivity are currently finite/capped by default.
- Electronics allows improved recipes for the same canonical output item.
- Electronics separates machine capability from technology/research recipe availability.
- Electronics has a locked prototype bootstrap philosophy.
- Electronics allows a craft-triggered industrialization milestone and retirement of designated crude bootstrap recipes.
- Stage 5 is the main victory lifecycle.
- Stage 6 / Archo Nexus is post-victory.
- Nanite Science and any threshold-based higher infinite research remain candidate concepts, not locked implementation.
- The Ark is historical ancestry for the Archo Nexus concept and is not a separate current planet.

---

# 30. Explicitly Deferred to Later Planning

The following are intentionally **not** resolved by this foundation.

## Technology Tree

- exact technology names;
- technology IDs;
- exact prerequisite graph;
- exact technology count;
- exact branch topology;
- exact stage placement.

## Research Costs and Timing

- exact costs;
- exact research times;
- exact scaling;
- exact milestone quantities.

## Research Infrastructure

- exact Research Desk design;
- Research Lab design;
- Research Computer design;
- SuperComputer design;
- exact machine tiers;
- exact machine recipes;
- exact machine statistics.

## Research Media

- exact Science Paper recipe;
- final digital research-medium name;
- exact digitization recipe;
- exact conversion ratio;
- exact planetary media count;
- final planetary media naming;
- exact advanced/postgame media.

## Planetary Research

- exact planetary experiments;
- exact planetary milestones;
- exact planet-specific research recipes;
- exact technologies associated with each planet;
- exact automation transitions.

## Cross-Planet Integration

- exact combinations of planetary knowledge;
- exact integration milestones;
- exact logistics quantities.

## Postgame

- final Nanite Science role;
- exact Archo Nexus research architecture;
- exact experimental technologies;
- exact repeatable/infinite technologies;
- exact level caps;
- exact infinite formulas.

## Implementation

- Lua implementation;
- runtime recipe-state handling;
- exact control-stage systems;
- force-state storage;
- migration behavior;
- detailed softlock detection;
- research UI behavior;
- multiplayer scripting details.

---

# 31. Future Planning Workflow

Future subsystem planning should:

1. Define the actual production system first.
2. Identify broad progression intent only where useful.
3. Keep progression concepts compatible with this foundation.
4. Avoid prematurely finalizing technology-tree placement.
5. Record intrinsic research/progression requirements where necessary.
6. Defer global integration to later Research/Game Progression planning.

Future technology-tree planning should:

1. Gather the mature subsystem plans.
2. Map actual material, machine, process, planetary, and logistics dependencies.
3. Divide progression into manageable stage/domain planning modules.
4. Apply this foundation consistently.
5. Integrate the modules into one coherent global technology/progression graph.
6. Perform progression balancing.
7. Validate the design through implementation and in-game testing.

---

# 32. Amendment / ADR Procedure

Because Decision 19 establishes a closed approved design set, any architectural change outside this foundation requires a deliberate amendment.

A proposed amendment should document:

- the problem;
- the affected subsystem;
- why existing approved mechanisms are insufficient;
- the proposed new pattern;
- alternatives considered;
- gameplay benefit;
- technical implications;
- compatibility with locked decisions;
- implementation risk;
- whether prototyping/research supports the proposal;
- which foundation decision must be amended.

Possible outcomes:

- **APPROVED** — Foundation explicitly amended.
- **DEFERRED** — Potentially useful but not currently necessary.
- **BACKLOG** — Retained as an idea but not part of current architecture.
- **RESEARCH NEEDED** — More evidence/prototyping required.
- **REJECTED** — Does not justify amendment.

No new research-system pattern becomes canonical by implication.

---

# 33. Final Foundation Statement

The Thelian Industries research system is designed as a **flexible industrial knowledge-development architecture governed by rigid conceptual rules**.

It allows:

- discovery;
- experimentation;
- industrial milestones;
- formal research;
- information gathering;
- process improvement;
- technological state transitions;
- planetary science;
- digital research;
- cross-disciplinary integration;
- postgame experimental development;
- carefully controlled long-term research.

It does not prescribe one progression mechanism for every technology.

It does not reduce scientific advancement to generic colored science currencies.

It does not require every subsystem to build its own isolated research ecosystem.

It does not require the player to manually operate mature science forever.

It does not force the detailed technology tree to be designed before the industrial systems it must connect are understood.

Instead:

> **The factory progressively becomes capable of doing science.**
>
> **Interaction dominates the frontier of knowledge.**
>
> **Automation dominates mature scientific production.**
>
> **Research may advance ahead within an open frontier, while major progression transitions require justified readiness.**
>
> **Subsystems define the industrial world; the Research and Game Progression system later connects that world into one coherent technological journey.**
>
> **This foundation is the approved design set. Everything outside it is rejected unless explicitly justified and approved through amendment.**

---

# 34. Foundation Completion Status

**Research-System Foundation:** COMPLETE FOR CURRENT PLANNING PHASE

The next appropriate work is **not** to continue inventing additional foundation rules.

The project should return to subsystem planning and continue defining:

- production systems;
- machines;
- items;
- recipes;
- materials;
- planets;
- logistics;
- power;
- chemistry;
- space systems;
- combat;
- other industrial systems.

Once those systems are sufficiently mature, a dedicated Research, Technology, and Game Progression planning phase can use this document as its governing constitution to construct the actual technology tree and progression architecture.
