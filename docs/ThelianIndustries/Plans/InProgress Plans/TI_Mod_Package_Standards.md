# Thelian Industries — Mod Package Standards and Repository Conventions

**Status:** Locked  
**Target:** Factorio 2.1 + Space Age  
**Companion architecture:** `TI_Mod_Package_Architecture.md`

---

## 1. Governing Technical Rule

All architectural claims about:

- Factorio lifecycle files;
- `info.json`;
- dependencies;
- feature flags;
- prototype capabilities;
- runtime APIs;
- migrations;
- localization;
- package behavior;

must correspond to capabilities supported by the Factorio version targeted by Thelian Industries.

Do not invent lifecycle files, manifest fields, API capabilities, or special directories for organizational symmetry.

If TI design intent conflicts with verified Factorio behavior:

```text
verified Factorio behavior
→ controls technical feasibility

TI design intent
→ adapts to verified Factorio behavior
```

---

## 2. Factorio-Recognized vs. TI-Conventional Structure

The project distinguishes two structural classes.

### Factorio-Recognized Structure

Files and directories that Factorio itself recognizes and processes.

### TI Project Conventions

Files and directories created for source organization, development, documentation, or governance.

For example:

```text
prototypes/
scripts/
README.md
LICENSE.md
ATTRIBUTION.md
```

are useful TI structures, but they do not automatically receive lifecycle behavior merely because they exist.

---

## 3. Factorio-Recognized Root Files

The standard Factorio mod lifecycle supports:

```text
info.json

changelog.txt
thumbnail.png

settings.lua
settings-updates.lua
settings-final-fixes.lua

data.lua
data-updates.lua
data-final-fixes.lua

control.lua
```

`info.json` is the fundamental manifest.

The remaining files exist only when the package actually requires their associated functionality.

Factorio officially executes the settings and prototype stages in three rounds:

```text
settings.lua
settings-updates.lua
settings-final-fixes.lua
```

and:

```text
data.lua
data-updates.lua
data-final-fixes.lua
```

respectively.

---

## 4. Standard Package Philosophy

All TI packages use the same organizational vocabulary, but they should not contain identical boilerplate.

```text
consistent organization
≠
identical filesystem contents
```

Examples:

```text
no settings
→ no settings files

only basic settings
→ settings.lua

no runtime behavior
→ no control.lua

no migrations
→ no migrations/

no final-fixes work
→ no data-final-fixes.lua
```

A package should contain only structures justified by its implementation.

---

## 5. Typical Mature TI Gameplay Package

A realistic mature package might look like:

```text
ti-example/
├── info.json
├── README.md
├── LICENSE.md
├── changelog.txt
├── thumbnail.png
│
├── settings.lua
│
├── data.lua
├── data-updates.lua
├── data-final-fixes.lua
│
├── control.lua
│
├── prototypes/
│   ├── categories/
│   ├── items/
│   ├── fluids/
│   ├── entities/
│   ├── recipes/
│   └── technologies/
│
├── scripts/
│   ├── events/
│   ├── controllers/
│   ├── interfaces/
│   ├── state/
│   └── lib/
│
└── migrations/
```

This is an example of possible maturity, **not a scaffold that every package must reproduce**.

---

## 6. Minimal Package Creation Standard

When a package is formally instantiated in the active source tree, it should immediately become a correctly identified TI package.

A minimal package may initially contain:

```text
ti-example/
├── info.json
├── README.md
└── LICENSE.md
```

Do not leave copied template metadata such as:

```text
example-mod
AuthorName
Example Mod Files
```

inside active TI packages.

Do not create fake implementation code merely to populate the directory.

---

## 7. Universal TI Platform Requirement

Thelian Industries is explicitly a **Factorio: Space Age overhaul**.

It is not intended to operate as a base-game-only Factorio modpack.

Therefore every TI package uses the same baseline platform requirement:

```text
Factorio 2.1
+
Factorio: Space Age
```

The `info.json` baseline should therefore use:

```json
{
  "factorio_version": "2.1",
  "dependencies": [
    "base >= 2.1.0",
    "space-age >= 2.1.0"
  ]
}
```

Neither `base` nor `space-age` is optional for Thelian Industries.

---

## 8. Universal Space Age Feature Requirement

Every TI package additionally declares the project-wide Space Age baseline:

```json
{
  "expansion_required": true,
  "quality_required": true
}
```

This is intentional even for packages that individually contain relatively little expansion-specific code.

