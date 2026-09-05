# Thelian Industries — Project Context Snapshot

> **This is a generated working-context snapshot. It is not the canonical source of truth.**
>
> It captures a static source audit performed on 2026-09-04. For current implementation claims, consult the code; for intended design, consult the canonical planning documents and owner decisions.

## 0. Snapshot Metadata

```yaml
snapshot_generated: 2026-09-04T17:38:31-06:00
repository: Factorio Dev
mod_source_root: Mods/ThelianIndustries
branch: main
commit: e0da132cf3ef1142f0271be10944e2459ae78847
working_tree: dirty (untracked .agents/ and docs/ at snapshot time)
context_schema_version: 1
audit_method: static source and documentation audit; no Factorio runtime test performed
```

## 1. How to Use This File

Use this snapshot to orient focused design work, then verify source paths before making implementation claims. It separates **verified source evidence** from **canonical planning** and calls out lack of reachability separately from prototype definition.

Do not treat locale text, an unregistered Lua file, a folder name, or an idea-backlog entry as implementation.

## 2. Authority and Status Model

- Current behavior: source/data definitions, registration wiring, runtime code, tests/runtime evidence, localization, then documentation.
- Intended direction: explicit owner-approved documentation, accepted decisions, current planning drafts, reviews, active plans, then history.
- `Registered` means a loader reaches the definition under its applicable settings; it does **not** mean a player can craft, unlock, or use it.
- `Reachable` is not established for the registered custom content because no TI recipes or technologies were found.

See [Document Authority](DOCUMENT_AUTHORITY.md) for the controlling authority model and [Codebase Context Audit](Reviews/codebase_context_audit_2026-09-04.md) for detailed evidence.

## 3. Package / Mod Architecture

Seven directories contain `info.json`; five additional top-level directories are empty/non-package scaffolds.

| Package folder | Internal name | Role observed from source | Dependency / package state |
| --- | --- | --- | --- |
| `thelian-industries-core` | `thelian-industries-core` | Only package with active gameplay data loaders | depends on base, `thelian-lib`, assets pack 1 |
| `thelian-lib` | `thelian-lib` | Registers item groups, subgroups, fuel categories; performs a base tile collision mutation in final fixes | standalone library package |
| `thelian-utils` | `thelian-utils` | Empty data/update loaders and settings file | metadata/scaffold only |
| `thelian-post-process` | `thelian-post-process` | Manifest only | metadata-only |
| `thelian-assets-pack1` | `thelian-assets-pack1` | Manifest and pack-list only | asset-package metadata only |
| `thelian-assets-pack2` | `example-mod` | Template-like manifest and pack-list only | metadata mismatches folder/purpose |
| `ti-modpack` | `ti-modpack` | Aggregator manifest | mandatory dependencies are not satisfiable from this tree |

Empty/non-package directories: `thelian-chemistry`, `thelian-compat`, `thelian-power`, `thelian-tectara`, and `thelian-voltaris`.

No graphics, icons, sprites, sounds, fonts, or other binary asset files were found beneath the scanned source root. The two asset-pack directories contain manifest/list documentation only. Asset coverage is therefore unverified; it is not evidence of a loaded graphics package.

### Dependency map and loadability

```text
ti-modpack
  -> thelian-lib -> base
  -> thelian-industries-core -> base, thelian-lib, thelian-assets-pack1
  -> thelian-assets-pack1 -> base
  -> thelian-chemistry (directory exists but has no manifest)
  -> thelian-metalurgy (absent)
  -> thelian-materials (absent)
  -> thelian-power (directory exists but has no manifest)
  -> thelian-tectara (directory exists but has no manifest)
  -> thelian-voltairis (absent; source directory is `thelian-voltaris`)
  -> thelian-utils -> base
```

**Static conclusion:** the aggregate `ti-modpack` dependency set cannot be resolved solely from the scanned source tree. The core/lib packages have traceable data-stage wiring, but aggregate-modpack loadability and player reachability remain unverified.

## 4. Project Design Baseline

Canonical planning describes a Factorio Space Age overhaul with staged progression, metallurgy, electronics, worlds, and speculative subsystem work. Most of that direction is **Docs Ahead of Implementation** in this snapshot.

