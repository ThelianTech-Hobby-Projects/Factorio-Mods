# Thelian Industries — Design Foundation and Overhaul Principles

**Project:** Thelian Industries Factorio Mod / Modpack  
**Document type:** Canonical cross-system game-design foundation / constraint source  
**Status:** LOCKED FOUNDATION — owner-approved design direction  
**Intended repository path:** `docs/ThelianIndustries/01_Game_Design/01_Design_Foundation_and_Overhaul_Principles.md`

---

## 1. Purpose

This document defines the project-wide design reasoning, recurring patterns, constraints, and decision heuristics that future Thelian Industries concept plans must follow.

It does **not** replace subsystem owners such as Metallurgy, Electronics, Chemistry, Construction, Power, Research, Logistics, planets, or other future plans. Those documents continue to own their subsystem-specific architecture.

This foundation instead answers:

> **How does Thelian Industries generally decide what to simulate, what to abstract, how industry progresses, when items and machines deserve to exist, how recipes evolve, how systems integrate, and how scope is controlled?**

Future subsystem planning should apply this foundation first, then determine how the subsystem implements it.

---

# 2. Authority Boundary

This foundation governs project-wide:

- game-design reasoning;
- enhancement-overhaul philosophy;
- industrial progression philosophy;
- abstraction and granularity criteria;
- item and intermediate justification;
- recipe evolution;
- production-machine justification;
- automation philosophy;
- cross-system ownership and interfaces;
- bootstrap and transition design;
- scope and complexity control;
- architecture-versus-balance boundaries;
- planning-session operating rules.

Subsystem plans continue to own:

- subsystem-specific materials;
- items and component families;
- machines and entities;
- physical process rules;
- production chains;
- intrinsic capabilities;
- subsystem-specific exceptions;
- direct upstream/downstream interfaces.

The Research System Foundation and later unified Research, Technology, and Game Progression planning own global progression architecture, milestone placement, technology placement, prerequisite topology, research-media requirements, and final progression integration.

A subsystem may specialize a global principle where justified. A true contradiction with this foundation must be surfaced explicitly for owner review rather than silently overriding either source.

---

# 3. Project Identity — DLC-Scale Enhancement Overhaul

Thelian Industries is a **large-scale enhancement overhaul built on Factorio: Space Age**, intended to feel comparable in scope to an additional DLC-sized expansion rather than either a minor content mod or a complete total conversion.

Factorio: Space Age is the foundation, not a restriction.

Existing mechanics should:

- remain intact when they already provide an effective foundation;
- be extended, specialized, rebalanced, recontextualized, or integrated where additional depth is useful;
- be substantially overhauled or replaced when vanilla architecture cannot adequately support an important TI industrial, planetary, progression, or gameplay objective.

TI is expected to add substantial new content and systemic depth, including new planets, resources, materials, production chains, industrial processes, research structures, technologies, and cross-system interactions.

The degree of change is subsystem-specific. Some areas may remain almost entirely vanilla. Others may be heavily expanded or redesigned.

**The enhancement-overhaul philosophy governs why a system is changed, not how small the resulting change must be.** TI should not rebuild mechanics solely for novelty, complexity, realism, or differentiation, but it should also not preserve vanilla behavior when doing so would materially weaken the intended TI experience.

---

# 4. Industrial Progression Philosophy

## 4.1 Industrial capability over numerical escalation

Technological progression should make the factory feel more industrially capable, not merely numerically stronger.

Progression should preferentially emerge through:

- better materials;
- improved or alternate recipes;
- more sophisticated intermediates;
- better recovery and efficiency;
- new manufacturing methods;
- greater automation;
- increased precision;
- specialized production pathways;
- expanded recipe eligibility;
- improved standardization;
- better cross-system integration;
- genuinely new industrial capabilities.

A later recipe may use advanced materials or manufacturing methods to produce more useful output, reduce waste, improve recovery, or otherwise manufacture a canonical product more effectively without requiring a faster machine or shorter crafting time.

## 4.2 Primitive → standardized → specialized → advanced maturity model

TI recognizes a reusable industrial-maturity pattern:

1. **Primitive / direct production**
2. **Standardization and reusable common production**
3. **Industrial specialization**
4. **Advanced integrated manufacturing**

This is a **heuristic, not a mandatory four-tier template**.

Subsystems may use fewer stages, more stages, parallel branches, overlapping maturity levels, or a different progression structure where appropriate.

## 4.3 Complexity and automation should mature together

Production complexity is acceptable when it creates meaningful industrial gameplay, but increasingly complex systems should generally become increasingly automatable.

