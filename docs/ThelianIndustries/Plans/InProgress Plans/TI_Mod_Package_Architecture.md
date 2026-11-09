# Thelian Industries — Mod Package Architecture

**Status:** Locked architectural direction  
**Project:** Thelian Industries Factorio Modpack  
**Package prefix:** `ti-`  
**Purpose:** Define the intended package boundaries, ownership model, dependency direction, asset separation, world-content packaging, and future extensibility rules for Thelian Industries.

---

## 1. Architectural Principle

Thelian Industries uses a **modular Factorio modpack architecture**.

A separate Factorio mod package is created when it provides a meaningful boundary in one or more of the following areas:

- technical ownership;
- dependency management;
- code organization;
- release/update behavior;
- asset distribution;
- optionality;
- compatibility;
- reusable systems;
- world/content ownership;
- cross-system integration.

A planning document, gameplay concept, prototype class, or subsystem does **not** automatically require its own Factorio package.

Planning architecture may therefore be more granular than package architecture.

The package structure should remain compact enough to avoid unnecessary fragmentation while still preserving clear ownership and dependency boundaries.

---

## 2. Package Naming Convention

All active Thelian Industries mod/package identifiers use the compact form:

```text
ti-<package-name>
```

Examples:

```text
ti-core
ti-materials
ti-metallurgy
ti-chemistry
ti-worlds-base
```

The `ti` prefix represents **Thelian Industries**.

This replaces the older mixed use of:

```text
thelian-*
thelian-industries-*
ti-*
```

for the new active architecture.

### 2.1 Human-Facing Display Names

Factorio display titles may remain descriptive.

Example:

```text
Internal package ID:
ti-metallurgy

Display title:
Thelian Industries — Metallurgy
```

This keeps:

- filesystem names;
- dependency identifiers;
- archive filenames;
- internal mod identifiers;

compact while preserving the complete project identity in user-facing presentation.

---

## 3. Locked Package Architecture

```text
THELIAN INDUSTRIES
│
├── FOUNDATION / SHARED SUPPORT
│   ├── ti-lib
│   ├── ti-localization
│   ├── ti-core
│   └── ti-compat
│
├── ASSET PACKAGES
│   ├── ti-assets-core
│   ├── ti-assets-industry
│   └── ti-assets-worlds
│
├── SHARED MATERIALS
│   └── ti-materials
│
├── INDUSTRIAL / GAMEPLAY SYSTEMS
│   ├── ti-metallurgy
│   ├── ti-chemistry
│   ├── ti-electronics
│   ├── ti-power
│   ├── ti-logistics
│   ├── ti-recycling
│   ├── ti-research
│   └── ti-space
│
├── WORLD CONTENT
│   ├── ti-worlds-base
│   └── ti-worlds-expansion
│
├── CROSS-SYSTEM INTEGRATION
│   └── ti-progression
│
├── RESERVED FUTURE PACKAGES
│   └── ti-<future-system>
│
└── USER ENTRY POINT
    └── ti-modpack
```

This structure is the intended long-term package map.

Not every package requires immediate substantive implementation. Some packages may initially exist only as minimal Factorio mod scaffolds or reserved architecture entries.

---

## 4. Foundation and Shared Support Packages

### 4.1 `ti-lib`

**Purpose:** Provide reusable Lua libraries and common implementation functionality required by multiple TI packages.

Expected responsibilities may include:

- common Lua helpers;
- prototype-generation helpers;
- shared constants;
- registration utilities;
- validation helpers;
- reusable APIs;
- shared data-stage utility code.

#### Boundary

`ti-lib` should not become a gameplay-content package.

Its responsibility is reusable implementation infrastructure.

---

### 4.2 `ti-localization`

**Purpose:** Provide the centralized canonical localization interface for Thelian Industries.

`ti-localization` owns project-wide player-facing localization keys for TI-created content, including applicable:

- item names and descriptions;
- entity names and descriptions;
- fluid names and descriptions;
- technology names and descriptions;
- recipe localization;
- world/location names;
- mod-setting localization;
- GUI strings;
- runtime messages;
- other shared player-facing text.

Gameplay packages continue to own the prototypes and systems themselves. `ti-localization` owns their canonical localized presentation.

#### Dependency Direction

Packages exposing TI-localized player-facing content should depend on `ti-localization`.