Owner-resolved planning decisions remain intact: Archo Nexus is the canonical postgame name; Stage 6 is post-victory; active spellings are Nauvis, Aquilo, and Cassiterite; newer process planning owns planned yield scaling; and shared metallurgy/electronics ownership is deliberate. None of these decisions prove current code implementation.

## 5. Progression Snapshot

- Stage 1 through Stage 6, their worlds, the Solar System Edge victory lifecycle, and Archo Nexus postgame lifecycle are canonical planning content.
- No TI `technology` prototypes, recipes, research triggers, or control-stage research systems were found.
- Stage 1 interaction-driven research and research-desk/data-packet concepts are **Planned Only**.

Planning owner: [Game Progression](02_Progression_and_Worlds/00_Game_Progression.md).

## 6. Planet / World Snapshot

All custom-world names and descriptions remain planning/AI-draft material as documented. No `planet`, `space-location`, asteroid, custom pollutant, tile, enemy, map-generation, or resource prototypes were found in the scanned TI Lua.

| World / area | Static implementation state |
| --- | --- |
| Nauvis modifications; Luna; Vulcanus/Gleba/Fulgora changes | No TI prototype evidence |
| Voltaris; Tectara; Pyrosauria; Zephyrus; Icarion's Grave; Solar System Edge; Archo Nexus | Planning Only; no package/prototype evidence |
| Aquilo changes | Planning Only; no TI change evidence |

Planning owner: [Solar System and Planets](02_Progression_and_Worlds/01_Solar_System_and_Planets.md).

## 7. Metallurgy Snapshot

**Implementation status: Docs Ahead of Implementation / unregistered prototype scaffolds.**

The active core loader comments out every intermediate-item require, including ores, ingots, components, construction parts, chemistry components, electronics, science, crafting, materials, and misc. No resource, mining-drill, crusher, wash plant, furnace, foundry, caster, alloy foundry, electrolysis, kiln, recipe, or technology prototype exists in the scanned Lua.

- `ti-ores.lua`: 54 unregistered item tables, including waste/rock materials and ore-family items. These are item prototypes, not `resource` prototypes.
- `ti-ingots.lua`: 20 unregistered ingot/alloy/glass item tables.
- `ti-compnents.lua`: seven unregistered mechanical/fluid-parts tables; its filename is misspelled relative to the commented `ti-components` require, and three fluid-part IDs contain leading spaces.
- Canonical 1.0x/1.5x/3.0x/etc. yield relationships have **no current recipe implementation**, so there is no demonstrated code-versus-plan numeric drift.

Planning owners: [Metallurgy Processing Chains](03_Production_Systems/01_Metallurgy_Processing_Chains.md) and [Metallurgy Process and Yield Rules](03_Production_Systems/02_Metallurgy_Process_and_Yield_Rules.md).

## 8. Electronics Snapshot

**Implementation status: Planning / Localization Only with an unregistered malformed source stub.**

No wire, solder, PCB, resistor, capacitor, transistor, diode, microchip, circuit, CPU, power-supply, electronics assembler, recipe, or technology is registered. The commented-out `ti-electronic-components.lua` contains seven item tables with the same ID, `n`, so it is not a viable registered implementation as written. Locale vocabulary does not change this status.

Planning owner: [Electronics](03_Production_Systems/04_Electronics.md).

## 9. Chemistry / Oil / Fluids Snapshot

**Primary chemistry/oil design: Placeholder / Planning Only.**

Verified active data-stage fluid evidence:

- `prototypes/fluid/liquids.lua` is unconditionally required by core and registers `salt-water`, `distilled-water`, and `flowing-water`.
- It mutates base `water` to a `5kJ` fuel value and base `crude-oil` to a `1MJ` fuel value.
- `flowing-water` has a hydro-turbine coupling. Salt water and distilled water have no producer/consumer found.
- No chemical plant, refinery, pump, custom gas, acid, salt-processing, waste-fluid, or chemistry recipe prototype is registered.

`prototypes/fluids.lua` is an unregistered duplicate; `prototypes/gas.lua` and the chemistry-entity file are empty. Commented loader paths for gases and molten fluids do not correspond to present files.

