# Open Questions and Research Log

**Status: Research Needed**

This log preserves unresolved planning work. It is not a decision record and must not be used to infer implementation commitments.

## Superseded allocation note and current open work

The following legacy allocation note is retained for provenance but is superseded by the owner-designated [Thelian Industries Metallurgy Plan](../Plans/InProgress%20Plans/TI_Metallurgy_Plan.md), Decision 3.33. That plan locks the current primary allocation: Tectara has Wolframite/Tungsten and Ilmenite/Titanium; Vulcanus has Pyrolusite/Manganese, Cobaltite/Cobalt, and Chromite/Chromium. It also locks the complete current allocation summarized in [Metallurgy Processing Chains](../03_Production_Systems/01_Metallurgy_Processing_Chains.md#locked-planetary-primary-resource-allocation).

Still-open work includes planet/mineral profile tables and weights, trace associations and abundance mathematics, reserve values, technical prototyping, and final balance. These are not a reopening of the locked allocation: Quartzite is assigned to Nauvis as Silicon / silica feed, and Petalite is assigned to Voltaris as Lithium.

The historical conflict is preserved below only as migration evidence; do not use it to override Decision 3.33.

## Missing Dedicated Specifications

The following legacy sources are empty and require future owner-provided design before their domains can be completely specified:

- chemistry and oil processing;
- recycling and waste;
- recipe tables; and
- the unified detailed technology tree and Research, Technology, and Game Progression Plan.

The empty `Tech-Tree.md` legacy source does not mean the research architecture is unspecified: the [Research System Foundation](../Plans/InProgress%20Plans/TI_Research_System_Foundation_Plan.md) now locks its governing principles. It is not the finished global technology tree. Chemistry, recipe-table, and technology documents also carry narrow locked Electronics interfaces; recycling and recipe tables carry narrow locked metallurgy interfaces. These constraints do not constitute complete general-domain plans.

## Electronics deferred cross-system work

The [Electronics decision record](../Plans/InProgress%20Plans/TI_Electronics_Plan.md) has no active unresolved decision inside the current Electronics-only architecture scope. Remaining work is intentionally deferred to its owners:

- Quantum/endgame manufacturing: [Victory and Postgame](../02_Progression_and_Worlds/03_Victory_and_Postgame.md), with a dedicated Quantum/endgame manufacturing link reserved when that plan is generated;
- `Fiberglass Placeholder`, `PCB Etching Solution Placeholder`, resins, acids, Electrolyte, and related chemical chains: [Chemistry and Oil Processing](../03_Production_Systems/03_Chemistry_and_Oil_Processing.md), with a dedicated chemistry-plan link reserved when generated;
- solder, Nichrome, Silicon Ingot, material forms, and silica-to-silicon processing: [Metallurgy Processing Chains](../03_Production_Systems/01_Metallurgy_Processing_Chains.md);
- large magnetics: [Power, Steam, and Early Infrastructure](../04_Gameplay_Mechanics/04_Power_Steam_and_Early_Infrastructure.md), with a dedicated Electrical Machinery plan link reserved when generated;
- exact ratios, yields, times, power, speeds, module rules, eligibility, prototype penalties, retirement thresholds, technology costs, and balance: [Recipe Tables](../03_Production_Systems/06_Recipe_Tables.md) and [Gameplay Balance Research](../06_Research/02_Gameplay_Balance_Research.md); and
- iconography and interface presentation: reserved for an art/UI documentation link when that documentation is generated.

Resolving these interfaces should update only the affected boundary and must not silently reopen unrelated locked Electronics architecture.

## Research-system deferred integration

The [Research System Foundation](../Plans/InProgress%20Plans/TI_Research_System_Foundation_Plan.md) is complete for the current planning phase. The unified detailed tree and stage/domain progression graph remain reserved for future planning: *(Reserved for a link to the unified Research, Technology, and Game Progression Plan when it is generated.)* The Stage 1 sequence is owned by [Game Progression](../02_Progression_and_Worlds/00_Game_Progression.md); Stage 5/Stage 6 lifecycle and postgame candidates are in [Victory and Postgame](../02_Progression_and_Worlds/03_Victory_and_Postgame.md) and the [Idea Backlog](../Plans/Idea_Backlog.md).

Other research interfaces link to their current owners: existing industrial constraints remain in [Metallurgy](../03_Production_Systems/01_Metallurgy_Processing_Chains.md) and [Electronics](../03_Production_Systems/04_Electronics.md); world sequencing and access are in [Solar System and Planets](../02_Progression_and_Worlds/01_Solar_System_and_Planets.md) and the [Planetary Stage Matrix](../02_Progression_and_Worlds/02_Planetary_Stage_Matrix.md). Exact planet-specific experiments and media are deferred to those future owner plans *(reserved for planet/domain research links when generated)*. Research infrastructure and digital-media production are also deferred *(reserved for a dedicated research-infrastructure plan link when generated)*. Paper/Wood Pulp source production is deferred *(reserved for a Forestry system document link when that system is planned)*. Quantum manufacturing remains deferred; link to [Victory and Postgame](../02_Progression_and_Worlds/03_Victory_and_Postgame.md) and reserve a dedicated Quantum/endgame plan link when generated.

## Incomplete Stage Detail

Stages 2 through 6 are largely skeletal in the legacy progression tree. Do not infer stage goals, unlocks, recipes, or gates beyond the source and the recorded owner resolutions.

For metallurgy specifically, exact technology/tier timing, recipe progression, ratios, costs, yields, and pacing remain deliberately deferred. Stage 1 Iron/Steel detail is deferred; Decisions 1–8 do not authorize inventing it.

## Candidate Mechanics

The idea backlog contains candidate mechanics and questions. It remains the authoritative source for their planning status: [Idea Backlog](../Plans/Idea_Backlog.md).

**Provenance:** Current domain sources of truth: [TI_Metallurgy_Plan.md](../Plans/InProgress%20Plans/TI_Metallurgy_Plan.md), [TI_Electronics_Plan.md](../Plans/InProgress%20Plans/TI_Electronics_Plan.md), and the [Research System Foundation Plan](../Plans/InProgress%20Plans/TI_Research_System_Foundation_Plan.md). Historical input: [`IDEAS.md`](../../../Mods/ThelianIndustries/plans/IDEAS.md), [`Metallurgy-Tree.md`](../../../Mods/ThelianIndustries/plans/Metallurgy-Tree.md), [`Game-Progression-Tree.md`](../../../Mods/ThelianIndustries/plans/Game-Progression-Tree.md), and the [migration audit](../Reviews/migration_audit_2026-09-04.md).