The entire Thelian Industries ecosystem is designed for players who own and run Space Age.

### 8.1 Why Keep Both the Dependency and Flags?

These solve different concerns.

```text
"space-age" dependency
→ Space Age participates in the mod dependency/load graph

expansion_required / quality_required
→ declares use/availability of expansion-gated Factorio capabilities
```

Therefore the TI baseline is:

```json
{
  "factorio_version": "2.1",
  "dependencies": [
    "base >= 2.1.0",
    "space-age >= 2.1.0"
  ],
  "expansion_required": true,
  "quality_required": true
}
```

---

## 9. Other Space Age Feature Flags

Factorio also supports specialized expansion flags such as:

```text
rail_bridges_required
spoiling_required
freezing_required
segmented_units_required
expansion_shaders_required
space_travel_required
```

TI will **not automatically add every specialized flag to every package merely for consistency**.

Instead:

```text
expansion_required
quality_required
→ universal TI baseline

other expansion flags
→ add when the package actually uses the associated gated capabilities
```

World/space packages may therefore require more expansion flags than a localization or utility package.

---

## 10. Standard `info.json`

Representative TI manifest:

```json
{
  "name": "ti-example",
  "version": "0.1.0",
  "title": "Thelian Industries — Example",
  "author": "<STANDARD PROJECT AUTHOR>",
  "contact": "<STANDARD PROJECT CONTACT>",
  "homepage": "<STANDARD PROJECT HOMEPAGE>",
  "description": "<PACKAGE-SPECIFIC DESCRIPTION>",
  "factorio_version": "2.1",
  "dependencies": [
    "base >= 2.1.0",
    "space-age >= 2.1.0"
  ],
  "expansion_required": true,
  "quality_required": true
}
```

Project author/contact/homepage values should eventually be defined once and reused across all packages.

---

## 11. Dependency Syntax

Factorio dependency declarations use:

```text
<prefix> <mod-name> <version-comparison>
```

Example:

```text
? some-mod >= 1.2.0
```

Supported version comparison operators are:

```text
<
<=
=
>=
>
```

The version comparison is optional.

---

## 12. Dependency Prefix Reference

The project documentation explicitly retains the actual Factorio symbols.

| Dependency type | Prefix | Example |
|---|---|---|
| **Hard requirement** | *(none)* | `"ti-materials >= 0.3.0"` |
| **Optional dependency** | `?` | `"? other-mod"` |
| **Recommended dependency** | `+` | `"+ other-mod"` |
| **Hidden optional dependency** | `(?)` | `"(?) other-mod"` |
| **Load-order-neutral dependency** | `~` | `"~ other-mod"` |
| **Incompatibility** | `!` | `"! incompatible-mod"` |

### 12.1 No Prefix — Hard Requirement

Use when the other package is required for the consuming package to function.

Example:

```text
"ti-materials >= 0.3.0"
```

### 12.2 `?` — Optional Dependency

Use when TI can operate without the package but provides integration when it is present.

### 12.3 `+` — Recommended Dependency

Use only when a dependency is not technically mandatory but forms part of the recommended experience.

### 12.4 `(?)` — Hidden Optional Dependency

Use for specialized optional integration that should not be presented as a normal dependency recommendation.

### 12.5 `~` — Load-Order-Neutral Dependency

Use only when TI genuinely needs the dependency relationship without requiring dependency-driven load ordering.

This should be comparatively rare.

### 12.6 `!` — Incompatibility

Use only for a verified incompatibility.

Do not mark another mod incompatible simply because compatibility has not been implemented yet.

---

## 13. TI Internal Dependency Rule

Internal dependencies represent actual architectural consumption.

A package declares another TI package when it consumes:

- prototypes;
- shared definitions;
- Lua functionality;
- localization;
- assets;
- runtime interfaces;
- other implementation required from that package.

Dependencies must not exist merely to artificially rearrange load order.

---

## 14. Dependency Direction

Conceptually:

```text
Factorio 2.1 + Space Age
          ↓
foundation/shared support
          ↓
shared definitions
          ↓
gameplay systems
          ↓
world content
          ↓
cross-system progression
          ↓
ti-modpack
```

This does **not** mean every package depends on every package shown above it.

It defines the expected direction of ownership.

Circular dependencies are prohibited.

---

## 15. Centralized Localization

Canonical TI localization remains owned by:

```text
ti-localization
```

Gameplay packages own prototypes and mechanics.

`ti-localization` owns canonical player-facing text.