## 10. Recycling / Waste Snapshot

**Status: Planning Only.** No recycling prototype, recipe, or system is registered. Waste-like item tables occur only in the unregistered ore scaffold; locale labels are not implementation evidence.

Planning owner: [Recycling and Waste](03_Production_Systems/05_Recycling_and_Waste.md).

## 11. Technology / Research Snapshot

**Status: Not implemented.** There are zero TI recipe and technology prototype definitions, no recipe-category loader, no technology effects, and no control-stage research system. Therefore no custom item can be confirmed as player-unlocked or craftable through TI content.

## 12. Logistics Snapshot

**Status: Planning / Idea Only.** No TI belts, inserters, loaders, robots, roboports, trains, wagons, rockets, storage, or transport systems were registered. Proposed special belts, 1x1 loaders, special pipe networks, fluid cargo rockets, and inter-platform transport have no implementation evidence.

## 13. Power / Infrastructure Snapshot

**Implementation status: Registered prototype scaffold; player reachability unverified.**

With default startup settings (`ti-full-power-overhaul`, transmission, and hydropower enabled), core actively loads 23 custom power items and matching entities:

- 8 transmission/area poles and transformers.
- 6 boilers: `le-boiler`, `me-boiler`, `he-boiler`, `se-boiler`, `s-gas-boiler`, `he-gas-boiler`.
- 4 engines/turbines: `le-steam-engine`, `me-steam-engine`, `se-turbine`, `he-turbine`.
- 3 heat exchangers: `se-heat-exchanger`, `he-heat-exchanger`, `pe-heat-exchanger`.
- 2 hydro assets: `small-hydro-dam`, `hydro-turbine`.

Items and entities are paired through matching `place_result` and `minable.result` identifiers. The power content has no TI recipes or technologies, so it is not shown as player-reachable or as a locked design. The two names containing `gas-boiler` explicitly filter base `crude-oil`, not a TI gas prototype.

| Registered family | Verified source values | Reachability |
| --- | --- | --- |
| Boilers | `le`, `me`, `he`, `se` target 215°C, 415°C, 615°C, 815°C; `s-gas` and `he-gas` target 440°C and filter `crude-oil` | No TI recipe or technology |
| Engines/turbines | 25% / 1.2MW, 50% / 2.4MW, 75% / 7.2MW, 100% / 9.6MW for `le`, `me`, `se`, `he` respectively | No TI recipe or technology |
| Heat exchangers | `se` and `he`: 640°C; `pe`: 815°C | No TI recipe or technology |
| Hydro | turbine: `750MW`, 100% effectivity, `flowing-water` filter; dam target: 215°C | No TI recipe or technology |

Planning owner: [Power, Steam, and Early Infrastructure](04_Gameplay_Mechanics/04_Power_Steam_and_Early_Infrastructure.md).

## 14. Modules / Quality Snapshot

**Status: Planning / Idea Only.** No TI module, quality, equipment, or module-category prototype was found.

## 15. Construction Snapshot

**Implementation status: unregistered scaffold; canonical design remains planning.** `ti-construction-parts.lua` contains 10 unregistered item tables (`construction-parts-t0` through `t9`), and component source has unregistered mechanical/fluid parts. There are no recipes, technologies, or building requirements.

## 16. Space / Rocket Snapshot

**Status: Planning / Idea Only.** No custom rocket, platform, space-location, or space-logistics prototype evidence was found.

## 17. Combat / Enemy Snapshot

**Status: Planning / AI Draft Only.** No combat, enemy, damage, ammo, or enemy-world prototype evidence was found.

## 18. Settings Snapshot

| ID | Type / default | Source consumption | Status |
| --- | --- | --- | --- |
| `ti-debug-mode` | startup bool / `false`, hidden | No read found | Defined, unused |
| `ti-full-power-overhaul` | startup bool / `true` | Gates boiler, engine/turbine, heat-exchanger, hydro, and pole loader branches | Defined and consumed |
| `ti-transmission-overhaul` | startup bool / `true` | Further gates pole/transformer branches | Defined and consumed |
| `ti-hydropower-overhaul` | startup bool / `true` | Further gates hydro branches | Defined and consumed |

