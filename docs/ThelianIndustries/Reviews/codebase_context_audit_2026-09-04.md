# Codebase Context Audit — 2026-09-04

**Status: Review Evidence / Static Source Audit**

## Scope

This review examined the live source beneath `Mods/ThelianIndustries/` and reconciled it with the canonical Thelian Industries documentation. It is read-only: no Factorio runtime, game load, test suite, or playtest was executed.

The generated [Project Context Snapshot](../PROJECT_CONTEXT.md) is the portable summary; this review records the material evidence and classification decisions.

## Snapshot

| Field | Value |
| --- | --- |
| Repository / branch | Factorio Dev / `main` |
| Commit | `e0da132cf3ef1142f0271be10944e2459ae78847` |
| Working tree | Dirty from untracked `.agents/` and `docs/` at audit time |
| Source root | `Mods/ThelianIndustries/` |
| Runtime verification | Not performed |

## Package and Wiring Findings

- Seven folders contain manifests; `thelian-industries-core` is the only package with active gameplay data-stage loaders.
- Five TI-named top-level directories are empty and lack `info.json`: chemistry, compat, power, tectara, and voltaris.
- `ti-modpack` requires unmanifested or missing packages, including absent `thelian-metalurgy`, absent `thelian-materials`, and misspelled `thelian-voltairis` while the directory is `thelian-voltaris`. Aggregate modpack loadability is therefore unverified and likely blocked from this tree alone.
- Core actively requires five power-item files, `prototypes/fluid/liquids.lua`, and five power-entity files. All intermediate-item loaders are commented out.
- No `control.lua`, runtime scripts, event registrations, remote interfaces, commands, migrations, or tests were found.

## Verified Registered Content

With default core startup settings enabled, static loading reaches:

- 23 paired power items/entities: 8 transmission/area poles, 6 boilers, 4 engines/turbines, 3 heat exchangers, and 2 hydro assets.
- 3 custom fluids: `salt-water`, `distilled-water`, and `flowing-water`.
- 10 item groups, 35 subgroups, and 5 fuel categories from the library.
- A library final-fixes mutation that removes `resource-layer` collision from seven base water/landfill tiles.

No custom recipes, technologies, resources, drills, production machines, planets, logistics systems, modules, quality systems, combat systems, or runtime systems are registered in the scanned TI Lua.

## Reachability

No TI recipes or technologies were found. The registered power content has matching placement/mining identifiers but no TI craft or unlock path, so it is **Registered / player-unreachable or unverified**, not implemented gameplay. `flowing-water` has a dam-to-turbine data coupling, but the hydro dam has no TI crafting path.

## Documentation Reconciliation

| Canonical concern | State | Evidence |
| --- | --- | --- |
| Metallurgy and yield rules | Docs Ahead of Implementation | Unregistered item scaffolds only; no resources, processing machines, recipes, or yields in code. |
| Electronics | Docs Ahead of Implementation | No registered electronics; source stub is unregistered and duplicate-ID malformed. |
| Chemistry, recycling, recipes | Docs Ahead of Implementation; partial fluid implementation undocumented | Three active fluids and power coupling exist, but no primary system implementation. |
| Power / hydro | Implementation Ahead of Docs / Needs Reconciliation | Conditional registered prototype scaffold exists without reachability. |
| Progression, worlds, technology, logistics, quality, space, combat | Aligned Planning Only | No conflicting implementation evidence found. |

Canonical planning was preserved. Verified implementation context was added only as status/evidence notes; it does not convert scaffolds into locked design.

## Orphaned, Partial, and Drift Evidence

- 104 intermediate item-table stubs are behind commented loaders: 54 ore/waste, 20 ingot/alloy/glass, 10 construction, 7 component, 7 duplicate electronics, 3 science, and three single-item stubs.
- The components loader has a filename mismatch (`ti-components` versus `ti-compnents`); three fluid-part IDs contain leading spaces.
- The electronics stub defines seven items named `n`; the locale contains electronics vocabulary but no registered matching system.
- `prototypes/fluids.lua` duplicates the active liquids file but is not loaded. Gas, chemistry entity, and misc files are empty; commented gas/molten paths are absent.
- English is the only locale. Core has 292 keys, 64 blank values, and no duplicate keys detected. It contains locale-only molten/exhaust, metallurgy, electronics, and hydro vocabulary; the active salt/distilled water fluid IDs lack name keys.
- `thelian-lib` references an asset under `__thelian-graphics__`, but no such package exists under the scanned root. This is a static unresolved-reference risk, not a confirmed runtime error.

## Remaining Owner Decisions

The existing owner decision on Tectara/Vulcanus additional-metal allocation remains open. The package manifest mismatches, scaffold defects, and missing reachability are implementation/reconciliation work items; they do not require changing the recorded gameplay design decisions.

## Validation

- Recursively inventoried source files and manifests.
- Traced active and commented `require(...)` relationships.
- Checked for prototype-family, runtime, recipe, technology, resource, settings, and localization evidence.
- Reconciled against canonical documentation without changing planned intent.
- No gameplay source was modified.