`ti-localization` remains a low-level shared-support package and should not depend on every gameplay package whose locale keys it contains. Unused locale keys are acceptable when the associated gameplay package is not active.

#### Boundary

`ti-localization` does not own gameplay prototypes, recipes, technologies, progression, runtime systems, or physical graphical/audio assets.

Localization is deliberately **not** placed in `ti-modpack`, because `ti-modpack` must remain a dependency-only user entry point rather than a functional requirement for readable TI content.

Detailed localization file organization, namespace rules, and update conventions are defined in the companion **Mod Package Standards and Repository Conventions** document.

---

### 4.3 `ti-core`

**Purpose:** Provide the fundamental shared gameplay and technical infrastructure required by the broader Thelian Industries ecosystem.

Potential responsibilities include:

- globally shared prototype foundations;
- common categories or groups that do not belong to another specialized package;
- universally required runtime systems;
- shared configuration;
- common control-stage/event infrastructure;
- fundamental TI behavior used across multiple packages;
- common integration points.

#### Boundary

Content that clearly belongs to a specialized system should remain with that system rather than accumulating in Core.

---

### 4.4 `ti-compat`

**Purpose:** Provide a centralized home for compatibility with external mods and modpacks.

Potential responsibilities include:

- compatibility patches;
- prototype reconciliation;
- optional dependency integration;
- third-party technology integration;
- compatibility-specific recipe changes;
- compatibility-specific data-stage corrections;
- interoperability shims.

This package may remain minimal until actual compatibility work exists.

---

## 5. Shared Material Architecture

### 5.1 `ti-materials`

`ti-materials` is the authoritative package for **generic and reusable physical materials and components shared throughout Thelian Industries**.

Its purpose is to establish the common material vocabulary consumed by other packages.

Potential categories include:

```text
raw materials
ores
minerals
processed solids
powders
concentrates
ingots
plates
sheets
rods
beams
wire
glass
ceramics
polymers
paper
structural components
mechanical components
electrical components
fluid-system components
construction components
generic intermediate materials
universal components
```

### 5.2 Materials Ownership Rule

A prototype belongs in `ti-materials` when it represents a broadly reusable:

- material;
- physical form;
- intermediate;
- component;
- construction part;
- generic production input.

A specialized item remains with the system whose gameplay identity creates or requires that item.

Therefore:

```text
generic reusable physical material/component
→ ti-materials

system-specific object
→ owning system package
```

`ti-materials` is **not** intended to contain every Factorio prototype whose prototype type happens to be `item`.

---

## 6. Fluids and Gases

Fluids and gases should normally be owned by their associated processing domain rather than by `ti-materials`.

Generic ownership classes:

```text
molten material fluids
→ owning high-temperature/material-processing system

chemical liquids
→ owning chemical-processing system

industrial gases
→ owning chemical-processing system

specialized process fluids
→ system that defines the process

world-exclusive environmental fluids
→ appropriate world package unless promoted to a shared system
```

Other systems may consume those fluids or gases through declared dependencies without redefining them.

Ownership follows the system that defines the substance or process, not every system that consumes it.

---

## 7. Industrial and Gameplay System Packages

### 7.1 `ti-metallurgy`

Owns metallurgical processing and infrastructure rather than generic material identity.

Likely responsibilities include:

- ore preparation;
- crushing;
- washing;
- concentration;
- smelting;
- furnaces;
- casting;
- alloying;
- molten metals;
- metallurgical machines;
- metallurgical recipes;
- process categories;
- metallurgical technologies;
- metallurgical byproducts and interfaces.

---

### 7.2 `ti-chemistry`

Owns chemistry and chemical-processing architecture.

Likely responsibilities include:

- chemical fluids;
- industrial gases;
- acids;
- bases where justified;
- solvents;
- electrolytes;
- resins;
- petroleum processing;
- water treatment;
- chemical byproducts;
- chemical machines;
- chemistry recipes;
- chemistry technologies;
- chemical-processing categories.

---

### 7.3 `ti-electronics`

Owns specialized electronics production.

Likely responsibilities include:

- electronics-specific components;
- circuit production;
- semiconductor production;
- electronics machines;
- specialized electronics intermediates;
- electronics recipes;
- electronics technologies;
- associated system behavior.

Generic physical inputs consumed by Electronics may remain in `ti-materials`.