No runtime-global or runtime-per-user TI settings were found. The core English locale has empty mod-setting sections, so these settings lack displayed setting-name/description keys.

## 19. Implementation vs Planning Reconciliation

| Concern | Reconciliation state | Evidence / disposition |
| --- | --- | --- |
| Metallurgy, ore processing, yields | Docs Ahead of Implementation | Planning is detailed; code has only unregistered item scaffolds and no recipes/resources/machines. |
| Electronics | Docs Ahead of Implementation | No registered electronics system; locale and malformed scaffold are insufficient. |
| Chemistry, recycling, recipe tables | Docs Ahead of Implementation with partial fluid evidence | Primary domains remain absent; three custom waters and power-fluid coupling are registered. |
| Power / hydro | Implementation Ahead of Docs / Needs Reconciliation | Registered conditional scaffold exists, but canonical page previously held planning only; it is documented conservatively below. |
| Worlds, progression, technology, logistics, quality, combat, space | Aligned as Planning Only | No contrary implementation evidence found. |
| Package/modpack assembly | Implementation Differs from expected package plan | `ti-modpack` declares unsatisfied/misspelled dependencies. |

## 20. Cross-System Dependency Map

| Concern | Connected systems actually evidenced or planned |
| --- | --- |
| Registered power items | startup settings -> item loaders -> entity loaders -> paired `place_result`/`minable` IDs; recipes/technologies absent |
| Flowing water | active custom fluid -> hydro dam output / hydro turbine input; dam item is not craftable through TI code |
| Base water/crude oil | core fluid loader mutates fuel values; hydro/gas-boiler behavior depends on base fluids |
| Metallurgy scaffold | commented core loader -> unregistered item files -> canonical metallurgy plan; no resource/recipe/machine linkage |
| Electronics scaffold | commented core loader -> malformed item tables and locale vocabulary -> canonical electronics plan; no recipe/technology linkage |
| Item-group taxonomy | library groups/subgroups/fuel categories -> possible organization only; no system implementation follows from them |
| Worlds and progression | canonical planning documents -> no package/prototype wiring present |

## 21. Current Open Decisions and Gaps

- Exact additional-metal allocation between Tectara, Vulcanus, and later planets remains an owner decision.
- All major planned systems require implementation specifications before code can substantiate them.
- Package assembly requires reconciliation of the declared modpack dependencies with actual package names/manifests.
- No runtime or Factorio data-stage execution test was performed; static source risks require verification.

## 22. Planning Readiness Matrix

| System | Planning state |
| --- | --- |
| Metallurgy | Most developed planning area; yield direction is planned, not implemented |
| Stage 1 progression | Detailed planning draft |
| Worlds | Concept drafts; several descriptions explicitly AI-generated |
| Electronics | Thin planning draft |
| Chemistry, recycling, recipe tables, dedicated technology design | Placeholders / planning required |
| Power, logistics, modules, quality, space, combat | Idea / research-needed or planning-only |

## 23. Implementation Readiness Matrix

| Family | Defined / registered | Reachable | Classification |
| --- | --- | --- | --- |
| Power items/entities | 23 conditional item/entity pairs | No TI recipe/technology path | Registered scaffold |
| Custom fluids | 3 registered | Flowing-water entity coupling only; no player path | Partial implementation |
| Item groups/subgroups/fuel categories | 10 / 35 / 5 registered | Organizational only | Registered scaffold |
| Metallurgy and construction intermediates | 104 item-table stubs in unregistered files | No | Unregistered / partial |
| Recipes, technologies, resources, mining, runtime systems | 0 found | No | Missing |
| Planets, space, logistics, quality, combat | 0 found | No | Planning only |

## 24. Snapshot Maintenance Protocol

On the next audit, record the Git snapshot, rediscover manifests, trace entrypoint requires, distinguish definition/registration/reachability, update the appendices, reconcile canonical documentation without changing intent, and retain new drift evidence in `Reviews/`.

## Appendix A — Mod Package Inventory

All manifest packages declare version `0.0.1`, Factorio `2.0`, and no manifest conflicts. Paths are beneath `Mods/ThelianIndustries/`.