```text
prototype
→ owning gameplay package

localized name/description
→ ti-localization
```

Gameplay packages exposing TI-localized content depend on `ti-localization`.

`ti-localization` does not depend back on all those gameplay packages.

---

## 16. Localization Structure

A realistic structure is:

```text
ti-localization/
├── info.json
├── README.md
├── LICENSE.md
└── locale/
    └── en/
        ├── mods.cfg
        ├── items.cfg
        ├── fluids.cfg
        ├── entities.cfg
        ├── recipes.cfg
        ├── technologies.cfg
        ├── worlds.cfg
        ├── settings.cfg
        ├── gui.cfg
        └── messages.cfg
```

Files may be subdivided further as localization volume increases.

The design requirement is centralized ownership, not a fixed number of files.

---

## 17. Prototype Namespace Standard

New TI prototypes use:

```text
ti-*
```

where practical.

```text
new TI prototype
→ ti-* namespace

existing Factorio prototype being modified
→ retain original prototype ID
```

---

## 18. Source Naming

TI convention:

```text
directories and Lua source filenames
→ lowercase kebab-case

Lua variables/functions
→ snake_case
```

Factorio-required filenames retain their required names.

---

## 19. Prototype Organization

TI uses:

```text
prototypes/
```

as an organizational convention.

Potential categories include:

```text
categories/
items/
fluids/
entities/
recipes/
technologies/
equipment/
signals/
worlds/
utility/
```

Only required directories should exist.

Factorio does not automatically scan this directory. `data.lua` or another loaded module explicitly imports the files.

---

## 20. Loader Policy

Entry-point files should remain thin.

Example:

```lua
require("prototypes.items")
require("prototypes.entities")
require("prototypes.recipes")
require("prototypes.technologies")
```

General principle:

```text
Factorio lifecycle entry point
→ orchestrates

source module
→ implements
```

---

## 21. Runtime Source

Where runtime scripting exists:

```text
control.lua
→ bootstrap / event registration

scripts/
→ runtime implementation
```

Potential TI convention:

```text
scripts/
├── events/
├── controllers/
├── interfaces/
├── state/
└── lib/
```

The `scripts/` directory has no special engine behavior by itself.

---

## 22. Independent Package Versioning

Component packages version independently.

Example:

```text
ti-materials       0.4.2
ti-metallurgy      0.3.1
ti-localization    0.2.7
ti-worlds-base     0.1.5
```

Unchanged packages do not receive meaningless version bumps because another component changed.

TI semantic policy:

| Change | Meaning |
|---|---|
| Patch | Corrections and safe small changes |
| Minor | Meaningful compatible functionality/content |
| Major | Major breaking package/API/save/progression boundary |

---

## 23. Aggregate `ti-modpack` Version

`ti-modpack` is the official aggregate release identifier.

Whenever a released dependency incorporated into the official pack changes version:

```text
component version changes
→ official complete-pack composition changes
→ ti-modpack version changes
```

General severity:

```text
component bugfix release
→ aggregate patch

meaningful compatible feature release
→ aggregate minor

major pack-wide breaking transition
→ aggregate major
```

---

## 24. Changelog Policy

Every independently released package maintains:

```text
changelog.txt
```

Newest release first.

Dates use:

```text
YYYY-MM-DD
```

Use Factorio-compatible changelog syntax.

Do not place fake `Unreleased` entries inside the Factorio changelog.

`ti-modpack/changelog.txt` provides the high-level aggregate history.

Component changelogs provide package-level detail.

---

## 25. First-Party Dependency Version Floors

Published TI dependencies should normally specify minimum compatible versions when the consumer relies on version-specific functionality.

Example:

```text
"ti-materials >= 0.3.0"
```

instead of an unnecessarily vague:

```text
"ti-materials"
```

Package versions remain independent.

---

## 26. Migrations

Factorio recognizes:

```text
migrations/
```

containing:

```text
*.json
*.lua
```

migration files.

TI rules remain:

- migration ownership follows the package owning the affected state;
- published migration filenames are not reused;
- old migrations should be treated as historical;
- migrations should exist only where genuinely required.

---

## 27. README Standard

Every active source package receives a compact developer-facing README.

It should include:

- package identity;
- current implementation status;
- responsibility;
- ownership boundary;
- currently implemented functionality;
- important dependencies;
- exposed interfaces where relevant;
- canonical design/documentation references.

It should describe **current implementation**, not duplicate future concept plans.

---

## 28. Asset Ownership

Physical shared assets belong to:

```text
ti-assets-core
ti-assets-industry
ti-assets-worlds
```

Gameplay definitions remain with their owning gameplay packages.

```text
prototype definition
→ gameplay owner

physical sprite/audio
→ appropriate asset owner
```

A gameplay package referencing an asset package declares that dependency.

---

## 29. Asset Attribution

Asset packages maintain provenance/licensing information, normally through:

```text
ATTRIBUTION.md
```

Tracking should include:

- asset path;
- source;
- creator;
- license;
- original filename;
- modification status;
- attribution requirements;
- relevant notes.

---

## 30. Legacy Archive

The old TI implementation archive is temporary migration/reference material.

New code must never:

- depend on archived packages;
- import archived Lua;
- reference archived assets;
- register archived package dependencies.

After relevant material is migrated, rejected, or obsolete, the project owner will manually delete the archive.

Codex and automated tooling must not delete it without explicit instruction.

---

## 31. Instrument Mode

Factorio supports special Instrument Mode files for development tooling, including:

```text
instrument-settings.lua
instrument-data.lua
instrument-after-data.lua
instrument-control.lua
```

These are **not normal TI gameplay package files** and should not appear in standard package scaffolds.

If TI later develops Instrument Mode tooling, that belongs to the future testing/build architecture.

---

## 32. Package ZIP / Source Reality

TI development source packages remain loose directories in the repository.

Factorio can load compatible mod folders or packaged ZIPs.

The future workflow will eventually resemble:

```text
source package directories
        ↓
build/package process
        ↓
Factorio-compatible ZIP files
        ↓
Factorio mods directory
        ↓
game/runtime validation
```

The specific build implementation remains deferred.

---

## 33. Testing / Build / Validation / Deployment

These standards remain intentionally deferred to a dedicated planning cycle.

That future work will cover:

- static validation;
- manifest validation;
- dependency checking;
- source-to-ZIP packaging;
- staging;
- transfer to the local Factorio mod directory;
- launch workflow;
- runtime testing;
- log/debug handling;
- regression checks;
- build tooling;
- CI possibilities;
- release packaging;
- Mod Portal publishing.

No C#, PowerShell, CI platform, or other implementation is selected here.

---

## 34. Final Technical Philosophy

The package standard is:

> **Use only Factorio lifecycle capabilities actually supported by the target Factorio API. Use TI-specific folders only as explicitly identified project conventions. Create lifecycle files only when their functionality is genuinely needed.**

And:

> **All Thelian Industries packages target Factorio 2.1 + Space Age as hard requirements. `expansion_required` and `quality_required` are universal TI manifest requirements; other specialized expansion feature flags are enabled where their actual capabilities are used.**

And:

> **All Factorio dependency forms must be documented using both their meaning and their actual manifest prefix so implementation does not rely on memory.**

---

## 35. API-Verification Rule

Any TI architectural standard that asserts a Factorio engine capability, lifecycle entry point, manifest field, prototype capability, migration mechanism, runtime API behavior, settings capability, localization behavior, or package-format requirement must be verified against the Factorio documentation applicable to the project's target game version before it is treated as canonical.

If documentation and assumptions conflict:

```text
verified Factorio behavior
→ controls technical feasibility

TI design intent
→ must adapt to verified Factorio behavior
```

This rule applies especially to:

- package structure;
- lifecycle files;
- `info.json`;
- dependencies;
- prototype APIs;
- runtime APIs;
- migrations;
- settings;
- localization;
- Space Age feature flags;
- build/package requirements.

---

## 36. Locked Scope

This document locks:

- the distinction between Factorio-recognized structure and TI conventions;
- package structure philosophy;
- minimal package creation rules;
- Factorio 2.1 target;
- hard Space Age dependency;
- universal `expansion_required`;
- universal `quality_required`;
- dependency prefix meanings and syntax;
- dependency direction rules;
- centralized localization;
- prototype/source naming;
- loader/runtime organization;
- independent component versioning;
- aggregate `ti-modpack` versioning;
- changelog policy;
- migration policy;
- README policy;
- asset ownership and attribution;
- legacy archive isolation;
- API-verification requirements.

The following remain intentionally deferred:

- exact package-by-package dependency matrix;
- exact shared project author/contact/homepage metadata;
- detailed settings ID governance;
- public API/interface governance;
- package rename/merge/deprecation policy;
- build tooling;
- validation tooling;
- runtime testing;
- deployment;
- release automation;
- Mod Portal publishing workflow.