---

### 7.4 `ti-power`

Owns Thelian Industries electrical and power-generation systems.

Likely responsibilities include:

- power-generation equipment;
- boilers;
- engines;
- turbines;
- electrical transmission;
- transformers;
- hydropower;
- advanced power infrastructure;
- system recipes;
- power-related technologies;
- specialized power mechanics.

---

### 7.5 `ti-logistics`

Owns substantial Thelian Industries logistics extensions.

Potential scope includes:

- specialized belts;
- loose-material transport;
- loaders;
- specialized splitters;
- storage interfaces;
- advanced material logistics;
- associated transport infrastructure;
- logistics technologies.

---

### 7.6 `ti-recycling`

Owns shared recycling and waste-processing gameplay.

Potential scope includes:

- solid waste;
- recoverable waste;
- reprocessing;
- salvage systems;
- component recovery;
- electronics recovery;
- construction-material recovery;
- cross-system recycling interfaces;
- recycling machines;
- recovery recipes;
- recycling technologies.

World-specific recycling content may remain in the appropriate world package.

---

### 7.7 `ti-research`

Owns the **research mechanism**, not the complete global technology tree.

Potential responsibilities include:

- research buildings;
- research desks;
- laboratories;
- research computers;
- research media;
- physical research media;
- digital research media;
- research-specific items;
- research-specific recipes;
- research infrastructure;
- research runtime mechanics;
- research-media progression.

System-specific research content may remain with its owning system where appropriate.

---

### 7.8 `ti-space`

Owns reusable shared **space gameplay infrastructure**.

Likely responsibilities include:

- rocket systems;
- rocket tiers;
- cargo rockets;
- fluid cargo systems;
- generic asteroid systems;
- generic asteroid processing;
- platform mechanics;
- inter-platform logistics;
- space construction systems;
- shared orbital infrastructure;
- reusable space-transport mechanics.

World packages should generally depend on `ti-space` rather than `ti-space` depending upon individual worlds.

This dependency direction is intended to reduce future circular dependencies.

---

## 8. World Content Architecture

World content is consolidated into two primary packages rather than creating one Factorio package per destination.

Planning may remain world-specific even though binary/package ownership is consolidated.

---

### 8.1 `ti-worlds-base`

Owns Thelian Industries changes and extensions to the base/vanilla world set.

Expected scope includes appropriate TI content for:

- Nauvis;
- Luna;
- Vulcanus;
- Gleba;
- Fulgora;
- Aquilo;
- other modifications to existing Factorio/Space Age destinations.

Luna may be custom content while still belonging here because it participates in the initial/base-world progression group.

---

### 8.2 `ti-worlds-expansion`

Owns Thelian Industries original expanded world/location content.

Expected scope includes current custom progression destinations such as:

- Voltaris;
- Tectara;
- Pyrosauria;
- Zephyrus;
- Icarion's Grave;
- Archo Nexus;
- future original TI locations where appropriate.

Individual locations may have extensive internal directory structures without requiring separate Factorio packages.

Example:

```text
ti-worlds-expansion/
└── prototypes/
    └── worlds/
        ├── voltaris/
        ├── tectara/
        ├── pyrosauria/
        ├── zephyrus/
        ├── icarions-grave/
        └── archo-nexus/
```

---

## 9. Cross-System Progression

### 9.1 `ti-progression`

`ti-progression` is part of the locked package architecture.

Its implementation can occur later after enough subsystem and world architecture has stabilized.

**Purpose:** Provide global integration of progression across otherwise independently owned systems.

Potential responsibilities include:

- technology-tree integration;
- cross-system prerequisites;
- global stage gates;
- world-access requirements;
- progression sequencing;
- cross-package unlock coordination;
- global progression reconciliation;
- late-game integration;
- postgame integration.

### 9.2 Research vs. Progression

The architectural distinction is:

```text
ti-research
→ how research functions

ti-progression
→ how the overall game unlock structure is organized
```

Subsystems still own the gameplay content being unlocked.

Progression integrates that content into the global experience.

---

## 10. Reserved Future Package Policy

The architecture explicitly reserves the ability to add future packages when a system or subsystem grows large enough to justify independent ownership.

No additional future package should be created solely because a concept has:

- its own planning document;
- several prototype files;
- a distinct gameplay theme;
- temporary implementation complexity.