| Folder / internal name | Title and description | Dependencies | Apparent role / current evidence |
| --- | --- | --- | --- |
| `thelian-assets-pack1` / `thelian-assets-pack1` | “TI Graphical Assets Pack 1”; first pack of graphical assets | base | Manifest/list only; no binary assets or loader found |
| `thelian-assets-pack2` / `example-mod` | “Example Mod Files”; generic template description | base; optional space-age | Unwired template-like package; metadata is not TI-specific |
| `thelian-industries-core` / `thelian-industries-core` | “Thelian Industries”; blank description | base; `thelian-lib`; assets pack 1 | Core data-stage package; active power/fluid loaders |
| `thelian-lib` / `thelian-lib` | “Thelian Industries Library Mod”; core library description | base | Shared categories/fuel-category/final-fix library |
| `thelian-post-process` / `thelian-post-process` | “Thelian Industries Post Processing”; “Extras needed...” | base; `thelian-lib` | Standalone manifest, but no data/control source |
| `thelian-utils` / `thelian-utils` | “Thelian Utilities”; QoL utilities description | base | Standalone manifest; empty data/update/settings files |
| `ti-modpack` / `ti-modpack` | “Thelian Industries Modpack”; blank description | base; optional space-age; TI dependencies | Intended aggregate; required dependency set is unresolved in this tree |

Non-manifest directories are not Factorio packages in the audited state: `thelian-chemistry`, `thelian-compat`, `thelian-power`, `thelian-tectara`, and `thelian-voltaris`.

## Appendix B — Prototype Inventory

| Prototype family | Registered count | Notes |
| --- | ---:| --- |
| Items | 23 | Conditional power items at default settings |
| Fluids | 3 | `salt-water`, `distilled-water`, `flowing-water` |
| Entities | 23 | Conditional power entities matched to items |
| Item groups | 10 | Library scaffold |
| Item subgroups | 35 | Library scaffold |
| Fuel categories | 5 | Library scaffold |
| Recipes / technologies / resources / mining drills / machines / planets / runtime systems | 0 | No TI definitions found in scanned Lua |

## Appendix C — Item / Material Inventory

### Registered default-setting items

`small-transmission-pole`, `medium-transmission-pole`, `long-transmission-pole`, `industrial-transmission-pole`, `small-area-transformer`, `medium-area-transformer`, `large-area-transformer`, `industrial-transformer`, `le-boiler`, `me-boiler`, `he-boiler`, `se-boiler`, `s-gas-boiler`, `he-gas-boiler`, `le-steam-engine`, `me-steam-engine`, `se-turbine`, `he-turbine`, `se-heat-exchanger`, `he-heat-exchanger`, `pe-heat-exchanger`, `small-hydro-dam`, `hydro-turbine`.

### Unregistered material scaffolds

There are 104 source item tables behind commented loaders: 54 ore/waste, 20 ingot/alloy/glass, 10 construction parts, 7 mechanical/fluid components, 7 duplicate-ID electronics stubs, 3 science stubs, and one each chemistry, crafting, and materials stub. These counts are not active prototype counts.

### Exhaustive unregistered item identifiers

All identifiers in this subsection are **Prototype Defined / Unregistered / Unreachable** because their files are not loaded. Display names are shown only where an English `item-name` entry is present; `[no key]` means there is no matching item-name key.