Early progression may legitimately contain:

- crude processes;
- direct materials;
- manual or semi-manual work;
- inefficient manufacturing;
- limited machinery.

As industry matures, the player should increasingly gain infrastructure capable of automating and managing that complexity.

The intent is not to remove complexity, but to prevent complex production from remaining permanent repetitive manual labor after the factory has technologically outgrown that stage.

---

# 5. Selective Realism and Abstraction

## 5.1 Preserve technological logic without requiring full procedural detail

TI uses **selective realism and real-world process plausibility together**.

Each subsystem determines its own appropriate balance between explicit simulation and abstraction according to:

- industrial identity;
- gameplay value;
- progression;
- desired player interaction;
- maintainability;
- cross-system value.

The general objective is:

> **Preserve the technological logic of reality without requiring the full procedural detail of reality.**

Real-world science, engineering, geology, chemistry, manufacturing practice, and technological history should inform TI design, but the existence of a real process or component does not automatically require an explicit item, fluid, recipe, machine, or technology.

## 5.2 Abstraction depth is subsystem-specific

Different subsystems—and different branches within one subsystem—may operate at different simulation depths.

A system may explicitly model multiple meaningful industrial transformations while abstracting dozens of low-value internal operations into:

- one recipe;
- one machine capability;
- one standardized intermediate;
- one component bundle.

Neither high detail nor high abstraction is inherently superior.

## 5.3 Hybrid and evolving abstraction

Hybrid representation is explicitly permitted and expected.

A production chain may:

- expose several detailed stages;
- compress other stages;
- use explicit defining components alongside standardized bundles;
- externalize previously implicit fabrication later when it becomes industrially meaningful;
- standardize or bundle repetitive low-level work as industry matures.

Technology may therefore cause both:

- **de-abstraction** — previously implicit work becomes an explicit automatable industrial process;
- **standardization/abstraction** — repetitive details become standardized assemblies or industrial packages.

## 5.4 Realism informs architecture; gameplay determines representation

Real-world research should help determine whether:

- a material fits an application;
- a process is technologically plausible;
- a machine reasonably performs an operation;
- geological relationships make sense;
- technological sequencing is credible;
- a distinction genuinely matters.

That evidence guides architecture but does not automatically dictate granularity.

TI may compress, combine, reorder, reinterpret, or otherwise adapt real processes when this improves gameplay, progression, clarity, automation, balance, cross-system integration, performance, or maintainability, provided the result remains internally coherent and technologically understandable.

---

# 6. Items, Components, and Intermediate Granularity

## 6.1 Intermediates must justify themselves

A new item or intermediate should earn its place through one or more meaningful roles, such as:

- manufacturing identity;
- repeated downstream use;
- progression value;
- automation value;
- cross-system interface value;
- material or technological identity;
- process specialization;
- efficiency or recovery improvements;
- explanation of how a product works;
- externalization of significant work previously hidden inside another recipe.

An item should not exist solely because the real-world object technically contains it.

## 6.2 Gameplay-driven hybrid granularity

TI uses a **flexible hybrid model** for components and intermediates.

No project-wide rule requires every subsystem to use either:

- compact standardized component bundles; or
- highly explicit individual parts.

Each subsystem should establish the granularity that best supports its industrial identity, gameplay, progression, architecture, and maintainability.

A subsystem may:

- rely heavily on standardized abstractions;
- expose many individual components;
- combine both approaches;
- use different granularity in different branches.

## 6.3 Defining-component principle

A component should remain explicit when hiding it would erase an important technological distinction.

Explicit representation is especially appropriate when a component communicates:

- what makes the product work;
- a major material transition;
- specialized function;
- environmental or reliability requirements;
- important cross-system dependency;
- progression identity.

## 6.4 Standardized bundles

Standardized components or bundles should abstract repetitive low-level fabrication where explicit representation would mainly create:

- inventory clutter;
- recipe clutter;
- narrowly differentiated SKUs;
- low-value fabrication steps.

## 6.5 Mixed recipe abstraction

A finished product may legitimately combine:

- standardized component bundles;
- explicit specialized components;
- subsystem-owned intermediates;
- direct processed materials.

All recipe ingredients do not need to exist at the same abstraction level.

Avoid representing the same low-level detail both explicitly and implicitly inside a bundle in the same context unless there is a deliberate gameplay reason.

---

# 7. Recipe Evolution and Product Progression

## 7.1 Canonical-output principle