A future package becomes justified when separation provides a meaningful architectural advantage such as:

- substantial independent code ownership;
- substantial runtime/control-stage behavior;
- large or specialized prototype ownership;
- significant package-specific assets;
- clear dependency boundaries;
- independent release or maintenance needs;
- reusable functionality consumed by multiple packages;
- optional installation or compatibility value;
- avoidance of excessive complexity inside an existing package.

Generic naming convention:

```text
ti-<future-system>
```

### 10.1 Future-Package Decision Rule

When evaluating whether an existing subsystem should be promoted into its own package, ask:

1. Does it have a coherent responsibility that can be described independently?
2. Does the split reduce complexity rather than merely relocate it?
3. Can dependencies remain directional and understandable?
4. Does the package avoid unnecessary circular dependencies?
5. Is the subsystem large enough to justify independent maintenance?
6. Would users, developers, or release management gain a concrete benefit from the split?

If the answer is generally no, keep the subsystem inside its current owning package.

The architecture therefore remains extensible without pre-committing to speculative package names.

---

## 11. Asset Package Architecture

Three asset packages are adopted.

---

### 11.1 `ti-assets-core`

Owns shared and comparatively universal graphical/audio assets.

Potential content includes:

- item icons;
- material icons;
- common technology icons;
- UI graphics;
- common overlays;
- shared effects;
- generic shared sprites;
- common sound assets where appropriate.

---

### 11.2 `ti-assets-industry`

Owns industrial production and infrastructure assets.

Potential content includes:

- production machines;
- assemblers;
- furnaces;
- crushers;
- refineries;
- chemical machinery;
- recycling machinery;
- electrical infrastructure;
- power machinery;
- logistics entities;
- industrial animation sheets;
- industrial effects;
- industrial sounds.

---

### 11.3 `ti-assets-worlds`

Owns assets strongly associated with world/environment identity.

Potential content includes:

- terrain;
- tiles;
- rocks;
- cliffs;
- vegetation;
- fauna;
- enemies;
- environmental effects;
- custom world structures;
- planetary hazards;
- asteroid/location art;
- world-specific entities;
- ambient/environmental audio.

### 11.4 Asset Tie-Breaker Rule

```text
reusable across multiple systems/worlds
→ Core or Industry asset package

exists primarily because of industrial functionality
→ Industry asset package

exists primarily because of a world/location identity
→ Worlds asset package
```

Assets should not be distributed arbitrarily according to archive size alone.

Functional ownership determines placement first.

Physical archive-size or Mod Portal constraints may later justify additional physical splitting without changing the conceptual ownership model.

---

## 12. User Entry-Point Package

### 12.1 `ti-modpack`

`ti-modpack` is a **static dependency-only Factorio mod package** that serves as the primary user-facing installation entry point for the complete Thelian Industries modpack.

It is not a gameplay-code package.

Its expected contents are intentionally minimal:

```text
ti-modpack/
├── info.json
└── changelog.txt
```

Additional purely informational metadata files may be included if useful, but no gameplay implementation belongs here.

### 12.2 `info.json` Responsibility

The `info.json` file declares the required Thelian Industries packages that comprise the intended complete installation.

Its purpose is to allow a user to install **Thelian Industries Modpack** from the Factorio Mod Portal and allow Factorio's dependency system to resolve and obtain the required component packages.

Therefore:

```text
user installs ti-modpack
→ Factorio resolves required TI dependencies
→ complete intended package set is installed
```

### 12.3 No Gameplay Ownership

`ti-modpack` should not contain:

- prototypes;
- recipes;
- technologies;
- entities;
- items;
- runtime scripts;
- control-stage systems;
- compatibility logic;
- progression logic;
- asset ownership.

Disabling or removing the entry-point package itself does not conceptually constitute disabling the independently installed component packages. Component-package enablement is governed by their own installed/enabled states and dependency relationships.

### 12.4 Changelog Responsibility

The `ti-modpack` changelog serves as the **high-level stable-release changelog for the complete modpack**.

It may summarize:

- modpack release versions;
- major package additions;
- major system releases;
- important compatibility changes;
- major progression changes;
- significant breaking changes;
- aggregate release milestones.

Detailed package-specific implementation changes remain in the changelogs of their respective packages.