| Source family | Identifiers and English vocabulary |
| --- | --- |
| Waste/byproducts | `slag` -> Slag; `rock-tailings` -> Tailings; `rock-sand` -> Sand; `rock-clay` -> Clay; `rock-salt` -> Rock Salt; `rock-slag-gravel` -> Crushed Slag; `rock-man-gravel` -> Manufactured Gravel; `rock-man-sand` -> Manufactured Sand |
| Ores / crushed / concentrates | `coal-ore` -> Bituminous Ore; `man-coal-ore` -> Crushed Bitumen; `limestone-ore`, `man-limestone-ore`, `limestone-powder` -> [no key]; `silica-ore` -> Quartzite Ore; `man-silica-ore` -> Crushed Quartzite Ore; `iron-ore` -> Hematite Ore; `man-iron-ore` -> Crushed Hematite Ore; `iron-concentrate` -> Iron Concentrate; `copper-ore` -> Cuprite Ore; `man-copper-ore` -> Crushed Cuprite Ore; `copper-concentrate` -> Copper Concentrate; `tin-ore` -> Cassiterite Ore; `man-tin-ore` -> Crushed Cassiterite Ore; `tin-concentrate` -> Tin Concentrate; `lead-ore` -> Galena Ore; `man-lead-ore` -> Crushed Galena Ore; `lead-concentrate` -> Lead Concentrate; `aluminum-ore` -> Bauxite Ore; `man-aluminum-ore` -> Crushed Bauxite Ore; `aluminum-concentrate` -> Aluminum Concentrate; `cobalt-ore` -> Cobaltite Ore; `man-cobalt-ore` -> Crushed Cobaltite Ore; `cobalt-concentrate` -> Cobalt Concentrate; `titanium-ore` -> Ilmenite Ore; `man-titanium-ore` -> Crushed Ilmenite Ore; `titanium-concentrate` -> Titanium Concentrate; `silver-ore` -> Argentite Ore; `man-silver-ore` -> Crushed Argentite Ore; `silver-concentrate` -> Silver Concentrate; `lithium-ore` -> Petalite Ore; `man-lithium-ore` -> Crushed Petalite Ore; `lithium-concentrate` -> Lithium Concentrate; `tungsten-ore` -> Wolframite Ore; `man-tungsten-ore` -> Crushed Wolframite Ore; `tungsten-concentrate` -> Tungsten Concentrate; `platinum-ore` -> Sperrylite Ore; `man-platinum-ore` -> Crushed Sperrylite Ore; `platinum-concentrate` -> Platinum Concentrate; `mercury-ore` -> Cinnabar Ore; `man-mercury-ore` -> Crushed Cinnabar Ore; `mag-pot-ore` -> Carnallite Ore; `man-mag-pot-ore` -> Crushed Carnallite Ore; `phosphorous-ore` -> Phosphorite Ore; `man-phosphorous-ore` -> Crushed Phosphorite Ore |
| Ingots / alloys | `iron-ingot` -> Pig-Iron Ingot; `steel-ingot` -> Steel Ingot; `copper-ingot` -> Copper Ingot; `tin-ingot` -> Tin Ingot; `lead-ingot` -> Lead Ingot; `aluminum-ingot` -> Aluminum Ingot; `zinc-ingot` -> Zinc Ingot; `cobalt-ingot` -> Cobalt Ingot; `silver-ingot` -> Silver Ingot; `gold-ingot` -> Gold Ingot; `titanium-ingot` -> Titanium Ingot; `tungsten-ingot` -> Tungsten Ingot; `platinum-ingot` -> Platinum Ingot; `silicon-ingot` -> Silicon Ingot; `bronze-ingot` -> Bronze Ingot; `brass-ingot` -> Brass Ingot; `duralumin-ingot` -> Duralumin Ingot; `electrum-ingot` -> Electrum Ingot; `kovar-ingot` -> Cobalt-Steel Ingot; `glass` -> Glass Pane |
| Construction | `construction-parts-t0` -> Structural Materials; `construction-parts-t1` -> Electrical Hardware Components; `construction-parts-t2` -> Hydraulic & Plumbing Hardware; `construction-parts-t3` -> Logic Control Systems; `construction-parts-t4` -> Switches & Sensors Hardware; `construction-parts-t5` -> [no key]; `construction-parts-t6` -> Electrical & Hydraulic Actuators; `construction-parts-t7` -> Power Regulation Systems; `construction-parts-t8` -> Process Control Terminals; `construction-parts-t9` -> Industrial IT Infrastructure |
| Components | `mechanical-parts-t1` -> Brass Mechanical Parts; `mechanical-parts-t2` -> Aluminum Mechanical Parts; `mechanical-parts-t3` -> Steel Mechanical Parts; `mechanical-parts-t4` -> Cobalt-Steel Mechanical Parts; ` fluid-parts-t1`, ` fluid-parts-t2`, ` fluid-parts-t3` -> [no key; leading space in source ID] |
| Electronics / science / placeholders | Seven duplicate `n` electronics tables -> [no key]; `n`, `science-bottle`, `n` science tables -> [no key]; `lime-powder` -> QuickLime; crafting `n` -> [no key]; materials `n` -> [no key] |