When technology improves **how the same product is manufactured**, TI should generally retain the same canonical output and improve:

- materials;
- recipes;
- processes;
- automation;
- yield;
- recovery;
- waste behavior;
- manufacturing sophistication.

Improved manufacturing alone is not sufficient justification for creating another Basic / Advanced / Mk item.

## 7.2 Distinct advanced products

A separate advanced product is justified when the product itself changes in a gameplay-relevant way, such as materially different:

- function;
- performance class;
- operating environment;
- reliability;
- durability;
- precision;
- thermal/power capability;
- material technology;
- specialization;
- downstream role.

More advanced ingredients alone do not automatically justify another item.

## 7.3 Hybrid product-family progression

Same-output progression and distinct product progression may be combined.

A product family may contain genuinely different product classes while each individual product may also gain later manufacturing generations that still produce the same canonical item.

Product-family architecture should be intentional and reasonably coherent. New tiers should not accumulate automatically whenever a new technological era appears.

---

# 8. Production Machines

## 8.1 Capability-driven machine progression

TI prioritizes industrial-capability progression over repetitive machine-stat progression.

New physical machines are appropriate when technological development creates a meaningful new industrial capability through differences such as:

- operating principle;
- manufacturing process;
- temperature or pressure regime;
- electrical or chemical requirement;
- precision;
- material handling;
- automation;
- industrial scale;
- recipe families;
- specialized advanced materials;
- cross-system requirements.

Real-world industrial and historical development may strongly support machine progression when it creates meaningful gameplay, but historical existence alone does not require simulation.

Statistical improvements such as:

- crafting speed;
- energy efficiency;
- module capacity;
- productivity;
- throughput

may accompany a new machine but should not normally be its sole reason for existing.

### Mk-tier rule

Mk1/Mk2/Mk3-style proliferation is **discouraged, not prohibited**.

When proposed machines perform essentially the same role and differ mainly by statistics, planning should first determine whether progression can instead be represented through recipes, materials, process technology, automation, or expanded capability.

Simple statistical tiers carry a higher justification burden.

Later machines do not need to completely obsolete earlier machines; overlapping specialized roles are valid.

## 8.2 Subsystem-appropriate machine granularity

TI has no universal preference for either:

- broad general-purpose production machines; or
- highly specialized process machines.

Machine architecture follows subsystem identity.

A subsystem may use:

- a few broad machines;
- many specialized machines;
- a hybrid architecture;
- no unique machines where existing machinery from another subsystem already provides an appropriate industrial capability.

Real-world practice informs the choice without dictating it.

Each subsystem should establish an intentional machine-architecture philosophy during concept planning and later refine that architecture rather than accidentally changing its abstraction model through content accumulation.

The architecture is directional, not permanently immutable. Later evidence, cross-system requirements, implementation constraints, or substantially better gameplay may justify deliberate revision.

---

# 9. Shared Production Backbones and Exceptions

Subsystems should use shared production backbones when they provide a coherent, learnable, reusable industrial structure.

A common backbone can improve:

- player understanding;
- factory organization;
- infrastructure reuse;
- maintainability;
- progression clarity;
- cross-system consistency.

The backbone is a **default architecture, not a mandatory recipe template**.

Individual materials or processes may:

- skip stages;
- add stages;
- substitute specialized processes;
- require unique machinery or reagents;
- leave and later rejoin the common backbone;
- use optional advanced stages.

Exceptions are valid when meaningful differences in preparation, extraction/reaction mechanism, material state, machinery, reagents, environment, byproducts, sequencing, automation, planetary conditions, or technological role justify them.

Do not make processes artificially unique merely for variety.

---

# 10. Legacy, Transitional, and Retired Processes

TI distinguishes **legacy processes** from **intentionally transitional processes**.

## 10.1 Legacy processes

Previously unlocked normal production methods should generally remain available after better alternatives appear.

They may become economically or operationally obsolete because newer routes provide:

- better efficiency;
- better automation;
- less waste;
- superior inputs;
- better integration.

Economic or operational obsolescence is preferred over forced removal when continued availability does not damage the intended architecture.

## 10.2 Transitional processes

Recipe or process retirement is an exceptional tool appropriate primarily for deliberately temporary:

- bootstrap routes;
- prototypes;
- workarounds;
- emergency processes;
- transitional manufacturing.

Retirement should require:

- a clear transitional purpose;
- a viable permanent replacement;
- an understandable destination state;
- softlock-safe conditions.

Improved technology alone is not sufficient reason to remove an older process.

---

# 11. Bootstrap and Transitional Progression Tools