### 12.5 Aggregate Version Responsibility

`ti-modpack` has its own aggregate release version.

Whenever an officially supported dependency package receives a released version change that is incorporated into the complete Thelian Industries installation, `ti-modpack` also receives a corresponding version bump and changelog entry.

The component package version identifies that component's implementation release.

The `ti-modpack` version identifies the current official composition/release of the complete overhaul.

Detailed semantic versioning rules are defined in the companion package standards document.

---

## 13. Global Three-Level Ownership Model

The project adopts the following generic organizational model.

### Level 1 — Shared Definition

**Question:**

> What is the reusable thing or concept?

This layer owns broadly shared definitions that can be consumed by multiple other packages.

Typical generic examples include:

- common resources;
- generic components;
- shared data definitions;
- reusable physical materials;
- foundational categories;
- common abstractions.

The defining characteristic is **reuse across multiple systems**.

---

### Level 2 — System Behavior

**Question:**

> What system gives this thing gameplay meaning or behavior?

This layer owns:

- production processes;
- machines;
- specialized entities;
- recipes;
- runtime mechanics;
- system-specific items;
- subsystem interactions;
- gameplay behavior.

The defining characteristic is **functional ownership**.

---

### Level 3 — Progression Integration

**Question:**

> When, why, and under what conditions does the player gain access to it?

This layer owns or coordinates:

- ordering;
- prerequisites;
- progression gates;
- world/stage requirements;
- cross-system unlock relationships;
- global sequencing;
- progression reconciliation.

The defining characteristic is **integration across otherwise independently owned systems**.

---

## 14. Global Ownership Decision Rule

When deciding where new content belongs, evaluate it in this order:

1. **Is it a generic reusable definition?**
   - Place it in the appropriate shared-definition package.

2. **Is it intrinsically part of one gameplay system?**
   - Place it in the owning system.

3. **Is the concern primarily about when multiple systems interact or unlock?**
   - Place the integration responsibility in the progression/integration layer.

4. **Is it primarily world-specific?**
   - Place it in the appropriate world package.

5. **Is it purely graphical/audio content?**
   - Place the physical asset in the corresponding asset package while keeping gameplay definitions with their owning gameplay package.

This rule applies project-wide.

---

## 15. Repository Transition Strategy

The previous Thelian Industries implementation has been copied into an archive area of the repository before the new package structure is rebuilt.

That archived implementation is treated as:

- historical source material;
- migration reference;
- prototype reference;
- a possible source for selectively porting useful code;
- **not** the authoritative current architecture.

### 15.1 Archive Rule

Old implementation should be treated as:

```text
reference / migration source
```

rather than:

```text
active architectural authority
```

Code should be deliberately reviewed before being ported from the archive into a new package.

Old package ownership assumptions should not automatically be carried into the new architecture.

New active code must never depend on, import from, or reference archived packages or archived asset paths.

The archive is temporary migration/reference material. After all useful legacy implementation has been migrated, deliberately rejected, or rendered obsolete, the archive will be deleted manually by the project owner.

Automated tooling and Codex instructions must not delete the legacy archive unless the owner explicitly directs that deletion.

---

## 16. New Repository Scaffold Strategy

When a named package is formally instantiated in the active repository, it should use a **minimal valid package scaffold** rather than remain an empty directory or retain copied example-mod metadata.

At minimum, the package should immediately receive a correct package-specific `info.json` whose internal name, title, version, Factorio version, project metadata, and currently applicable dependencies represent the actual package.

Active source packages should also receive the compact repository documentation required by the package standards, such as their package README and applicable license file.

Implementation-specific lifecycle files and directories are created only when actually needed. Do not add fake loaders, fake prototypes, placeholder runtime code, or copied example dependencies merely to make a package look implemented.

A provisional active layout is:

```text
Mods/
├── Archive/
│   └── [legacy Thelian Industries implementation]
│
└── ThelianIndustries/
    ├── ti-lib/
    ├── ti-localization/
    ├── ti-core/
    ├── ti-compat/
    │
    ├── ti-assets-core/
    ├── ti-assets-industry/
    ├── ti-assets-worlds/
    │
    ├── ti-materials/
    │
    ├── ti-metallurgy/
    ├── ti-chemistry/
    ├── ti-electronics/
    ├── ti-power/
    ├── ti-logistics/
    ├── ti-recycling/
    ├── ti-research/
    ├── ti-space/
    │
    ├── ti-worlds-base/
    ├── ti-worlds-expansion/
    │
    ├── ti-progression/
    │
    └── ti-modpack/
```