## Appendix D — Fluid Inventory

| ID | Registered | Observed source linkage | Localization state |
| --- | --- | --- | --- |
| `salt-water` | Yes | no producer/consumer found | no `fluid-name` key found |
| `distilled-water` | Yes | no producer/consumer found | no `fluid-name` key found |
| `flowing-water` | Yes | hydro dam output and hydro turbine filter | localized |

The loader also changes base water and crude-oil fuel values; this is verified static data-stage behavior, not runtime-playtest evidence.

## Appendix E — Entity Inventory

The 23 registered default-setting entities have the same identifiers as the Appendix C items and pair through placing/mining references. They consist exclusively of 8 poles/transformers, 6 boilers, 4 engines/turbines, 3 heat exchangers, and 2 hydro entities. No TI production, mining, logistics, combat, or world entity is registered.

## Appendix F — Recipe Inventory

No TI `recipe` prototype definitions or recipe loaders were found. All custom items are therefore unverified as player-craftable.

## Appendix G — Technology Inventory

No TI `technology` prototype definitions, unlock effects, research triggers, or technology loaders were found.

## Appendix H — Resource / Mining Inventory

No TI `resource`, resource-category, mining-drill, autoplace, or map-generation prototype was found. The library final-fixes script removes `resource-layer` collision from seven base water/landfill tiles; it does not create a resource or generation rule.

## Appendix I — Settings Inventory

See Section 18. All four settings are startup booleans; only the three power-overhaul settings are consumed.

## Appendix J — Localization Inventory

- English is the only available language.
- Core locale: 292 keys — 243 item-name, 23 fluid-name, 1 fluid-description, 25 entity-name; 64 values are blank; duplicate keys were not found in the static audit.
- Library locale: 10 item-group-name keys. Utilities locale is empty.
- Core locale contains empty recipe, technology, and setting sections.
- Locale runs ahead of code for molten fluids, exhaust, electronics, hot ingots, many metal parts, and large/huge hydro dams.
- Registered `salt-water` and `distilled-water` lack locale names; localized identifiers and unregistered scaffold IDs also drift in several places.

## Appendix K — Runtime / Control-Stage Systems

No `control.lua`, `scripts/`, event handlers, remote interfaces, commands, migrations, GUI, global/storage state, or runtime settings were found under the scanned TI source root.

## Appendix L — Orphaned / Partial / Unverified Definitions

- All intermediate-item source files are unregistered because core comments out their loaders.
- The commented components loader is spelled `ti-components`; the present file is `ti-compnents.lua`.
- Electronics stubs duplicate the ID `n`; science/crafting/material stubs also use `n`.
- Three fluid-part IDs include leading spaces; corresponding locale IDs do not.
- `prototypes/fluids.lua` is an unregistered duplicate of the active `prototypes/fluid/liquids.lua`.
- Empty/unwired files include `prototypes/gas.lua`, chemistry entity source, and misc source; commented gas/molten loader paths are absent.
- `ti-modpack` has mandatory absent/unmanifested dependencies and a `thelian-voltairis` spelling mismatch.
- `thelian-lib` references `__thelian-graphics__/graphics/item-groups/fluids.png`; no matching package exists in the source root. Static audit only: potential unresolved asset/dependency, not runtime-confirmed failure.
- The boiler entity source re-requires the library fuel-category loader; duplicate-registration behavior is unverified without execution.

## Appendix M — Source Registration Map

```text
thelian-lib/data.lua
  -> data/catagories/item-groups.lua
  -> data/catagories/fuel-cat.lua
thelian-lib/data-final-fixes.lua
  -> data-final-fixes/water-ores.lua

thelian-industries-core/data.lua
  -> prototypes/item/power/{ti-pole,ti-boiler,ti-steam-gen,ti-heat-exchanger,ti-hydro}-item.lua
  -> prototypes/fluid/liquids.lua
  -> prototypes/entity/power/{ti-boiler,ti-pole,ti-steam-gen,ti-heat-exchanger,ti-hydro}-entity.lua
  -X prototypes/item/intermediates/* (all relevant requires commented out)
  -X gas and molten loader comments (paths absent)
```