TI does not require every subsystem to use:

- bootstrap mechanics;
- prototype recipes;
- temporary machines;
- manual workarounds;
- transitional research.

It does not prohibit them either.

These are optional design tools chosen case by case.

If normal progression already provides a legitimate route into a subsystem, no artificial bootstrap layer is required.

If the intended design benefits from a primitive, prototype, transitional, manual, or limited route, TI may use:

- crude/prototype recipes;
- manual or semi-manual processing;
- existing general-purpose machinery;
- alternate recipes;
- temporary/transitional research;
- precursor machines;
- starting/imported materials;
- cross-subsystem production;
- other justified mechanisms.

Mandatory progression must still be checked for true circular dependencies and unintended softlocks. A required system must have some legitimate route forward.

Bootstrap routes may remain permanently available, become economically obsolete, or retire according to their intended role.

---

# 12. Research, Industrial Readiness, and Progression Frontiers

TI combines industrial-readiness progression with **milestone-bounded forward research**.

Major progression milestones divide research into broad frontiers or phase blocks.

Reaching a major milestone opens a body of technology that the player may research substantially ahead within, even if every researched capability has not yet been deployed.

Forward research is not unlimited.

The next major milestone remains locked until the player demonstrates the industrial, scientific, material, planetary, logistical, or infrastructural readiness that the current block was intended to develop.

## 12.1 Readiness belongs primarily at major boundaries

Industrial readiness should primarily gate meaningful progression frontiers rather than every individual technology.

Between milestones, the player may:

- accumulate knowledge;
- research several technologies;
- later redesign or expand factories to implement them.

## 12.2 Meaningful readiness

Milestone requirements may include:

- manufacturing capacity;
- sustained production/consumption;
- infrastructure;
- research-media production and consumption;
- experiments;
- planetary materials;
- logistics;
- another credible readiness indicator.

Research activity itself may already demonstrate part of that readiness.

Additional requirements should prove something not already demonstrated by research consumption rather than redundantly testing the same capability.

## 12.3 Knowledge and implementation remain distinct

Research does not bypass physical requirements.

Applying researched knowledge may still require:

- machines;
- materials;
- environments;
- planetary access;
- supporting industries;
- logistics.

General rhythm:

**Major Milestone → Open Research Frontier → Flexible Forward Research and Industrial Development → Demonstrated Readiness → Next Major Milestone**

---

# 13. Cross-System Ownership and Interfaces

Subsystem plans should clearly distinguish:

- **owned decisions**;
- **required interfaces**;
- **deferred dependencies**.

A consuming subsystem may specify what it needs from another system without taking ownership of how that upstream system produces it.

Examples:

- Electronics may require a metallurgy-derived conductor while Metallurgy owns the metal form and production.
- Construction may require a chemistry-derived polymer while Chemistry owns that production chain.
- Research may consume outputs from multiple systems without owning their production architecture.

Do not create duplicate machinery, materials, or parallel production architecture merely to preserve subsystem boundaries.

If an existing machine from another system provides an appropriate industrial capability, another subsystem may legitimately use it.

Subsystems may define broad intrinsic progression requirements but must not independently construct a competing global technology tree.

---

# 14. Architecture Before Numerical Balance

TI separates **architecture** from **numerical balance**.

Architecture should establish:

- what exists;
- why it exists;
- ownership;
- interfaces;
- production connectivity;
- capability relationships;
- broad progression intent.

Exact values should generally wait until the relevant content can be implemented, tested, and iterated.

Deferred numerical work may include:

- ingredient quantities;
- crafting times;
- speeds;
- power;
- pollution;
- yields;
- productivity;
- exact technology costs;
- pacing;
- final ratios.

Placeholder values used for implementation/testing are functional scaffolding, not automatically canonical final balance.

---

# 15. Scope and Complexity Control

Complexity must earn its gameplay value.

Every additional:

- item;
- component;
- machine;
- recipe layer;
- fluid;
- technology;
- mechanic;
- subsystem

should have a clear purpose.

Complexity is justified when it creates meaningful:

- industrial decision-making;
- technological progression;
- specialization;
- automation;
- system interaction;
- product identity;
- player comprehension.

Complexity added primarily for simulation detail, novelty, or uniqueness should be abstracted, merged, deferred, simplified, or rejected when it does not provide sufficient value.

Prefer:

- extending existing Factorio mechanics;
- reusing established TI systems;
- shared machinery where appropriate;
- shared production backbones;
- explicit cross-system interfaces;
- subsystem-specific specialization