Future system packages are added only when justified under Section 10.

---

## 17. Locked Named Package Count

The currently locked **named** architecture contains:

### Foundation / Shared Support
4 packages

### Assets
3 packages

### Shared Materials
1 package

### Industrial / Gameplay Systems
8 packages

### World Content
2 packages

### Cross-System Progression
1 package

### User Entry Point
1 package

**Total currently named package slots: 20**

Additional future packages are permitted under the Reserved Future Package Policy but are intentionally not pre-named.

---

## 18. Locked Direction Summary

The following architectural direction is accepted:

- Use `ti-*` for new Thelian Industries package identifiers.
- Maintain a modular Factorio modpack architecture.
- Maintain `ti-localization` as the centralized canonical localization support package.
- Keep Foundation, Assets, Materials, Systems, Worlds, Progression, and the User Entry Point as distinct architectural layers.
- Use `ti-materials` for shared generic physical materials and components.
- Keep specialized items with their specialized systems.
- Keep specialized fluids and gases with their process-owning systems.
- Separate shared-definition ownership from process/system ownership.
- Maintain `ti-research` as the research-mechanism package.
- Maintain `ti-progression` as the global progression-integration package.
- Consolidate world content primarily into `ti-worlds-base` and `ti-worlds-expansion`.
- Keep reusable space functionality in `ti-space`.
- Prefer world packages consuming shared space infrastructure rather than reversing that dependency relationship.
- Adopt `ti-assets-core`, `ti-assets-industry`, and `ti-assets-worlds`.
- Reserve the right to introduce additional `ti-<future-system>` packages only when specialization materially justifies an independent package.
- Keep `ti-modpack` as a static dependency-only Mod Portal entry point with no gameplay code.
- Use the `ti-modpack` changelog as the high-level stable-release changelog for the complete modpack.
- Preserve the previous implementation in an archive for selective migration.
- Rebuild the active directory from the clean package architecture.
- Use the generic three-level ownership model throughout the project.
- Instantiate new package directories with correct package-specific `info.json` metadata and minimal valid repository scaffolding; do not preserve fake example-mod code or metadata.
- Refine manifests, dependencies, code, prototype ownership, and implementation incrementally.

---

## 19. Companion Package Standards

The package architecture in this document is implemented and maintained according to the separate locked companion document:

```text
TI_Mod_Package_Standards.md
```

That document governs the per-package conventions beneath this architecture, including:

- standard package root/file vocabulary;
- package creation and `info.json` rules;
- dependency conventions;
- prototype/file naming;
- loader and runtime organization;
- independent component versioning;
- aggregate `ti-modpack` versioning;
- package and aggregate changelogs;
- migration conventions;
- centralized localization through `ti-localization`;
- package README conventions;
- asset-reference and attribution conventions;
- temporary archive rules.

The architecture and standards documents should be treated together when restructuring or implementing TI packages.

---

## 20. Deferred Build, Validation, Testing, and Deployment Standards

Detailed build, validation, runtime testing, packaging, deployment, release automation, and Mod Portal publishing workflow are intentionally **not** locked by this architecture document.

Those concerns require a separate planning cycle based on the actual local and remote repository environment.

Future planning should address areas such as:

- static source validation;
- dependency graph validation;
- localization completeness checks;
- changelog validation;
- source-to-ZIP packaging;
- build/staging directories;
- transfer to the Factorio development mods directory;
- Factorio launch/debug workflow;
- runtime/load testing;
- log collection;
- regression checks;
- development build tooling;
- release packaging;
- publishing workflow.

No specific PowerShell, C#, CI, or other build technology is selected here.

---

## 21. Architecture Lock Boundary

This document locks the **mod/package ownership architecture**.

The companion `TI_Mod_Package_Standards.md` locks the current **per-package source organization and maintenance conventions**.

The following remain intentionally separate future planning domains:

1. build/package generation;
2. validation/testing;
3. local deployment/debugging;
4. release automation and publishing workflow.

This separation allows the active source tree to be organized correctly now without prematurely coupling it to an undeveloped build and validation pipeline.