over disconnected standalone mechanics.

---

# 16. Planning-Chat Operating Checklist

Every substantive future subsystem concept-planning session should automatically ask:

1. What does vanilla Factorio: Space Age already provide adequately?
2. What specific gameplay, industrial, or progression problem is TI solving?
3. What should technologically change as this industry matures?
4. Which transformations deserve explicit simulation?
5. What should remain abstract?
6. What items/intermediates genuinely justify inventory existence?
7. Which defining components should remain explicit?
8. Where should standardized bundles reduce low-value detail?
9. Can progression improve recipes/processes instead of adding another item tier?
10. Does each proposed new machine represent meaningful industrial capability?
11. Can existing machinery from this or another subsystem plausibly perform the process?
12. What shared production backbone should exist?
13. Which materials/processes genuinely justify exceptions?
14. What is this subsystem's intended machine architecture and abstraction philosophy?
15. How and when does complexity become automatable?
16. Does the subsystem need any bootstrap/prototype/transitional routes?
17. What does this subsystem own?
18. What interfaces does it require from other systems?
19. Which dependent decisions should remain deferred?
20. What intrinsic knowledge/progression requirements exist without designing the global tree?
21. Where are the major milestone/frontier boundaries relevant to this system?
22. What can be simplified, merged, reused, or removed?
23. Which decisions are architecture and which belong to later numerical balance?
24. Which relevant Idea Backlog entries should be promoted, deferred, merged, rejected, researched, or left for owner decision?
25. Does any proposed exception contradict a global rule, and if so, what concrete benefit justifies reopening it?

---

# 17. Locked Conflict-Resolution Register

| ID | Locked resolution |
|---|---|
| **CR-01** | Capability-driven machine progression; prioritize better industry over repetitive stat-only machine tiers. |
| **CR-02** | Machine granularity is subsystem-specific; broad, specialized, hybrid, and shared-machine architectures are all valid. |
| **CR-03** | Same-output manufacturing progression and genuinely distinct advanced products may coexist, including hybrid product-family architectures. |
| **CR-04** | Normal old processes generally persist; intentional transitional processes may retire under explicit conditions. |
| **CR-05** | Forward research is allowed within an opened milestone block; industrial readiness gates the next major frontier. |
| **CR-06** | Shared production backbones are defaults, with meaningful process-specific and hybrid exceptions. |
| **CR-07** | Component granularity uses a gameplay-driven hybrid model; explicit parts and standardized bundles coexist as justified. |
| **CR-08** | Selective realism and process plausibility work together; preserve technological logic without full procedural simulation. |
| **CR-09** | TI is a DLC-scale Space Age enhancement overhaul; vanilla is foundation, not restriction. |
| **CR-10** | Bootstrap/transitional mechanics are optional tools used only where needed; mandatory progression must still remain viable. |

---

# 18. Related Canonical Sources

This foundation should be cross-linked with, at minimum:

- [Document Authority](../DOCUMENT_AUTHORITY.md)
- [Document Map](../DOCUMENT_MAP.md)
- [Game Design Overview](00_Game_Design_Overview.md)
- [Research and Technology Design](03_Research_and_Technology_Design.md)
- [Game Progression](../02_Progression_and_Worlds/00_Game_Progression.md)
- [Production Systems Overview](../03_Production_Systems/00_Production_Systems_Overview.md)
- [Thelian Industries Metallurgy Plan](../Plans/InProgress%20Plans/TI_Metallurgy_Plan.md)
- [Thelian Industries Electronics Plan](../Plans/InProgress%20Plans/TI_Electronics_Plan.md)
- [Thelian Industries Research System Foundation Plan](../Plans/InProgress%20Plans/TI_Research_System_Foundation_Plan.md)
- [TI Planning Overview](../Plans/InProgress%20Plans/TI_Planning_Overview.md)
- [Idea Backlog](../Plans/Idea_Backlog.md) — speculative and non-canonical.

Detailed subsystem owners remain authoritative for subsystem-specific architecture.

---

# 19. Archive / Replacement Note

The former [Design Pillars and Overhaul Scope placeholder](../Archive/01_Game_Design/01_Design_Pillars_and_Overhaul_Scope.md) has been preserved in Archive and no longer serves as the active owner for this concern. Its contents were not silently merged into this foundation.

The archived file may later be reviewed to determine whether any material should be:

- retired;
- repurposed;
- merged elsewhere;
- retained solely as historical provenance.

Until that separate review occurs, uncertain legacy/placeholder material should not be promoted into this foundation automatically.
