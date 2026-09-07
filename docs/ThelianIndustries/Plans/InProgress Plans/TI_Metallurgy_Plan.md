# Thelian Industries Metallurgy Plan

**Checkpoint status:** Refreshed through Decision 8; Decisions 1-8 complete at current architecture scope; progression-dependent details deferred  
**Purpose:** Durable continuation checkpoint for metallurgy, mining, ore processing, metal production, alloys, metallurgical components, and directly dependent systems.

---

## Workflow and Authority

- Do not redesign established metallurgy from scratch.
- Do not silently replace older plans.
- Do not treat speculative ideas as canonical.
- Do not force exact balance numbers too early.
- Do not finalize planetary resource allocation without discussion.
- Prefer owner-led design synthesis. Present alternatives only where a genuine unresolved design fork exists.
- Locked decisions must not be reinterpreted without explicitly surfacing the conflict and asking whether to revisit them.
- Canonical project documents are not edited automatically. This checkpoint is the durable decision record.
- `Metallurgy_Process-Tree.md` is authoritative for older process-yield scaling, numeric process-conversion relationships, and remelting-loss values except where superseded by locked decisions.
- `Metallurgy-Tree.md` remains authoritative for unique older concepts not superseded elsewhere.

### Governing design principle

Thelian Industries metallurgy progressively increases the useful material and industrial value obtainable from finite geological resources.

> Better technology makes a finite resource base stretch progressively farther.

### Metallurgy implementation and progression staging principle

Metallurgy planning separates **content foundation** from **final game progression and balance**. The current planning phase should define the metallurgy systems, items, fluids, entities, machines, process ownership, recipe connectivity, technology dependencies, and other relationships needed to make the metallurgy content exist and function in-game. It should not attempt to fully balance the finished game before that content can be tested.

The intended development sequence for metallurgy is:

```text
Architecture and content definitions
→ implement metallurgy items / fluids / entities / machines
→ implement recipes and technologies with simple baseline placeholder values
→ verify the metallurgy systems function end-to-end in-game
→ build/refine the real progression structure
→ perform iterative balance passes through playtesting and code changes
```

During foundational implementation:

- recipes and technologies should use simple, internally consistent placeholder values rather than prematurely optimized balance values;
- a **1:1-style ingredient-to-product baseline** is preferred where mechanically coherent, including simple placeholder ratios for multi-input recipes, until the later balance pass establishes the real values;
- technology and recipe chains may be scaffolded sufficiently to connect and test the metallurgy systems, but their final unlock timing, costs, science requirements, process ratios, yields, throughput, power demand, productivity, stack sizes, and pacing remain provisional;
- exact numbers should be locked early only when they are required by a specific architectural rule already established in this plan;
- Factorio's normal behavior remains the baseline unless TI has an explicit reason to diverge.

The later progression/balance phase is responsible for tuning the implemented metallurgy system in-game through code iteration, reload/restart testing, and playtesting. Placeholder implementation values are therefore **functional scaffolding, not canonical final balance**.

---

# Running Decision Register

| # | Decision | Status |
|---|---|---|
| 1 | Tiered Mining, Ore Refinement, and Metallurgical Recovery Architecture | **LOCKED** |
| 2 | Recovery/Yield Semantics and Process Upgrade Rules | **LOCKED** |
| 3 | Ore and Mineral Taxonomy | **LOCKED through 3.34; exact profile refinement deferred to prototyping** |
| 4 | Mining Deposit and Extraction Taxonomy | **LOCKED through 4.22; exact implementation/balance details deferred to prototyping** |
| 5 | Crusher and Wash Plant Detailed Roles | **LOCKED; exact machine statistics and mineral-specific recipe details deferred to prototyping** |
| 6 | Stone Brick Smelter, Blast Furnace, Arc Furnace, Foundry Detailed Roles | **LOCKED; exact recipes, alloy assignments, statistics, and balance deferred to prototyping** |
| 7 | Molten Metal, Casting, and Remelting Architecture | **LOCKED; exact casting/remelting recipes and balance deferred to prototyping** |
| 8 | Stage 1 Copper/Tin/Bronze Metallurgy | **LOCKED as open architecture direction; foundational implementation may use placeholder recipes/technologies, final progression and balance deferred** |
| 9 | Stage 1 Iron/Steel Metallurgy | **DEFERRED at detailed progression level; foundational implementation may be scaffolded later with placeholder values before final balance** |
| 10 | Metal Forms and Component Granularity | Pending |

---

# Decision 1: LOCKED

## Tiered Mining, Ore Refinement, and Metallurgical Recovery Architecture

### 1. Surface deposits

Surface mineral deposits are finite and are the earliest mineral sources.

Progression:

```text
Manual Mining
→ Burner Surface Mining
→ Electric / Improved Surface Mining
→ Later Surface-Mining Technology
```

Surface extraction uses approximately the geological reference value, conceptually 1.0×. Exact patch richness remains a later balance decision.

### 2. Underground continuation

Surface and underground deposits are spatially and geologically related.

The original idea that underground reserves physically spawn only after complete surface depletion is superseded at the implementation level. Preferred direction is to evaluate paired underground continuation during map generation while keeping underground reserves inaccessible until the intended mining technology/mechanic is available.

Underground continuation is mineral-specific. There is no universal continuation percentage.

If an underground continuation exists:

- Node 1 is guaranteed and is the main/primary mineral.
- Nodes 2 through 5 are optional.
- Optional nodes have progressively less favorable spawn probabilities.
- Optional nodes may resolve to the main mineral, a plausible trace/secondary mineral, or nothing.
- Exact probabilities and weights are deferred.

### 3. Underground reserve classes

All underground reserves are finite and deplete to zero.

Primary underground nodes:

- approximately 1.5× to 3.0× the original surface-reference yield;
- mineral-specific;
- approximately 2.5× is a useful conceptual midpoint, not a universal value.

Trace underground nodes:

- approximately 0.25× to 1.5× the original depleted surface patch's original yield;
- 1.5× represents an unusually large trace body, not the norm.

Three independent balancing variables exist:

1. underground continuation chance;
2. node composition weight;
3. reserve multiplier.

### 4. Geological trace architecture

Trace/secondary minerals must be based on plausible geology rather than arbitrary pairings.

The architecture permits three representations:

1. **Separate associated underground node**
2. **Trace raw-ore coproduct from mining the primary underground deposit**
3. **Trace concentrate recovered during Wash Plant beneficiation**

Not every mineral must use all three. Mineral-specific research determines which representation is appropriate.

The same trace resource must not be unintentionally double-counted across multiple representations.

Mining-stage trace outputs use the trace mineral's canonical **raw ore item**, not concentrate.

### 5. Standard ore preparation

Default conventional preparation:

```text
Raw Ore
→ Crushed Ore
→ Ore Concentrate
```

Raw direct smelting/extraction may exist where supported. Crushing and concentration are optional/progression-enabled efficiency stages.

### 6. Recipe progression over machine proliferation

The mod should prefer better recipes and process technology over long Mk1 through Mk6 machine chains.

Research may improve:

- throughput;
- batch size;
- process speed;
- trace recovery;
- byproduct separation;
- energy efficiency;
- resource efficiency;
- process capability.

Physical machine generations should exist only where there is a meaningful capability or industrial transition.

### 7. Four progression levers

Metallurgical progression uses four distinct levers:

1. Recovery
2. Process efficiency
3. Hardware capability
4. Manufacturing productivity

Not every technology increases material yield.

### 8. Ore Crusher

Exactly two physical generations:

- Crusher I
- Crusher II

Further advancement primarily occurs through technology-gated recipes.

Exact construction materials, speed, energy consumption, and recipe statistics remain deferred.

### 9. Wash Plant / Ore Concentrator

Exactly one physical machine.

Basic operation:

```text
Crushed Ore
→ Primary Concentrate
```

Basic recipes use water or reused process water. Trace minerals may remain unrecovered in waste.

Advanced recipes use the same machine and may use mineral-specific chemical reagents or other processing aids.

Advanced recipes may improve:

- throughput;
- fluid/reagent efficiency;
- primary recovery where justified;
- trace recovery;
- waste/byproduct behavior;
- separation capability.

Recovered trace minerals use their canonical concentrate items. There are no dedicated `trace-*` concentrate items.

### 10. Metallurgical extraction tiers

Exactly four general physical tiers:

```text
Tier 0: Stone Brick Smelter
Tier 1: Blast Furnace
Tier 2: Arc Furnace
Tier 3: Foundry
```

Tier numbers are documentation terminology.

#### Tier 0: Stone Brick Smelter

- primitive metallurgy;
- solid combustible fuel;
- supported raw/prepared ore to metal/ingot;
- inefficient early metallurgy.

#### Tier 1: Blast Furnace

- first general molten-metal extraction tier;
- high-temperature metallurgy;
- solid combustible fuel;
- produces molten metal for downstream casting and later alloying;
- may produce a limited set of selected early/simple alloys;
- advanced recipes may require fluxes/additives;
- no universal material-productivity bonus.

#### Tier 2: Arc Furnace

- advanced electric high-temperature solid-metal extraction tier;
- functions primarily as the advanced successor to the Stone Brick Smelter rather than as a general molten-metal tier;
- primarily produces ingots or other solid metal outputs;
- exact recipe/capability advantages remain mineral-specific.

#### Tier 3: Foundry

- advanced molten-metal extraction, refining, and alloying tier;
- electric;
- functions as the advanced successor to the Blast Furnace for molten metallurgy;
- supports advanced alloy production by combining appropriate molten-metal feeds;
- recipes may use fluxes, reagents, or additives for recovery, throughput, separation, or other process-specific purposes;
- no universal additive or universal recovery bonus.

Fluxes and additives are mineral/process-specific. Possible examples include limestone, lime, calcium-bearing materials, silica, or sand where appropriate.

### 11. Metal Caster

The Metal Caster is downstream equipment, not Tier 4 extraction.

```text
Molten Metal
→ Metal Caster
→ Cast Metal Products
```

Exactly one physical caster is planned. Advanced casting/cooling capabilities should primarily be recipe-driven.

Potential outputs include:

- ingots;
- plates;
- gears;
- structural forms;
- other products that are legitimately cast.

Coolants and casting-process details remain deferred.

### 12. Direct casting productivity

Direct casting may eventually receive productivity behavior related to ore recovery, molten-metal quantities, recipe mathematics, and Factorio: Space Age-style foundry/casting progression.

Exact values are not locked. Avoid stacked yield multiplication that creates runaway material generation.

### 13. Universal backbone with mineral-specific metallurgy

```text
Geological Resource
→ Extraction
→ Raw Material
→ Crushing
→ Concentration / Beneficiation
→ Metallurgical Extraction
→ Metal
→ Metal Forms / Components
```

Specific minerals may require roasting, reduction, fluxes, electrolysis, chemical refining, specialized intermediates, unique byproducts, or planetary processes.

### 14. Underground generation implementation direction

Preferred direction is to evaluate underground continuation together with the surface deposit during map generation.

Surface and underground resources should be geologically related.

Surface mining equipment must not accidentally mine underground-only resources.

Candidate representations remain implementation-open:

1. layered/overlapping generation with dedicated resource categories/collision behavior;
2. ring/donut surface patches reserving a central underground location;
3. another deterministic paired representation.

Literal overlapping resource rendering/selection behavior requires prototype testing.

---

# Decision 2: LOCKED

## Recovery/Yield Semantics and Process Upgrade Rules

### 1. Universal preparation states

Default conventional chain:

```text
Raw Ore
→ Ore Crusher
→ Crushed Ore
→ Wash Plant
→ Concentrate
→ Metallurgical Extraction
```

Rules:

- Raw Ore is Crusher input.
- Crushed Ore is Crusher output and Wash Plant input.
- Concentrate is the final universal beneficiation state.
- Raw Ore does not directly enter the Wash Plant.
- Concentrate is not universally re-concentrated.
- Mineral-specific specialized intermediates are permitted as exceptions.

### 2. Universal baseline recovery

Crushing baseline:

```text
2 Raw Ore
→ 3 Crushed Ore
```

Local recovery multiplier: **1.50×**

Concentration baseline:

```text
2 Crushed Ore
→ 3 Concentrate
```

Local multiplier from crushed material: **1.50×**

Cumulative prepared-material states:

| State | Cumulative baseline |
|---|---:|
| Raw Ore | **1.00×** |
| Crushed Ore | **1.50×** |
| Concentrate | **2.25×** |

Example:

```text
4 Raw
→ 6 Crushed
→ 9 Concentrate
```

At a 1:1 extraction factor, that produces 9 units of metal equivalent, or 2.25× the original raw count.

Recipe batch leftovers are acceptable and naturally accumulate into later batches.

### 3. Extraction machines do not automatically multiply yield

Advanced furnace tiers do not receive universal material-productivity multipliers simply because the machine is more advanced.

General rule:

```text
Final Recovery
=
Prepared-Material Recovery
× Recipe Extraction Factor
```

A baseline full-conversion recipe may use an extraction factor of 1.00.

Therefore:

- Raw baseline extraction = 1.00× final
- Crushed baseline extraction = 1.50× final
- Concentrate baseline extraction = 2.25× final

Advanced beneficiation or extraction may exceed these values only when the specific mineral/process recipe explicitly justifies additional recovery.

This supersedes the older universal 3.0× concentrate assumption and the older 1.5× / 3.0× / 4.5× advanced-machine yield scheme.

### 4. Molten-metal extraction

The Blast Furnace introduces molten metallurgy without an automatic productivity multiplier. The Foundry is the advanced molten-metal extraction/refining and alloying tier. The Arc Furnace primarily belongs to the solid-metal/ingot path rather than the general molten-metal path.

Concept:

```text
Supported Feedstock
+ Required Fuel or Power
+ Recipe-Specific Flux/Additives
→ Metal Output Appropriate to the Machine Path
+ Byproducts
```

A simple process may be approximately 1:1 material-equivalent.

Higher or lower recovery is permitted when the mineral-specific process justifies it.

The same governing recovery rule applies across Blast Furnace, Arc Furnace, and Foundry recipes even though their output forms and capabilities differ.

### 5. Fluxes, reagents, and additives

Recipe-specific additions may:

- enable extraction;
- reduce otherwise lossy processing;
- improve primary recovery;
- increase throughput;
- improve separation;
- alter slag/byproducts;
- unlock another process capability.

They are not universal and do not automatically create additional refined metal.

### 6. Slag

Slag quantity does not automatically represent lost primary metal.

Slag may represent:

- gangue;
- impurities;
- oxides;
- silicates;
- ash;
- spent flux;
- other process waste.

A recipe may recover its full intended primary metal while still producing slag.

Actual primary-metal losses must be explicit.

### 7. Remelting

Remelting is a separate subtractive process with technology-gated recovery progression:

```text
Refined Metal / Ingot / Eligible Part
→ Remelting
→ 0.95× Molten-Metal Equivalent baseline
```

**0.95× return, 5% loss is the locked baseline.**

Advanced remelting recipes may use appropriate fluxes, protective process aids, or other justified metallurgy inputs to reduce oxidation and related remelting losses. Technological progression may improve remelting recovery toward a **hard maximum of 0.99× molten-metal equivalent (99% recovery)**.

Remelting may still generate slag or other appropriate thermal byproducts. Exact flux identities, recipe progression, recovery steps between 0.95× and 0.99×, and byproduct quantities remain deferred to prototyping.

### 8. Throughput is independent from recovery

Machine speed changes time, not material ratio.

Example:

```text
2 Raw → 3 Crushed
Base recipe time: 2 seconds
```

Crusher crafting speed 1.0:

```text
Effective time = 2 seconds
```

Crusher crafting speed 2.0:

```text
Effective time = 1 second
```

Material recovery remains 1.50×.

General rule:

```text
Effective Recipe Time
=
Base Recipe Time / Machine Crafting Speed
```

### 9. Technology-gated process improvements

Technology may improve:

- crafting speed/time;
- batch size;
- energy efficiency;
- fluid efficiency;
- reagent efficiency;
- waste/byproduct handling;
- trace separation;
- primary recovery where specifically justified;
- process capability.

Later technology does not automatically increase material yield.

### 10. Wash Plant progression

The universal Wash Plant relationship remains:

```text
Crushed Ore
→ Concentrate
```

Basic conceptual recipe:

```text
2 Crushed
→ 3 Concentrate
```

Advanced mineral-specific recipes may improve throughput, resource efficiency, primary recovery, trace recovery, separation, or waste behavior.

There is no universal post-concentrate beneficiation state.

### 11. Trace-mineral recovery

Basic:

```text
Crushed Primary Ore
→ Primary Concentrate
+ waste containing unrecovered trace material
```

Advanced:

```text
Crushed Primary Ore + Reagent
→ Primary Concentrate
+ low/very-low Trace Concentrate(s)
+ changed/reduced waste
```

Trace recovery is normally additive and should not reduce primary recovery unless a deliberate recipe tradeoff is designed.

Associations are geology-driven and may be directional rather than symmetric.

### 12. Locked recovery table

| Route / state | Baseline |
|---|---:|
| Raw Ore | **1.00× cumulative** |
| Crushed Ore | **1.50× cumulative** |
| Concentrate | **2.25× cumulative** |
| Baseline extraction from Raw | **1.00× final** |
| Baseline after Crushing | **1.50× final** |
| Baseline after Crushing + Concentration | **2.25× final** |
| Mineral-specific advanced beneficiation/extraction | **Variable only when explicitly designed** |
| Refined metal / eligible part → molten remelting | **0.95× return** |

### 13. Explicit deferrals

Still deferred:

- exact mineral Crusher recipes;
- exact advanced Wash Plant recipes;
- specialized reagent recovery bonuses;
- trace-mineral association tables;
- flux materials and quantities;
- slag quantities;
- Blast Furnace recipes;
- Arc Furnace recipes;
- Foundry recipes;
- machine crafting speeds;
- recipe times;
- batch sizes;
- energy consumption;
- module/productivity behavior;
- direct casting productivity;
- final balance beyond the universal baseline.

---

# Decision 3: IN PROGRESS

## Ore and Mineral Taxonomy

The following sub-decisions are established through **3.31**. Decision 3 as a whole has not yet been declared locked.

---

## 3.1 Internal IDs and Player-Facing Mineral Names: ESTABLISHED

The existing naming convention is retained.

Internal prototype/item IDs are metal-oriented for developer clarity.

Player-facing localization preserves the real mineral identity.

Example:

```text
Hematite resource
↓
iron-ore              ("Hematite Ore")
↓
crushed-iron-ore      ("Crushed Hematite")
↓
iron-concentrate      ("Hematite Concentrate")
↓
Iron
```

This convention is already implemented in localization and is not being redesigned.

---

## 3.2 One Primary Mineral Family per Metal: ESTABLISHED

Each conventional metal uses one canonical primary mineral family by default.

Alternative mineral sources are added only when they provide deliberate gameplay, planetary, geological, or processing value.

Do not add multiple real-world ore minerals merely for realism.

Examples from current planning include:

- Iron → Hematite
- Copper → Cuprite
- Tin → Cassiterite
- Lead → Galena
- Mercury → Cinnabar
- Zinc → Sphalerite
- Titanium → Ilmenite

Planetary allocation remains a separate unresolved concern.

---

## 3.3 Trace Mineral Item Identity: ESTABLISHED

There are no dedicated `trace-*` raw ore or concentrate item variants.

Trace recovery uses the same canonical item family as the trace mineral's normal metallurgy.

Example:

```text
Primary Ore A
→ Advanced Wash Plant
→ A Concentrate
+ low/very-low quantity of canonical B Concentrate
```

Trace occurrence is represented through low quantity/probability rather than separate trace inventory items.

Trace associations must later be researched against plausible geology, mineral formation, host rock, and commonly associated secondary minerals.

Associations may be directional.

---

## 3.4 Trace Output State and Geological Representation: ESTABLISHED

Trace resources may appear through one or more deliberately selected geological representations:

### A. Separate associated underground body

```text
Primary underground deposit
+ nearby associated trace deposit
```

Mining the trace body produces its canonical raw ore.

### B. Mining coproduct

```text
Primary geological deposit
↓ mining operation
Primary Raw Ore
+ probabilistic Trace Raw Ore
```

The trace output is canonical **raw ore**, not concentrate.

### C. Beneficiation recovery

```text
Crushed Primary Ore
→ Wash Plant
→ Primary Concentrate
+ Trace Concentrate
```

The trace output is canonical concentrate because beneficiation has occurred.

Not every mineral must use every representation.

The same geological trace resource should not be unintentionally counted multiple times.

A future specialized extraction technology could theoretically combine mining and crushing, but standard underground mining does not output crushed trace ore or concentrate.

---

## 3.5 Default Processing Family with Specialized Alternatives: ESTABLISHED

The default conventional mineral-processing path is:

```text
Raw Ore
→ Crushed Ore
→ Concentrate
→ Metallurgical Extraction
```

This is a baseline architecture, not an absolute requirement that every mineral use the same processing forever.

Mineral-specific research and recipe design may later introduce specialized or alternative paths when justified.

Examples:

```text
Raw Ore
→ Crushed Ore
→ Chemical Processing
→ Specialized Intermediate
→ Metal
```

or:

```text
Raw Ore
→ Crushed Ore
→ Advanced Beneficiation
→ Higher-Recovery / Specialized Product
→ Metallurgical Extraction
```

Alternative routes may improve:

- recovery;
- productivity;
- throughput;
- trace separation;
- reagent efficiency;
- process capability.

The framework remains flexible. Specialized paths are determined later on a mineral-by-mineral basis.

---

## 3.6 Deposit-Level Geological Variation: ESTABLISHED

Individual deposits of the same canonical primary mineral may have different geological compositions.

Example:

```text
Hematite Deposit A
→ Hematite Ore
→ no meaningful trace coproduct

Hematite Deposit B
→ Hematite Ore
→ possible low trace Mineral B

Hematite Deposit C
→ Hematite Ore
→ possible trace Mineral B
+ very-low trace Mineral C
```

All variants still produce the same primary canonical raw ore item:

```text
iron-ore
Localized: Hematite Ore
```

Geological variation belongs to the **deposit/resource entity profile**, not to separate primary inventory-item variants.

Do not create inventory bloat such as:

- Nickel-Bearing Hematite Ore item
- Basaltic Hematite Ore item
- Sulfurous Hematite Ore item

unless a later process explicitly requires a genuinely distinct material.

---

## 3.7 Resource Prototype Variants and Mining Behavior: ESTABLISHED

A static Factorio resource prototype cannot spontaneously have different `mineable` result definitions per individual deposit because those results belong to the prototype.

The intended architecture therefore permits multiple resource-entity prototypes representing curated geological variants of the same primary mineral.

Example conceptual resource profiles:

```text
Pure Hematite
Nickel-Bearing Hematite
Basaltic Hematite
Sulfurous Hematite
Other Curated Hematite Variant
```

These may reuse the same or substantially the same primary mineral graphics.

Different resource variants may have different mining-result definitions.

Conceptually:

```text
Nickel-Bearing Hematite
↓ one mining operation
Guaranteed Hematite Ore
+ low-probability Nickel Ore
```

Once mined:

- Hematite Ore is ordinary canonical Hematite Ore.
- Nickel Ore is ordinary canonical Nickel-family raw ore.
- The primary ore item does not carry hidden deposit provenance.

Therefore:

> Deposit-specific geological composition persists through the mining operation, not as hidden provenance attached to the resulting primary ore item.

The exact Factorio prototype/runtime implementation must still be validated during technical prototyping.

---

## 3.8 Base Autoplace Resource plus Curated Runtime Variants: ESTABLISHED

World-generation settings expose/configure only the **canonical Pure/Default base resource** for each primary mineral.

For example, Hematite appears as one configurable ore resource rather than exposing every specialized deposit profile as a separate map-generation slider.

Conceptual architecture:

```text
Map Generation / Autoplace
        ↓
Pure/Default Hematite Base Resource
        ↓
Base patch generated / identified
        ↓
Runtime or generation-integrated deposit processing
        ↓
Resolve planet + canonical primary mineral + stable deposit identity
        ↓
Build that planet/mineral's weighted profile outcome pool
        ↓
Deterministically select Pure/Default or one curated specialized profile
        ↓
Apply the selected profile coherently to the whole deposit
```

The goal remains to prevent world-generation configuration from becoming cluttered with potentially hundreds of geological/profile variants.

The base resource establishes **where the canonical primary mineral deposit exists**. The later profile roll determines **which curated geological/mineralization form that deposit takes**.

Normal profile selection is terrain-independent; natural terrain/biome tiles and TI geology classes are not inputs to the profile roll.

Exact runtime/generation integration remains subject to Factorio API prototyping.

---

## 3.9 One Geological Profile per Deposit: ESTABLISHED

A normal generated ore deposit receives **one geological/mineralization profile for the entire patch**.

The patch must not become a random checkerboard of unrelated profile identities.

Example:

```text
Generated Hematite Patch
        ↓
Deterministic weighted profile roll
        ↓
Select Nickel-Bearing Hematite Profile
        ↓
Entire patch belongs to that Hematite profile
```

Spatial trace-bearing sub-entities permitted by Decision 3.16 may vary within the patch, but they represent the abundance/composition of the **one selected deposit profile**, not multiple independently rolled profiles.

Profile selection no longer depends on which biome or terrain tiles the patch overlaps.

Once selected, the profile is stable for the entire deposit and must not reroll because of chunk visitation, save/load, runtime iteration order, or later terrain changes.

Special mixed deposits may be designed separately in the future, but they are not the default behavior.

---

## 3.10 Geological Profile Responsibilities: ESTABLISHED

A curated geological/mineralization profile may influence:

- which specialized form of the already-selected primary mineral the deposit represents;
- relative profile-selection weight for that planet/mineral pair;
- which scientifically plausible trace minerals may occur;
- trace-mineral occurrence probabilities and abundance rules;
- eligible associated underground bodies;
- potentially deposit richness/reserve characteristics where later explicitly justified;
- potentially patch morphology/shape where useful and technically practical.

The profile does **not** change the identity of the primary mineral deposit selected by autoplace.

Example:

```text
World generation selects Hematite on Planet X
        ↓
Planet X Hematite profile pool
        ↓
Pure/Default Hematite
Nickel-Bearing Hematite
Sulfurous Hematite
Other curated Planet X Hematite profiles
        ↓
Deterministic weighted selection
```

It does not spontaneously reinterpret that Hematite deposit as Copper, Tin, Lead, or another primary mineral.

Real-world geology and mineral association research inform the **contents and plausibility of profiles**, but natural terrain/biome tiles do not gate normal profile selection.

Exact profile weights, trace tables, reserve modifiers, and any optional profile-specific morphology remain future research/balance work.

---

## 3.11 Pure/Default Deposit as Natural Outcome and Failure Fallback: ESTABLISHED

Every primary mineral has a canonical **Pure/Default base resource entity**.

For Hematite:

```text
Pure Hematite Deposit
→ 100% primary Hematite output
→ no specialized geological trace behavior
```

The Pure/Default entity serves three purposes:

### A. Map-generation/autoplace base

It is the canonical resource used by normal world-generation configuration.

### B. Natural weighted profile outcome

Pure/Default remains a normal natural outcome in the planet/mineral-specific weighted profile pool.

Conceptually:

```text
Pure/Default
+ Specialized Profile A
+ Specialized Profile B
+ ...
        ↓
Deterministic weighted selection
```

If a planet/mineral pair has no specialized profiles configured, the deposit remains Pure/Default.

### C. Runtime / configuration failure fallback

If profile resolution or resource replacement fails because of invalid data, runtime errors, corruption, incomplete configuration, or another failure, the system must degrade safely to the Pure/Default resource.

Governing rule:

> Failure must degrade to a valid pure primary deposit, never to a missing, broken, or partially converted deposit.

As far as Factorio's runtime API reasonably permits, patch conversion should behave transactionally:

```text
Resolve and convert whole patch successfully
OR
ensure whole patch remains/reverts to Pure/Default
```

A valid generated deposit must resolve to exactly one coherent profile:

- Pure/Default; or
- one specialized profile valid for that planet + primary mineral.

Terrain/biome mapping is no longer part of the fallback path.

---

## 3.12 Deposit Profile Count: ESTABLISHED

Each primary mineral may have:

```text
1 mandatory Pure / Default Deposit Profile
+ 0 to 5 Specialized Geological Variants
= 1 to 6 total deposit profiles
```

Six is an **upper bound**, not a target.

Examples:

```text
1 Pure
+ 1 Specialized
= 2 total
```

```text
1 Pure
+ 3 Specialized
= 4 total
```

```text
1 Pure
+ 5 Specialized
= 6 total maximum
```

Only minerals that genuinely benefit from broad geological differentiation should approach the maximum.

The design should minimize unnecessary:

- prototype count;
- memory footprint;
- graphics/resource overhead;
- localization;
- runtime complexity;
- testing burden;
- maintenance burden.

The pure/default profile is mandatory.

Specialized profiles are optional and should exist only when geological research and gameplay value justify them.


---

## 3.13 Terrain-Independent, Planet-Scoped Weighted Deposit-Profile Resolution: LOCKED

Normal canonical surface-deposit profile selection is **independent from natural terrain tiles and biome size**.

TI uses a **planet + primary mineral + deterministic weighted profile roll** to choose whether each generated canonical deposit remains Pure/Default or becomes one of that planet/mineral pair's curated specialized profiles.

Conceptually:

```text
Vanilla/TI Autoplace Generates Canonical Primary Deposit
        ↓
Identify Complete Deposit / Stable Deposit Identity
        ↓
Resolve Planet + Primary Mineral
        ↓
Load Planet/Mineral Profile Pool
        ├─ Pure/Default
        ├─ Specialized Profile A
        ├─ Specialized Profile B
        └─ ...
        ↓
Deterministic Weighted-Random Roll
        ↓
One Coherent Profile for the Entire Deposit
```

### A. Terrain and biome do not gate normal profile eligibility

The selected natural tile, biome, biome family, or visual terrain underneath a deposit does not determine which normal specialized deposit profiles may occur.

TI therefore does not require a world-spanning geology mask or tile-to-geology classification system for this architecture.

This avoids tying mineral-profile diversity to Factorio's comparatively large biome regions and avoids making important mineralization outcomes spatially scarce merely because a required biome happens to be distant or oversized.

### B. Planet + primary mineral defines the candidate profile catalog

For each canonical primary mineral on each planet, TI defines a curated profile pool.

Example:

```text
Planet X + Hematite
        ↓
Pure/Default Hematite
Nickel-Bearing Hematite
Sulfurous Hematite
Other researched Planet X Hematite profiles
```

Another planet containing Hematite may use a different profile catalog and different weights.

### C. Pure/Default always remains a normal weighted outcome

Pure/Default is not merely a failure state.

Whenever specialized profiles exist, Pure/Default remains in the normal weighted outcome pool.

If no specialized profiles are configured for that planet/mineral pair, the canonical deposit remains Pure/Default.

Exact Pure/Default and specialized-profile weights are deferred.

### D. Profile selection is deterministic per deposit

The weighted outcome must be stable for a given generated deposit.

It must not reroll because of:

- save/load;
- chunk revisitation;
- player proximity;
- runtime iteration order;
- later terrain replacement;
- when the deposit is first observed.

The implementation may derive the result from stable world/deposit inputs or persist the selected result.

Exact seed/hash/storage mechanics remain deferred.

### E. One profile remains coherent across the full deposit

Decision 3.9 remains in force.

A normal deposit receives one profile identity across the entire patch, including deposits that span multiple chunks.

Decision 3.16 may still spatially distribute trace-bearing sub-entities within that one profile to represent generated trace abundance.

### F. Geological science informs profile content, not map placement

Real-world geological/mineralogical research remains important.

For each planet/mineral pair, research should inform:

- which specialized profiles are plausible;
- which primary trace minerals are plausible;
- which optional secondary traces are plausible;
- which separate associated underground bodies are plausible;
- relative rarity/weighting direction;
- later processing implications where relevant.

However, TI no longer attempts to spatially simulate those geological environments through natural terrain tiles.

The abstraction is:

> Real geology defines **what kinds of mineralization can exist**; the planet/mineral-specific weighted roll determines **which kind this deposit received**.

### G. Planetary fiction may refine the researched profile catalog

The real-world mineral system remains the baseline, but Factorio's fictional planetary environments and gameplay needs may justify controlled adaptation.

Such adaptation occurs when authoring the planet/mineral profile catalog and weights, not through terrain gating.

The profile set must remain internally coherent and deliberately designed rather than becoming arbitrary random mineral pairing.

### H. Profile selection does not alter canonical resource frequency, size, or richness architecture

Decision 3.13 operates after the canonical deposit has been selected/generated.

It does not independently increase:

- deposit frequency;
- patch size;
- base richness;
- user map-generation slider values.

Decisions 3.29 through 3.31 remain authoritative for those dimensions.

A later profile may receive a deliberately designed reserve/richness characteristic only if explicitly defined without violating the broader surface-reference and underground-reserve rules.

### I. Specialized profile variants do not become separate map-generation controls

The map-generation UI continues to expose only the canonical primary resource.

For example:

```text
Hematite Frequency / Size / Richness
```

is configurable, while:

```text
Nickel-Bearing Hematite Frequency
Sulfurous Hematite Frequency
```

are not separate world-generation resource controls.

Their occurrence is determined by the planet/mineral weighted profile system.

### J. Pure/Default remains the technical failure fallback

If deposit identity resolution, profile lookup, deterministic selection, resource conversion, or another implementation step fails, the deposit must remain or revert to Pure/Default as established in Decision 3.11.

Failure must never leave a partially converted or missing deposit.

### K. Terrain-specific exceptional resources require a separate explicit decision

Decision 3.13 governs the normal canonical surface-deposit profile system.

A future deliberately exceptional resource type, such as a unique alluvial/placer mechanic or another environment-specific resource system, may use separate placement constraints only if that behavior is explicitly researched, designed, and locked later.

It must not silently reintroduce terrain gating into ordinary primary-resource profile selection.

### L. Exact profile tables and mathematics remain deferred

Decision 3.13 locks the terrain-independent ownership and selection architecture only.

It does not yet lock:

- exact planet-by-planet primary mineral allocation;
- exact specialized profiles for each planet/mineral pair;
- exact Pure/Default weight;
- exact specialized-profile weights;
- exact deterministic RNG/hash function;
- exact deposit identity method;
- exact cross-chunk patch finalization mechanism;
- exact resource-entity conversion implementation;
- final trace association tables;
- final associated-underground-body tables;
- profile-specific balance modifiers.

---

## 3.14 Trace-Mineral Count per Specialized Deposit Profile: LOCKED

A specialized geological deposit profile may contain:

```text
Guaranteed Primary Raw Ore
+ 1 Primary Trace Mineral
+ optionally 1 Secondary Trace Mineral
```

This establishes a maximum of **two distinct trace minerals per specialized deposit profile**.

### A. Primary trace mineral

The primary trace mineral is the main geological association represented by the specialized deposit profile.

It is optional in the sense that some specialized profiles may exist for geological reasons other than a mineable trace coproduct, but where a trace-bearing profile is defined, this is the principal trace association.

The trace output uses the trace mineral's canonical raw ore item as already established in Decisions 3.3 and 3.4.

### B. Secondary trace mineral

A specialized deposit profile may additionally define one secondary trace mineral when geological research justifies it.

The secondary trace must occur at a **substantially lower rarity / occurrence rate** than the primary trace mineral.

Exact probabilities and quantities are deferred.

### C. Maximum complexity

A normal specialized geological profile must not exceed:

```text
1 Primary Mineral
+ 2 Distinct Trace Minerals Maximum
```

This prevents deposit mining outputs from becoming excessively broad or turning one deposit into a generalized source of many unrelated minerals.

### D. Pure/Default profile

The Pure/Default profile contains:

```text
Guaranteed Primary Raw Ore
+ no geological trace coproducts
```

Pure/Default remains the trace-free baseline unless a later explicitly designed process changes that rule.

### E. Geological justification

Both primary and secondary trace associations must be supported by later mineral/geology research.

Trace slots are a maximum capability, not a requirement.

Most specialized profiles may use only one trace mineral.

### F. Rarity hierarchy

The intended qualitative hierarchy is:

```text
Primary Mineral      → guaranteed
Primary Trace        → low / uncommon
Secondary Trace      → very low / substantially rarer
```

Exact numeric chances, quantities, reserve contributions, and balance values remain deferred.

---

## 3.15 Deposit-Level Trace Abundance Variability: LOCKED

Trace-bearing specialized deposits use a **hybrid deposit-level abundance model**.

When a specialized geological profile is selected for a deposit, the deposit receives a deterministic trace-abundance realization for each configured trace mineral. This allows two deposits with the same specialized geological profile to contain meaningfully different amounts of the same trace mineral while preserving the profile's overall geological identity.

Conceptually:

```text
Specialized Deposit Profile Selected
        ↓
Determine Deposit-Level Trace Abundance
        ↓
Primary Trace: variable abundance within profile-defined bounds
Secondary Trace: independently variable, substantially rarer abundance
        ↓
Represent that abundance through an implementation method
validated during Factorio technical prototyping
```

### A. Same profile, variable trace abundance

Two deposits using the same geological profile do not have to produce identical trace quantities.

Example:

```text
Nickel-Bearing Hematite Deposit A
→ relatively poor Nickel trace

Nickel-Bearing Hematite Deposit B
→ moderate Nickel trace

Nickel-Bearing Hematite Deposit C
→ relatively rich Nickel trace
```

All remain the same specialized geological profile.

### B. Deterministic generation

Trace abundance is resolved when the deposit is generated and must be deterministic for the world seed/deposit.

Reloading, runtime iteration order, or later terrain changes must not reroll the deposit's abundance.

### C. Secondary trace remains substantially rarer

Where a secondary trace mineral exists under Decision 3.14, its abundance range must remain substantially lower than the primary trace mineral's range.

Exact abundance ranges, probability distributions, and balance values are deferred.

### D. Implementation representation remains open

Decision 3.15 locks the **gameplay semantics** of deposit-level trace abundance variability, not the exact Factorio representation.

Candidate implementation directions include:

1. **Profile resource prototype + abundance-adjusted mining behavior**
   - the specialized resource entity retains the primary mineral identity;
   - deposit-level abundance influences probabilistic trace mining outputs.

2. **Profile-governed mixed resource entities within the patch**
   - the deposit remains one coherent geological profile;
   - a deterministic percentage/distribution of resource entities within the patch may be replaced or overlaid with trace-resource entities;
   - this may provide visible trace pockets inside an otherwise primary-mineral deposit.

3. **Another deterministic representation**
   - permitted if technical prototyping shows it better satisfies the same locked gameplay semantics.

The exact choice is deferred until Factorio API behavior, performance, visuals, patch detection, save-state requirements, and compatibility are tested.

### E. Existing canonical primary-item identity remains in force

Decision 3.15 does **not** reopen Decisions 3.6 and 3.7.

Deposit-specific geology does not automatically create separate primary inventory-item variants such as:

- Nickel-Bearing Hematite Ore
- Sulfurous Hematite Ore
- Nickel-Bearing Crushed Hematite

The currently locked direction remains:

```text
Specialized Hematite Deposit
        ↓
Canonical Hematite Ore
+ optional canonical trace raw ore output(s)
```

A future decision may explicitly revisit distinct primary material items only if a genuinely distinct downstream process requires them. Such a change would be an intentional revision to the existing taxonomy, not an implicit consequence of Decision 3.15.

### F. Visual trace representation is permitted as an implementation candidate

The design may visually expose trace-bearing portions of a deposit by distributing trace resource entities or otherwise differentiating parts of the patch, provided:

- the entire deposit still has one geological profile;
- trace distribution is derived from that profile and its generated abundance;
- the primary deposit identity remains coherent;
- trace resources are not double-counted through multiple representations;
- the implementation does not silently violate the canonical item-identity rules.

### G. No hidden fixed-reserve requirement

The hybrid model does not require a fully simulated hidden numeric trace reserve unless technical implementation later chooses that approach.

The required behavior is only that a generated deposit has a stable, deposit-specific trace abundance that produces observable variation between otherwise similar deposits.

---

## 3.16 Spatial and Tooltip Representation of Trace Abundance: LOCKED DIRECTION, IMPLEMENTATION TO BE SELECTED BY PROTOTYPING

Decision 3.16 locks three technically valid representation candidates for the deposit-level trace-abundance semantics established in Decision 3.15.

The final implementation is intentionally deferred until in-game prototyping and technical testing compare behavior, performance, visuals, player readability, API support, compatibility, and maintenance cost.

### A. Uniform specialized resource entity

The entire deposit may use one specialized primary-mineral resource entity.

Example:

```text
Nickel-Bearing Hematite Deposit
→ entire patch uses Nickel-Bearing Hematite resource entities
→ mining always yields canonical Hematite Ore
→ trace Nickel/Cobalt recovery is probabilistic
```

The deposit-level abundance generated under Decision 3.15 may influence the trace-output probability or equivalent mining behavior.

This is the simplest implementation candidate and remains a valid technical fallback.

### B. Physically distributed trace-resource entities

The generated trace abundance may be represented spatially by distributing canonical trace-resource entities within the primary deposit.

Conceptually:

```text
Primary Hematite entities
+ sparse Nickel resource entities
+ much sparser Cobalt resource entities
```

The percentage and/or spatial distribution would be derived from the deposit-specific trace abundance.

This approach has the advantage of making trace composition visibly present in the world.

However, technical prototyping must verify whether replacing primary resource entities with ordinary trace-resource entities unintentionally reduces primary-mineral reserve and conflicts with the intended additive trace-recovery semantics.

This remains a valid candidate, not the preferred direction.

### C. Trace-bearing primary-resource sub-entities: PREFERRED DESIGN DIRECTION

The preferred design direction combines spatial visibility with additive primary-mineral recovery.

A specialized geological deposit may contain a spatial mixture of primary-resource entity variants governed by the same geological profile.

Example:

```text
Pure/ordinary Hematite resource entity
Nickel-Bearing Hematite resource entity
Nickel+Cobalt-Bearing Hematite resource entity
```

Mining the trace-bearing primary-resource entity would still yield:

```text
Canonical Hematite Ore
+ canonical Trace Raw Ore output(s)
```

No separate trace-bearing primary inventory item is required.

The percentage/distribution of trace-bearing resource entities may represent the deposit-specific abundance generated under Decision 3.15.

This is the **preferred design direction** because it can potentially provide:

- visible trace-bearing areas within a coherent primary deposit;
- additive trace recovery without sacrificing intended primary yield;
- deposit-to-deposit abundance variability;
- canonical primary and trace inventory items;
- no abundance-specific ore item chain;
- no need for separate poor/medium/rich resource prototypes if spatial frequency can encode abundance.

### D. All three approaches remain locked prototyping candidates

Decision 3.16 does not eliminate Options A or B.

The implementation process should prototype and compare:

1. uniform specialized resource entities with probabilistic trace outputs;
2. physically distributed ordinary trace-resource entities;
3. trace-bearing primary-resource sub-entities.

Option C is preferred, but the final implementation may use A, B, C, or a carefully justified hybrid if in-game testing demonstrates a better result.

The selection must preserve all previously locked geological and material-identity semantics.

### E. Dynamic entity tooltip / description reporting is a preferred usability experiment

Where the Factorio runtime API permits it cleanly, the mod should explore exposing generated deposit-specific trace abundance through the hovered in-world resource entity tooltip.

Conceptually:

```text
Nickel-Bearing Hematite

Primary Mineral:
Hematite

Trace Composition:
Nickel: Moderate
Cobalt: Very Low
```

or another concise player-facing representation.

This tooltip behavior is distinct from static Factoriopedia/prototype descriptions.

The exact displayed values may be qualitative or quantitative depending on gameplay, balance, and API behavior.

Current Factorio runtime API documentation exposes per-entity runtime tooltip-field methods, making dynamic per-entity tooltip information technically plausible. Exact behavior for TI resource entities, synchronization, performance, persistence, and interaction with Factoriopedia must still be validated through a prototype.

Static localization/prototype descriptions remain suitable for general geological/profile descriptions, while generated abundance information should use runtime-capable tooltip behavior if adopted.

### F. Factoriopedia remains primarily prototype/profile documentation

Factoriopedia descriptions should primarily explain the resource/profile type rather than attempt to represent one specific generated deposit's abundance.

Per-deposit generated information belongs to the in-world entity/deposit presentation unless testing proves another approach superior.

### G. Existing inventory-item identity remains unchanged

Decision 3.16 does not create:

- Nickel-Bearing Hematite Ore items;
- Sulfurous Hematite Ore items;
- trace-bearing crushed primary ore variants;
- abundance-specific primary inventory items.

The existing canonical primary-item identity remains established.

If a future downstream process genuinely requires distinct material provenance, that would require an explicit revision decision rather than being implied by spatial or tooltip representation.

### H. Final implementation selection is a technical gate

The three candidate representations and tooltip experiment must be evaluated against at least:

- Factorio resource prototype/runtime API capabilities;
- chunk-generation and patch-conversion behavior;
- determinism;
- map/minimap readability;
- tooltip usability;
- save/load persistence;
- multiplayer determinism/synchronization;
- runtime and generation performance;
- prototype count;
- interoperability with other terrain/resource mods;
- preservation of primary and trace resource-balance semantics.

Decision 3.16 therefore locks the intended design space while deliberately deferring the final representation until technical prototyping provides evidence.

---

## 3.17 Discrete Trace-Abundance Grades with Within-Grade Variability: LOCKED

Each trace-bearing deposit receives a **discrete abundance grade** for each configured trace mineral.

The grade does not directly equal one fixed yield value. Instead, each grade owns a later-defined numeric variability range, and deposit generation selects an exact internal abundance value from within that grade's allowed range.

Conceptually:

```text
Specialized Deposit Profile
        ↓
Select / resolve Trace-Abundance Grade
        ↓
Grade provides an allowed base variability range
        ↓
Deterministically generate an exact value within that range
        ↓
Apply trace-mineral scaling / reduction
        ↓
Final deposit-specific trace abundance
```

### A. Discrete grade classification

Trace abundance is organized into named discrete grades rather than exposing an unconstrained continuous spectrum as the primary design abstraction.

Illustrative grade names may include terms such as:

```text
Poor
Moderate
Rich
```

or a broader set if later balance work justifies it.

The exact number of grades, grade names, and boundaries are explicitly deferred.

### B. Each grade has a variability range

A grade represents a range rather than a single percentage.

Illustrative examples only:

```text
Nickel-Poor
→ base grade range might be 5% to 25%

Nickel-Rich
→ base grade range might be 45% to 65%
```

These values are examples and are **not locked balance numbers**.

The generated deposit receives an exact value from inside its selected grade's range, so two deposits with the same grade may still differ materially.

### C. Trace scaling is separate from grade position

Because these are trace minerals, the base grade-range value does not necessarily represent the final literal percentage of the primary deposit converted into trace yield.

A separate multiplicative trace-scaling/reduction factor is applied.

Conceptually:

```text
Base Grade Value
× Trace Scaling Factor
= Final Trace Abundance
```

This allows a wide, readable abundance-grade range to drive meaningful variability while keeping the actual trace output appropriately small.

The exact scaling factors, formulas, units, and whether they operate on entity count, reserve-equivalent yield, mining probability, or another representation remain deferred until the Decision 3.16 implementation is selected.

### D. Deposit-specific exact value is stable

Once generated, a deposit's exact trace-abundance value is stable.

It must not reroll on:

- save/load;
- chunk revisitation;
- player proximity;
- terrain replacement;
- mining;
- runtime iteration order.

The generation must be deterministic or the generated result must be persisted so that the same deposit retains the same abundance.

### E. Primary and secondary traces are graded independently

Where a profile contains both a primary and secondary trace under Decision 3.14:

```text
Primary Trace
→ own abundance grade
→ own generated value

Secondary Trace
→ own abundance grade
→ own generated value
→ additionally constrained to remain substantially rarer
```

The secondary trace's permitted grades/ranges/scaling must preserve the rarity hierarchy established in Decision 3.14.

Exact coupling or independence of their random-generation distributions may be refined later if geological research warrants it.

### F. Runtime persistence is available if needed

Factorio 2.x provides the per-mod runtime `storage` table for serialized mutable data that persists across save/load.

If the selected Decision 3.16 representation requires explicit per-deposit state, TI may persist data conceptually equivalent to:

```text
Deposit Identity
Profile Identity
Primary Trace Grade
Primary Trace Generated Value
Secondary Trace Grade
Secondary Trace Generated Value
Other implementation-specific deposit state
```

The exact storage schema, deposit identifier, migration strategy, and cleanup lifecycle are implementation details and remain deferred.

A deterministic derivation that avoids storing redundant state is also permitted if it produces identical stable behavior.

### G. Grade/range mathematics are a later balance decision

Decision 3.17 locks the **grade + variability-range + trace-scaling architecture** only.

It does not lock:

- exact grade names;
- exact number of grades;
- exact grade probabilities;
- exact percentage ranges;
- exact trace multipliers;
- exact RNG distribution;
- exact rounding rules;
- exact primary/secondary correlation;
- final yield mathematics.

Those will be designed and tested later with the selected spatial/mining representation.

---

## 3.18 Shared Abundance-Grade Vocabulary with Profile-Specific Mathematics: LOCKED

Trace abundance uses a **shared qualitative grade vocabulary** for player-facing consistency, while the underlying numeric behavior is defined per specialized geological profile and trace mineral.

Conceptually:

```text
Shared Grade Vocabulary
        ↓
Profile-Specific Grade Availability
        ↓
Profile-Specific Grade Weights
        ↓
Profile/Trace-Specific Numeric Range
        ↓
Trace-Specific Scaling Mathematics
```

### A. Shared qualitative vocabulary

All trace-bearing deposits use the same small set of qualitative abundance-grade names.

Illustrative examples include:

```text
Very Poor
Poor
Moderate
Rich
Very Rich
```

The exact grade names and final number of grades remain deferred.

The purpose of the shared vocabulary is player readability and consistency across minerals.

### B. Grade meaning is relative to the geological association

A player-facing grade such as `Rich` means:

> High abundance relative to what is plausible for this trace mineral in this specialized geological profile.

It does not imply one universal literal percentage across all minerals or profiles.

### C. Profile-specific grade availability

Each specialized geological profile may define which grades are valid for each trace mineral.

Example:

```text
Nickel in Profile A:
- Poor
- Moderate
- Rich

Gold in Profile B:
- Very Poor
- Poor
- Moderate
```

A grade that is geologically inappropriate for a profile does not need to be available.

### D. Profile-specific grade-selection weights

Each specialized geological profile defines how likely its valid abundance grades are.

Conceptually:

```text
Poor      → common
Moderate  → less common
Rich      → uncommon
```

Another profile containing the same canonical trace mineral may use a different grade distribution.

This allows the same trace mineral to behave differently in different host deposits.

### E. Profile/trace-specific numeric ranges

Each valid grade may map to a different numeric variability range depending on:

- specialized geological profile;
- trace mineral;
- whether the trace is primary or secondary;
- later balance decisions.

Therefore, the numeric range represented by `Rich Nickel` does not have to equal the range represented by `Rich Gold`.

### F. Trace-specific scaling remains separate

After a grade is selected and an exact internal value is generated inside that grade's range, the trace-scaling/reduction layer established in Decision 3.17 is applied.

Conceptually:

```text
Profile-specific Grade Roll
        ↓
Exact Value Within Grade Range
        ↓
Trace-Specific Scaling
        ↓
Final Deposit Trace Abundance
```

### G. Two-stage generation is locked

Trace abundance generation follows two distinct stages:

1. **Select abundance grade**
   - using profile-specific grade weights.

2. **Generate exact abundance inside that grade**
   - using the profile/trace-specific numeric range.

This structure is preferred over one unrestricted continuous roll because it gives explicit control over geological rarity distribution while retaining deposit-to-deposit variability.

### H. Primary and secondary traces remain independently configurable

The primary and optional secondary trace mineral may have:

- different valid grades;
- different grade weights;
- different numeric ranges;
- different scaling factors.

All such configuration must still preserve the Decision 3.14 rule that the secondary trace remains substantially rarer.

### I. Exact taxonomy and mathematics remain deferred

Decision 3.18 locks the ownership model only.

It does not yet lock:

- final grade names;
- final grade count;
- grade boundaries;
- per-profile grade tables;
- per-trace grade weights;
- per-grade numeric ranges;
- trace multipliers;
- RNG distributions;
- final abundance/yield formulas.

---

## 3.19 Surface-to-Underground Geological Profile Inheritance: LOCKED

Underground continuation preserves the same **geological profile identity** as its associated surface deposit while independently generating underground trace abundance.

This creates one coherent geological/mineralization system with depth-dependent variation.

Conceptually:

```text
Surface Deposit
        ↓
Geological Profile Selected
        ↓
Surface Trace Grades / Values Generated
        ↓
Associated Underground Continuation
        ↓
INHERITS SAME Geological Profile
        ↓
Generates New Underground Trace Grades / Values
within that profile's permitted ranges
```

### A. Geological profile identity is inherited

The guaranteed primary underground continuation does not independently resolve to a different specialized profile.

Example:

```text
Surface:
Nickel-Bearing Hematite

Primary Underground Continuation:
Nickel-Bearing Hematite
```

This preserves the interpretation that the surface deposit and its underground continuation belong to one coherent geological body/mineralization system.

### B. Trace abundance is regenerated for the underground continuation

The underground continuation independently generates its own trace-abundance grades and exact internal abundance values using the same profile-specific rules established in Decisions 3.17 and 3.18.

Example:

```text
Surface Nickel-Bearing Hematite:
Nickel = Poor
Cobalt = Very Poor

Underground Nickel-Bearing Hematite:
Nickel = Rich
Cobalt = Poor
```

The exact values must remain within the ranges and rarity rules permitted by that geological profile.

This allows meaningful depth variation without changing the deposit's geological identity.

### C. Primary underground node

The guaranteed primary underground node established in Decision 1 represents the underground continuation of the same primary mineral and geological profile.

Its reserve multiplier remains independently determined by the underground-reserve rules from Decision 1.

Trace abundance and reserve quantity are separate balancing dimensions.

### D. Optional underground nodes remain profile-constrained

Optional underground nodes may still resolve to:

- the main mineral;
- a geologically plausible trace/secondary mineral;
- nothing.

The inherited geological profile constrains which trace/secondary minerals are eligible to appear as optional underground bodies.

Conceptually:

```text
Nickel-Bearing Hematite Profile
        ↓
Optional Underground Node Eligibility
        ├─ Hematite continuation
        ├─ Nickel-associated body
        ├─ very rare Cobalt-associated body
        └─ nothing
```

Exact node probabilities, weights, and reserve multipliers remain deferred.

### E. Surface and underground abundance are related by profile, not exact value

The surface and underground portions share:

- primary mineral identity;
- geological profile;
- allowed trace-mineral set;
- profile-specific grade/range rules.

They do not have to share:

- exact trace grade;
- exact trace abundance value;
- reserve quantity;
- optional-node outcome.

This creates geological continuity without forcing identical composition at every depth.

### F. No profile switching with depth by default

A normal underground continuation does not automatically switch from one specialized profile to another.

Example:

```text
Surface:
Nickel-Bearing Hematite

Underground:
Sulfurous Hematite
```

is not the default architecture.

A future explicitly designed exceptional geological structure could introduce profile transitions, but that would require a separate decision.

### G. Trace-resource representations must avoid double-counting

The same geological trace resource must not be unintentionally counted as if it were independent full reserves across:

- surface mining coproducts;
- underground mining coproducts;
- separate optional underground trace nodes;
- Wash Plant beneficiation recovery;
- any future specialized extraction representation.

The geological profile may make several representation methods available, but the underlying trace-resource balance must remain coherent.

Exact allocation/recovery mathematics between these representations are deferred.

### H. Independent underground trace generation remains deterministic

The underground trace-grade/value generation must be stable for the world/deposit.

It must not reroll because of:

- save/load;
- discovery timing;
- mining timing;
- runtime iteration order;
- player proximity.

The exact deterministic seed/storage mechanism remains implementation-open.

---

## 3.20 Contained Trace Recovery Budget vs. Separate Associated Bodies: LOCKED

A trace-bearing geological profile distinguishes between two fundamentally different geological representations:

1. **Contained / disseminated trace mineralization**
2. **Spatially separate associated mineral bodies**

These must not be treated as interchangeable copies of the same reserve.

### A. Contained / disseminated trace mineralization

Contained trace mineralization represents trace material physically present within, intergrown with, disseminated through, or otherwise carried by the primary ore body.

Conceptually:

```text
Primary Geological Deposit
        ↓
Contained Trace Mineralization
        ↓
One Shared Recovery Budget
        ├─ Direct Mining Coproduct Recovery
        └─ Beneficiation Recovery
```

The mining coproduct and beneficiation channels therefore represent different recovery stages from the **same contained trace material**.

They must not each independently expose the full trace abundance.

### B. Direct mining coproduct

Direct mining coproduct recovery represents the portion of contained trace mineralization that can be recovered directly during extraction.

```text
Primary Mining
→ Primary Raw Ore
+ optional Trace Raw Ore
```

This uses the canonical trace raw ore item.

The amount recoverable through direct mining is only one portion of the contained trace-recovery budget.

### C. Beneficiation recovery

Beneficiation represents additional trace material recovered from the already-mined primary ore during concentration/separation.

```text
Crushed Primary Ore
→ Primary Concentrate
+ optional Trace Concentrate
```

This uses the canonical trace concentrate item.

Beneficiation may recover material that was not recovered as a direct mining coproduct.

Direct mining plus beneficiation must remain mathematically coherent with the same contained trace budget.

### D. Progression may increase accessible recovery

Later mining, beneficiation, reagents, separation technology, or process improvements may expose a larger portion of the contained trace budget.

This supports the governing metallurgy principle:

> Better technology makes a finite resource base stretch progressively farther.

Technology may improve recovery from the existing geological trace potential, but must not silently create an independent duplicate reserve.

### E. Separate associated underground bodies

A separate associated underground node represents a **distinct finite geological body** associated with the same mineralization system.

Conceptually:

```text
Primary Deposit / Geological Profile
        ↓
Associated Geological System
        ↓
Separate Secondary Mineral Body
        ↓
Own Finite Underground Reserve
```

This reserve is not merely another recovery channel for the contained trace material.

It may therefore have its own:

- existence roll;
- reserve quantity;
- node composition;
- depletion behavior.

Its eligibility and occurrence remain constrained by the inherited geological profile.

### F. A profile may support contained trace, separate body, or both

For a given trace mineral, geological research may establish one of the following:

```text
Contained only
Separate associated body only
Both contained and separate
Neither
```

If both are supported, they represent distinct geological material and must be balanced accordingly.

### G. Anti-double-counting rule

The same contained trace abundance must not be independently counted as:

- a full mining coproduct reserve;
- another full beneficiation reserve;
- another full trace reserve through another contained-material process.

Contained recovery channels share one conceptual recovery budget.

Separate associated bodies are distinct finite reserves only when the geological profile explicitly supports such bodies.

### H. Exact allocation mathematics remain deferred

Decision 3.20 locks the geological and recovery semantics only.

It does not yet lock:

- contained trace reserve units;
- mining-coproduct recovery fraction;
- beneficiation recovery fraction;
- technology-based recovery ceilings;
- separate-node occurrence probabilities;
- separate-node reserve multipliers;
- exact relationships between trace abundance grades and recoverable units;
- final yield formulas.

Those values will be developed during later mineral-specific research, balance design, and technical prototyping.

---

## 3.21 Simulated Underground Deposit Entity and Internal Reserve Composition: LOCKED

Underground mineralization is **simulated**, not represented as a second playable subterranean surface or as a tiled underground ore patch.

The current preferred direction under review is to represent each paired underground continuation with **one large surface-accessible underground deposit / deep-mine entity**, potentially on the order of a large 7×7-tile footprint, using the available deep-core-miner-style building graphics if appropriate.

The one world entity would represent the aggregate accessible underground reserve. The 1-to-5 underground nodes established in Decision 1 would remain **logical reserve components used to calculate the total simulated reserve and composition**, rather than necessarily spawning as separate map entities.

A dedicated deep-underground mining building/entity would perform the simulated extraction from that aggregate reserve.

Conceptually:

```text
Surface Deposit
        ↓
Paired Underground Continuation Generated
        ↓
One Underground Deposit / Mine-Entrance Entity
        ↓
Internal Simulated Reserve State
        ├─ Primary Mineral Reserve
        ├─ Primary Trace Composition
        ├─ Optional Secondary Trace Composition
        └─ Optional Distinct Associated Reserve Components
        ↓
Deep Underground Mine
        ↓
Generated Mining Outputs
```

### A. No subterranean Factorio surface

The underground system does not require:

- a second playable underground surface;
- Subterranean-style underground terrain;
- tiled underground ore-resource patches;
- hundreds or thousands of hidden resource entities representing one underground body.

The underground geology exists as simulated reserve data associated with one world entity.

### B. Decision 1 underground nodes are logical reserve components

The underground-node architecture established in Decision 1 is retained, but its **representation is clarified**.

The guaranteed primary node and optional nodes are conceptual/logical reserve components inside the simulated underground deposit. Under the current preferred direction, their reserve multipliers and mineral composition would be aggregated into the one spawned underground mine/deposit entity rather than spawning as separate map entities.

Conceptually:

```text
Underground Deposit Entity
        ↓
Internal Reserve Components
        ├─ Node 1: guaranteed primary mineral
        ├─ Node 2: optional
        ├─ Node 3: optional
        ├─ Node 4: optional
        └─ Node 5: optional
```

Optional components may still resolve to:

- additional primary-mineral reserve;
- a geologically plausible trace/secondary reserve;
- nothing.

Exact internal data structure remains implementation-open.

### C. Underground profile inherits the surface profile

As established in Decision 3.19, the simulated underground continuation inherits the geological profile identity of the associated surface deposit.

Example:

```text
Surface:
Nickel-Bearing Hematite

Underground Deposit Entity:
Nickel-Bearing Hematite continuation
```

The underground reserve then independently generates its own abundance grades, exact values, reserve quantities, and optional reserve-component outcomes within that profile's permitted rules.

### D. Associated underground trace bodies are internal reserve components

A separate associated underground trace body established under Decision 3.20 does **not** need to spawn as its own ordinary surface resource patch or resolve through the trace mineral's Pure/Default surface-resource profile.

Instead, it is represented as a distinct finite internal reserve component inside the same underground deposit entity.

Example:

```text
Underground Nickel-Bearing Hematite Deposit
        ↓
Internal State:
- Hematite primary reserve
- contained Nickel trace budget
- optional distinct Nickel-associated reserve
- optional very-rare Cobalt-associated reserve
```

The associated reserve remains geologically distinct for balance/depletion purposes even though it shares the same world entity.

### E. Output composition is simulated by yield rates / recovery rules

The underground mining building may output the primary mineral plus trace/secondary materials according to the generated reserve composition.

Conceptually:

```text
Deep Underground Mine Cycle
        ↓
Guaranteed / dominant Primary Raw Ore
+ profile-governed Trace Raw Ore yield
+ optional associated-reserve output
```

The exact mechanism may use:

- weighted/probabilistic outputs;
- percentage yield rates;
- reserve-depletion accounting;
- batch composition;
- another deterministic simulation method.

Exact formulas remain deferred.

### F. Oil-node analogy is architectural, not a locked API implementation

The intended player-facing model is analogous to Factorio oil/resource nodes in that one world entity represents access to a much larger underlying resource body and a building extracts from that entity.

Decision 3.21 does not yet lock whether the final prototype is literally a `resource` prototype, another entity type, or a hybrid runtime implementation.

That must be validated through Factorio prototyping.

### G. No independent geological recursion for associated underground traces

Because associated underground trace bodies are internal reserve components of the same simulated underground deposit, they do not independently run the full surface-deposit geological-profile resolver.

They inherit their eligibility from the parent underground geological profile and receive their own reserve/yield variability according to that profile's later-defined association tables.

This supersedes the previously considered idea of resolving an associated Nickel body as a separate Pure/Default or specialized Nickel surface-resource profile.

### H. Internal state may be persisted

If required by the implementation, the underground deposit entity may have persisted runtime state containing:

```text
Deposit Identity
Inherited Geological Profile
Primary Reserve
Primary Trace Grade / Value
Secondary Trace Grade / Value
Optional Associated Reserve Components
Remaining Reserve Quantities
Other extraction state
```

The exact `storage` schema, entity identity key, migration strategy, and depletion algorithm remain implementation details.

### I. Surface visual geology and underground simulation remain distinct

Surface deposits may use any of the Decision 3.16 visual/resource-entity approaches.

The underground continuation does not need to mirror the surface's tiled visual representation.

It should imitate the **geological composition and profile logic** of the surface deposit while using a simplified single-entity simulated-reserve architecture appropriate to deep mining.

### J. Locked player-facing access architecture

Decision 3.21 is **LOCKED** with the following player-facing rule:

```text
Paired Underground Continuation
        ↓
One Surface Underground-Vein / Mine-Access Node Spawns
        ↓
Player Places Deep Mine Building Over That Node
        ↓
Deep Mine Extracts From the Node's Simulated Internal Reserve
```

The spawned world entity is therefore the **underground-vein / mine-access node**, not the final operating mine itself.

The player must place the Deep Mine building over, on, or otherwise directly coupled to that node to begin underground extraction.

The full locked direction is:

1. Exactly one underground world entity is used per paired surface deposit under the normal architecture.
2. Decision 1's Node 1 through Node 5 structure survives as logical reserve-generation components.
3. Same-primary logical nodes may aggregate into one primary reserve pool.
4. Distinct secondary/associated bodies may remain separate internal reserve pools even though they share the same world entity.
5. Contained traces remain attached conceptually to their host reserve body under Decision 3.20.
6. The underground continuation inherits the surface geological profile but independently generates underground abundance under Decision 3.19.
7. All underground reserve components are finite and eventually deplete to zero.
8. There is no separate playable underground Factorio surface and no tiled underground ore patch.
9. Exact entity prototype type, footprint, final graphics behavior, extraction algorithm, UI/tooltips, storage schema, and reserve mathematics remain implementation/prototyping details.
10. The player-facing Deep Mine operation may expose a much simpler mining interface than the complexity of the internal geological/reserve state.

The current visual/scale direction is one large underground-vein/access node, potentially on the order of a large-miner footprint such as roughly 7×7 tiles, but the exact footprint is not locked.

---

## 3.22 Hierarchical Underground Reserve Pools with Concurrent Extraction: LOCKED

The 1-to-5 logical underground nodes established in Decision 1 are generated first and then normalized into a hierarchy of finite internal geological reserve pools inside the single underground-vein / mine-access node established in Decision 3.21.

The Deep Mine extracts from those internal reserve pools **concurrently**.

Conceptually:

```text
Logical Underground Nodes Generated
        ↓
Normalize by Geological Reserve Identity
        ↓
One Underground Access Node
        ↓
Internal Reserve Hierarchy
        ├─ Primary Reserve Body
        ├─ Associated Reserve Body A
        ├─ Associated Reserve Body B
        └─ Contained Trace Potential attached to host bodies
        ↓
Deep Mine
        ↓
Concurrent Extraction from Active Reserve Pools
```

### A. Logical nodes are generation inputs

Decision 1's Node 1 through Node 5 results remain meaningful for underground generation.

They determine:

- mineral identity;
- reserve multiplier / quantity;
- optional-body presence;
- geological association.

They do not have to remain as permanent 1-to-5 runtime slots after generation.

### B. Same-primary nodes aggregate

Logical nodes that resolve to the same primary mineral may be combined into one primary reserve pool.

Example:

```text
Node 1 → Hematite
Node 2 → Hematite
Node 4 → Hematite

        ↓ aggregate

Primary Hematite Reserve
```

Their generated reserve quantities contribute to the combined finite primary reserve.

### C. Distinct associated bodies remain separate finite pools

Logical nodes representing genuinely distinct associated mineral bodies remain separate internal reserve pools.

Example:

```text
Primary Hematite Reserve
Associated Nickel Reserve
Associated Cobalt Reserve
```

Each distinct associated body has its own finite remaining reserve and can deplete independently.

### D. Contained traces remain attached to their host reserve

Contained/disseminated trace mineralization established in Decision 3.20 is not promoted into an independent free-standing reserve pool.

Instead:

```text
Host Reserve Body
        ↓
Contained Trace Potential
```

The contained trace becomes accessible only as the host body is extracted.

This prevents contained trace material from being exhausted independently while leaving the host mineral body largely untouched.

### E. Geological potential and recovered amount remain separate

The internal reserve model distinguishes:

- how much geological material exists;
- how much becomes accessible as host material is extracted;
- how much the current mining/processing technology actually recovers.

Improved technology may increase recovery from the same finite geological potential without increasing the original reserve.

### F. Concurrent extraction is locked

The Deep Mine may draw from multiple active internal reserve pools during the same operating period or extraction cycle.

Conceptually:

```text
Deep Mine Cycle
        ↓
Primary Mineral Output
+ possible Associated Mineral Output
+ possible Contained Trace Output
```

This is preferred over sequentially exhausting one reserve body at a time.

### G. Output composition may change over deposit life

Because associated reserve pools deplete independently, the mineral mix produced by the Deep Mine may change over time.

Example:

```text
Early:
Hematite + Nickel + occasional Cobalt

Nickel-associated reserve depleted:
Hematite + occasional Cobalt

Cobalt-associated reserve depleted:
Hematite + contained trace recovery only

Primary reserve depleted:
Underground deposit exhausted
```

Exact output scheduling and probability mathematics remain deferred.

### H. All reserve pools are finite

Every primary and associated underground reserve pool is finite and eventually reaches zero.

Contained trace potential is also finite because it is derived from finite host material.

The system must not create infinite resource generation through trace recovery or concurrent extraction.

### I. Internal hierarchy is conceptual, not a locked Lua schema

A future implementation may store data conceptually equivalent to:

```text
Underground Access Node
│
├─ Primary Reserve
│   ├─ Remaining Reserve
│   └─ Contained Traces
│
└─ Associated Reserves
    ├─ Mineral Identity
    ├─ Remaining Reserve
    └─ Optional Contained Traces
```

The exact Lua table structure, persistence schema, entity indexing, migration handling, and depletion algorithm remain implementation details.

### J. Exact extraction mathematics remain deferred

Decision 3.22 locks the reserve ownership and concurrent-extraction semantics only.

It does not yet lock:

- reserve units;
- conversion between Node multipliers and reserve values;
- extraction batch size;
- extraction cycle time;
- how concurrent pools are sampled;
- per-cycle depletion fractions;
- output weighting;
- contained-trace recovery fractions;
- grade-to-yield formulas;
- mining technology modifiers;
- GUI presentation.

---

## 3.23 Underground Access-Node Generation, Exposure, and Discovery: LOCKED

The underground continuation and its reserve state are determined during map generation alongside the surface deposit.

The intended player-facing discovery method is **physical excavation of the surface deposit**.

As surface resource entities above or around the predetermined underground-access location are depleted, the underground-vein / mine-access node becomes increasingly exposed and eventually available for Deep Mine placement.

Conceptually:

```text
Map Generation
        ↓
Surface Deposit Generated
        +
Underground Continuation Generated and Fixed
        ↓
Predetermined Underground Access Location
        ↓
Surface Mining Progresses
        ↓
Surface Resource Entities Are Depleted
        ↓
Underground Access Node Becomes More Exposed
        ↓
Required Area Becomes Clear
        ↓
Player Can Place Deep Mine
```

### A. Geological existence is fixed at map generation

The underground reserve is generated and fixed when the paired surface deposit is generated.

Surface depletion does **not** create, reroll, or determine whether the underground reserve exists.

The underground record may include:

- geological profile;
- logical underground Nodes 1 through 5;
- aggregate reserve pools;
- trace grades and abundance values;
- associated reserve bodies;
- predetermined access location;
- other later-defined reserve state.

### B. Physical discovery is driven by surface excavation

The normal discovery fantasy is:

> The player mines away the exposed surface portion of the deposit and physically reveals where the mineralization continues deeper underground.

Surface mining therefore controls **exposure**, not geological generation.

The underground access feature may become progressively more visible as overlying/adjacent surface resource entities disappear.

### C. Preferred implementation: true overlapping generation

The preferred technical direction is to generate:

```text
Surface Resource Patch
+
Underground Access Node
```

in the same physical area during chunk/map generation, with the access node visually and/or interactively obscured by the surface resource entities until those resources are depleted.

This requires Factorio prototyping to verify:

- collision-mask compatibility;
- resource/entity overlap;
- rendering order;
- selection priority;
- miner targeting behavior;
- player interaction;
- map/minimap behavior;
- Deep Mine placement behavior.

If this works cleanly, it is the preferred implementation.

### D. Preferred player-facing visibility behavior

The ideal UX is progressive exposure:

```text
Mostly Buried
→ Partially Visible
→ Largely Exposed
→ Fully Accessible
```

The visible graphics of the access node should become easier to recognize as the surface resource patch over it is mined away.

Exact rendering implementation remains deferred.

### E. Deep Mine placement depends on sufficient clearance

Even if the underground-access node technically exists from map generation, the player should not necessarily be able to place the Deep Mine until enough of the required footprint has been cleared of surface resource entities and other blocking conditions.

Conceptually:

```text
Access Node Exists
        ↓
Required Surface Area Still Occupied
        ↓
Deep Mine Placement Blocked

Sufficient Surface Area Cleared
        ↓
Deep Mine Placement Allowed
```

The exact clearance threshold, footprint rules, and placement validation remain deferred.

### F. Fallback implementation: delayed physical access-node spawn

If Factorio cannot cleanly support the preferred overlapping representation, the underground reserve and its access location are still generated and fixed at map generation.

The physical access entity may instead be spawned later when sufficient surface clearance is detected.

Conceptually:

```text
Map Generation
→ Underground Reserve Generated
→ Access Position Stored

Surface Mining
→ Required Area Cleared

Runtime
→ Spawn Underground Access Node
```

This is only a representation fallback.

Later entity spawning does **not** mean later geological generation.

### G. Secondary fallback: central reserved / donut-style surface patch

If overlapping entities and delayed spawning both prove unsuitable, the surface resource patch may reserve a central opening for the underground-access node.

Conceptually:

```text
Surface Deposit Ring / Donut
        ↓
Central Underground Access Node
```

This is a valid fallback but is less preferred because it exposes the deep-access location immediately instead of creating gradual physical revelation through mining.

### H. Geological existence, physical discovery, and exploitation are separate

The architecture explicitly separates:

```text
Geological Existence
→ determined at map generation

Physical Discovery / Exposure
→ caused by surface excavation

Exploitation
→ requires Deep Mining progression and the Deep Mine building
```

Technology does not magically create or reroll the underground geology.

The player may physically expose an underground access node before possessing the technology required to exploit it.

### I. Deep Mining progression controls use, not existence

Deep Mining technology, research, or later prospecting systems may control:

- whether the Deep Mine building is available;
- whether the node can be exploited;
- what geological information is shown;
- reserve-estimation accuracy;
- trace-abundance information.

Those progression systems do not determine whether the underground reserve exists.

### J. Exact implementation details remain deferred

Decision 3.23 locks the intended discovery/exposure architecture but does not lock:

- exact overlap feasibility;
- final collision masks;
- rendering order;
- selection priority;
- final Deep Mine footprint;
- exact access-node footprint;
- exact clearance percentage or tile count;
- whether exposure is perfectly gradual or threshold-based;
- whether delayed spawning is required;
- final entity naming;
- exact graphics;
- GUI/tooltip presentation;
- whether the donut/central-opening fallback is ever used.

These must be validated through in-game Factorio prototyping.

---

## 3.24 Progressive Underground Geological Surveying Through Ground-Penetrating Radar: LOCKED

Underground deposits have a fixed authoritative geological and reserve state generated with the deposit, while player knowledge of that state is tracked separately and progressively improved through Ground-Penetrating Radar surveying.

Surface resources continue to expose exact quantities normally. Underground reserve information is intentionally uncertain until surveyed.

### A. Unsurveyed underground deposits expose existence, not quantity

Once an underground-access node is physically exposed under Decision 3.23, the player knows:

- an underground continuation exists;
- the primary mineral identity.

By default, the player does **not** know:

- reserve quantity;
- approximate reserve quantity;
- trace-mineral identity;
- trace abundance;
- associated underground bodies.

Conceptually:

```text
Deep Hematite Vein

Primary Mineral:
Hematite

Reserve:
???

Trace Mineralization:
???

Associated Mineralization:
???
```

### B. Surface deposits remain exact

Normal surface-resource patches continue to expose their actual remaining resource amounts through ordinary Factorio behavior.

The uncertainty system applies specifically to simulated underground reserves.

### C. Advanced Ground-Penetrating Radar is a combined radar upgrade

A later **Advanced Ground-Penetrating Radar** building combines:

```text
Normal Factorio Radar Capability
+
TI Underground Geological Survey Capability
```

The intent is for the GPR to serve as an upgraded/replacement radar infrastructure building rather than requiring an entirely separate parallel surveillance network.

Exact prototype, statistics, graphics, and technology names remain deferred.

### D. Research enables capability; scanning applies knowledge

Researching GPR technology does not automatically reveal every underground deposit globally.

The player must deploy GPR-capable radar infrastructure and survey the relevant area.

Conceptually:

```text
GPR Technology Researched
        ↓
GPR Building Deployed
        ↓
Radar Coverage / Chunk Scanning
        ↓
Underground Deposit Surveyed
        ↓
Force Geological Knowledge Updated
```

### E. Immediate and long-range radar surveying

Deposits within the radar's immediate/continuous survey area may update promptly.

Remote deposits update when their chunks are reached by the radar's scanning behavior.

Exact event hooks, scan cadence, chunk-detection logic, and API implementation remain subject to technical prototyping.

### F. Force-based geological knowledge

Survey knowledge belongs to the Factorio **force**, not to an individual player.

If one GPR belonging to a force surveys a deposit, all players on that force gain access to the improved geological information.

Different forces may theoretically possess different survey knowledge about the same deposit.

### G. Survey advancement uses 3 to 5 total survey states

The GPR analysis system will use an **open progression of between three and five total survey states**.

The exact count is intentionally deferred for later balance and progression design.

The progression must include the following functional endpoints:

1. **Unsurveyed / Unknown**
   - no reserve estimate;
   - no trace information by default.

2. **Initial GPR Survey**
   - first approximate reserve range;
   - broad uncertainty.

3. **Improved GPR Analysis**
   - narrower reserve uncertainty;
   - additional geological information.

4. **Optional Further Intermediate Survey State(s)**
   - one or two additional progression steps may exist if the technology tree benefits from them.

5. **Highest GPR Survey State**
   - may reveal exact remaining reserve quantities and the highest available level of geological intelligence.

The final design may therefore use three, four, or five total survey states.

### H. Initial GPR survey provides a broad estimate

The first successful GPR survey provides the first numeric estimate of the underground reserve.

A conceptual target is approximately:

```text
Actual Reserve ±15%
```

Example only:

```text
Actual:
100,000

Initial Survey:
85,000 – 115,000
```

The exact percentage is not locked.

### I. Later analysis narrows uncertainty

Later GPR analysis/software technologies progressively improve survey precision.

A later conceptual target may be approximately:

```text
Actual Reserve ±5%
```

before the final exact or near-exact survey state.

Exact uncertainty bands are deferred.

### J. Highest survey state may reveal exact reserve values

The most advanced GPR analysis state may reveal the authoritative remaining reserve quantity.

Conceptually:

```text
Earlier:
Estimated Reserve: 95,000 – 105,000

Highest Survey:
Remaining Reserve: 100,000
```

Whether every associated reserve and trace quantity also becomes exact at the highest tier remains a later information-granularity decision.

### K. GPR software/analysis progression may improve one hardware generation

Improved survey accuracy does not require a long chain of physical radar Mk1/Mk2/Mk3/Mk4 buildings.

The preferred direction is:

```text
Advanced GPR Building
        ↓
Improved GPR Analysis / Software Research
        ↓
Increasing Survey Accuracy
```

Additional physical generations remain possible only if later design work identifies a meaningful capability transition.

### L. Improved research preferably requires resurvey

When a better GPR-analysis technology is unlocked, previously surveyed deposits do not necessarily become globally more accurate immediately.

Preferred direction:

```text
Old Survey Precision
        ↓
New GPR Analysis Technology
        ↓
Deposit Resurveyed
        ↓
Knowledge Upgraded to New Precision
```

Deposits inside immediate GPR coverage may update quickly. Remote deposits improve when their chunks are scanned again.

Exact resurvey mechanics remain implementation-open.

### M. Survey estimates are stable

Approximate reserve ranges do not reroll each time the player opens a tooltip or inspects the deposit.

A completed survey establishes a stable knowledge state.

If a later higher-tier survey occurs, that survey replaces the older estimate with a more accurate one.

### N. Known estimates decrement coherently with mining

When underground material is extracted, the known survey estimate should decrease coherently.

Example:

```text
Known Estimate:
85,000 – 115,000

10,000 Extracted

Updated Estimate:
75,000 – 105,000
```

For exact-survey knowledge:

```text
100,000
→ extract 10,000
→ 90,000
```

Exact math and rounding remain deferred.

### O. Trace and associated-body information may also progress by survey state

GPR progression may progressively reveal:

- presence of trace mineralization;
- trace-mineral identity;
- abundance grades;
- presence of associated reserve bodies;
- approximate associated reserve quantities;
- exact associated reserve quantities at advanced tiers.

Illustrative progression:

```text
Unsurveyed:
Trace Mineralization: ???

Initial Survey:
Trace Mineralization: Detected

Improved Survey:
Nickel: Rich
Cobalt: Very Poor

Advanced Survey:
Associated Nickel Body: Detected
Estimated Reserve: ...

Highest Survey:
Highest permitted precision / exact information
```

Exact information staging remains deferred.

### P. Deep Mining and surveying are separate progression axes

The ability to mine an underground deposit and the ability to survey it accurately are not required to be the same technology gate.

A player may potentially operate a Deep Mine on a poorly surveyed or unsurveyed deposit.

This allows intentional risk:

> The player may know a mineral continues underground without knowing whether the reserve is small, large, trace-rich, or trace-poor.

Exact technology ordering remains deferred.

### Q. Surveying never changes geology

Survey technology changes only what the player's force knows.

It does not:

- create reserves;
- increase reserves;
- regenerate reserves;
- reroll trace abundance;
- reroll associated bodies;
- alter geological profile;
- alter remaining underground quantity.

The authoritative geological state remains fixed except for normal finite depletion through mining.

### R. Exact progression details remain deferred

Decision 3.24 locks the geological-intelligence architecture but does not yet lock:

- whether the final system uses 3, 4, or 5 survey states;
- exact state names;
- exact uncertainty percentages;
- exact GPR technology names;
- exact radar prototype statistics;
- exact scan cadence;
- exact resurvey triggers;
- exact trace-information granularity by tier;
- final GUI/tooltip presentation;
- exact storage schema for force geological knowledge.

---

## 3.25 Fully Automatic Mixed Deep-Mine Extraction with Throughput Progression: LOCKED

The Deep Mine uses **fully automatic mixed extraction** from the active underground reserve pools established in Decision 3.22.

The player does not manually target, enable, disable, or prioritize individual associated reserve bodies.

Conceptually:

```text
Deep Mine
        ↓
Automatically Samples Active Underground Reserve Pools
        ↓
Primary Mineral Output
+ Contained Trace Output
+ Associated Mineral Output
```

### A. Automatic mixed extraction

The Deep Mine extracts from the underground geological system as encountered.

If the active underground reserve contains:

```text
Primary:
Hematite

Contained Trace:
Nickel

Associated Reserve:
Cobalt
```

a mining cycle may conceptually produce:

```text
Hematite
+ Nickel
+ occasional Cobalt
```

Exact output quantities, probabilities, and reserve-depletion mathematics remain deferred.

### B. No extraction-mode targeting system

Decision 3.25 intentionally avoids:

- player-selected reserve targeting;
- per-body enable/disable controls;
- priority sliders;
- directional-drilling selection modes;
- survey-gated mineral targeting.

The design should remain mechanically simple at the extraction-control layer.

### C. Contained and associated reserves still deplete according to their own internal pools

Automatic mixed extraction does not collapse the internal geological model.

The Deep Mine may still draw from:

- the primary reserve pool;
- contained trace potential attached to the host body;
- separate associated reserve pools.

Those pools continue to deplete according to the locked reserve semantics from Decisions 3.20 and 3.22.

### D. Output composition changes naturally as reserves deplete

Because the underground body is finite and internally heterogeneous, the output mixture may change over time without player intervention.

Example:

```text
Early:
Hematite + Nickel + occasional Cobalt

Later:
Hematite + Nickel

Later:
Hematite only

Final:
Deposit exhausted
```

The exact transition behavior remains dependent on later extraction mathematics.

### E. Technology progression focuses on throughput, not targeting

Deep Mining technology progression should primarily improve **how quickly the mine extracts material**, not which reserve body it targets.

Conceptually:

```text
Early Deep Mining:
10-second extraction cycle

Improved Deep Mining:
5-second extraction cycle
```

or an equivalent improvement through machine crafting speed, recipe time, extraction batch size, or another throughput mechanism.

The exact values above are illustrative only.

### F. Throughput remains separate from geological yield

Improving extraction speed does not automatically increase the total geological reserve or create additional material.

The governing principle remains:

```text
Higher Throughput
= Same Finite Reserve Extracted Faster
```

unless a later explicitly designed recovery technology improves recoverable material from the same finite geological potential.

### G. Deep Mine requires power and extraction consumables

The Deep Mine is intended to require industrial operating inputs rather than functioning as a free passive extractor.

The intended design direction includes:

- electricity;
- one or more consumable mining/excavation inputs;
- potentially explosives;
- potentially solid fuel;
- potentially liquid fuel or another pumped fluid;
- potentially another industrial consumable representing deep-rock excavation.

These inputs simulate the energy and material cost of breaking, blasting, drilling, and extracting deep underground rock.

### H. Exact fuel/consumable architecture remains open

The exact Factorio implementation is intentionally deferred.

Candidate directions include:

1. Electricity + recipe ingredient such as explosives.
2. Electricity + solid-fuel-style energy source.
3. Electricity + pumped liquid fuel / process fluid.
4. Electricity + multiple recipe inputs.
5. A hybrid machine pattern that consumes fuel-like and fluid-like inputs while producing mined outputs.
6. Another implementation validated through prototyping.

Decision 3.25 does **not** lock whether the final Deep Mine uses a furnace-style energy source, assembling-machine recipe inputs, boiler-like fluid behavior, or another prototype arrangement.

### I. Prefer native prototype composition over custom runtime simulation where practical

The implementation should prefer standard Factorio prototype capabilities, recipe systems, fuel categories, fluid boxes, energy sources, and scripted control logic that compose cleanly.

A custom runtime-heavy machine implementation should be introduced only if native prototype behavior cannot support the intended gameplay cleanly.

### J. Exact recipe and machine values remain deferred

Decision 3.25 does not yet lock:

- extraction cycle time;
- crafting speed;
- batch size;
- energy usage;
- fuel category;
- explosive consumption;
- liquid-fuel consumption;
- recipe ingredient structure;
- output batch composition;
- per-cycle reserve depletion;
- technology upgrade values;
- number of throughput technologies;
- final Deep Mine prototype class.

Those details remain for later machine/process design and technical prototyping.

---

## 3.26 Reserve-Backed Mixed Output with Fractional Accumulators and Bounded Randomness: LOCKED

Deep Mine outputs are generated from the authoritative finite underground reserve pools established in Decisions 3.20 through 3.22.

Randomness may influence when discrete whole-item outputs appear, but it does not determine how much geological material exists.

Conceptually:

```text
Authoritative Finite Reserve Pools
        ↓
Calculate Material Extracted This Cycle
        ↓
Decrement the Correct Reserve Sources
        ↓
Add Extracted Material to Per-Mineral Accumulators
        ↓
Apply Bounded Random Variation to Whole-Item Release
        ↓
Emit Canonical Output Items
```

### A. Reserve pools are authoritative

Primary reserve bodies, contained trace potential, and distinct associated reserve bodies remain the source of truth for underground material availability.

The output system must never generate more material than those finite reserves permit.

### B. Each cycle computes reserve-backed extraction entitlement

For every active mineral source, the Deep Mine determines how much geological material is extracted during the cycle.

Illustrative only:

```text
Hematite:
10.0 equivalent

Nickel:
2.7 equivalent

Cobalt:
0.18 equivalent
```

Exact units and formulas remain deferred.

### C. Fractional accumulators are permitted and preferred

Because Factorio item outputs are discrete, fractional extracted material may be retained internally until enough accumulates to emit another whole item.

Example:

```text
Nickel Cycle 1:
+2.7
→ output 2
→ carry 0.7

Nickel Cycle 2:
+2.7
+0.7
=3.4
→ output 3
→ carry 0.4
```

For very-low-abundance traces:

```text
Cobalt:
+0.18
+0.18
+0.18
...
→ eventually reaches whole-item output
```

This prevents low-abundance minerals from being distorted by naive rounding.

### D. Bounded randomness controls output timing, not geological quantity

The Deep Mine may use controlled stochastic variation to vary how whole items are released between cycles.

Conceptually, a long-term expectation such as:

```text
10 Hematite
2.5 Nickel
0.15 Cobalt
per conceptual cycle
```

may appear as:

```text
Cycle 1:
10 Hematite
2 Nickel

Cycle 2:
10 Hematite
3 Nickel

Cycle 3:
10 Hematite
2 Nickel
1 Cobalt

Cycle 4:
10 Hematite
3 Nickel
```

The long-term output must remain bounded by the reserve-backed extraction entitlement.

### E. Core invariant

> Randomness affects the timing/distribution of discrete outputs, not the amount of geological material that exists.

The system must not use independent RNG rolls that can create mineral output beyond the finite reserve accounting.

### F. Same canonical mineral may have multiple internal reserve origins

The same canonical output item may receive contributions from multiple internal geological sources.

Example:

```text
Nickel Ore output
        ↑
Contained Nickel in Hematite
+
Separate Associated Nickel Reserve
```

The player receives the same canonical `Nickel Ore` item.

Internally, TI must preserve the source accounting so the correct reserve pools are depleted.

### G. Concurrent reserve contributions remain valid

Decision 3.22's concurrent-extraction rule remains in force.

A single Deep Mine cycle may draw material from:

- the primary reserve;
- contained trace potential attached to the primary body;
- one or more active associated reserve bodies.

Their contributions are merged only at the final canonical item-output layer.

### H. Exhaustion remains exact

When a specific associated reserve reaches zero, it contributes no further output.

Contained trace output may continue only while:

- the host reserve still contains extractable material;
- contained trace potential remains;
- the current process/recovery rules permit additional recovery.

No exhausted reserve may continue producing through stochastic output behavior.

### I. Technology may change throughput but not violate reserve accounting

The throughput progression locked in Decision 3.25 may change:

- extraction cycle time;
- machine crafting speed;
- batch throughput;
- other time-based extraction parameters.

It must not bypass or duplicate finite reserve accounting.

### J. Exact mathematics remain deferred

Decision 3.26 locks the reserve-backed accumulator architecture but does not yet lock:

- reserve units;
- conversion from reserve units to item-equivalent output;
- extraction entitlement formulas;
- accumulator precision;
- random distribution type;
- random variance bounds;
- rounding behavior;
- minimum/maximum batch size;
- output scheduling;
- per-source depletion formulas;
- implementation storage schema.

---

## 3.27 Hierarchical Underground Reserve Generation by Logical-Node Role: LOCKED

Underground reserve quantities are generated hierarchically according to the role of each logical underground node established in Decision 1.

Node 1 is the guaranteed main continuation. Nodes 2 through 5 are optional subordinate geological bodies with progressively less favorable occurrence and reserve-size characteristics.

Conceptually:

```text
Surface Deposit Reference Yield
        ↓
Logical Underground Nodes Generated
        ↓
Node 1:
Main Primary Continuation
        ↓
Nodes 2–5:
Optional Subordinate Bodies
        ↓
Normalize into Internal Reserve Pools
under Decision 3.22
```

### A. Node 1 is the main underground continuation

Node 1 is:

- guaranteed when an underground continuation exists;
- the primary mineral;
- the dominant underground reserve component.

It uses the mineral-specific primary underground reserve range established in Decision 1, conceptually around:

```text
~1.5× to 3.0×
original surface-reference yield
```

Exact mineral-specific values remain deferred.

### B. Nodes 2–5 are subordinate optional bodies

Nodes 2 through 5 may resolve to:

- additional primary mineralization;
- a geologically plausible associated secondary mineral;
- nothing.

They do not automatically receive another full main-continuation reserve multiplier.

### C. Optional primary nodes are additive but subordinate

If an optional node resolves to the same primary mineral, it represents an additional lens, branch, pocket, or subordinate continuation of the primary deposit.

Its reserve contribution is smaller than the main Node 1 continuation under normal generation.

Conceptually:

```text
Node 1:
Main Hematite Continuation

Node 2:
Additional Hematite Lens

Node 4:
Small Hematite Pocket
```

After generation, same-primary reserve components may aggregate into the primary reserve pool under Decision 3.22.

### D. Optional associated bodies use secondary/trace reserve rules

If an optional node resolves to a different associated mineral, it represents a distinct finite associated geological body.

Its reserve generation follows an appropriate secondary/trace reserve range, conceptually within the Decision 1 range of approximately:

```text
~0.25× to 1.5×
surface-reference yield
```

The upper end represents an unusually large associated body and should not be the norm.

Exact mineral-specific and node-specific values remain deferred.

### E. Later optional nodes are progressively less favorable

Node order matters.

Conceptually:

```text
Node 1
→ guaranteed, largest

Node 2
→ optional, relatively favorable

Node 3
→ less favorable

Node 4
→ rarer / generally smaller

Node 5
→ rarest / generally smallest
```

The progression may affect:

- existence probability;
- mineral-composition probability;
- reserve-size range;
- weighting of exceptional outcomes.

The exact mathematical relationship remains deferred.

### F. Optional nodes must not routinely exceed the main body

Under normal generation, a later optional node should not routinely become larger than Node 1.

Exceptional geological cases may be introduced later only if explicitly designed and balanced.

### G. Three independent balancing dimensions remain preserved

Decision 3.27 retains the Decision 1 principle that underground generation uses three independent dimensions:

1. **Continuation / node existence chance**
2. **Node composition weight**
3. **Reserve multiplier / reserve size**

These should remain independently tunable.

### H. Example only

Illustrative example:

```text
Surface Hematite:
50,000

Node 1:
Hematite
2.4×
= 120,000

Node 2:
Hematite
0.7×
= 35,000

Node 3:
Nickel
0.35×
= 17,500

Node 4:
Nothing

Node 5:
Hematite
0.15×
= 7,500
```

After normalization:

```text
Primary Hematite Reserve:
162,500

Associated Nickel Reserve:
17,500
```

These values are examples only and are not locked balance numbers.

### I. Exact reserve-generation mathematics remain deferred

Decision 3.27 locks the hierarchical node-role architecture but does not yet lock:

- node-specific reserve ranges;
- exact reserve distributions;
- exact node-order scaling;
- mineral-specific multipliers;
- reserve caps;
- exceptional-body probabilities;
- surface-reference normalization rules;
- final balance values.

---

## 3.28 Immutable Original Surface Reference Yield with Cross-Chunk Finalization: LOCKED

Every generated surface mineral deposit has an immutable **Original Surface Reference Yield** representing the complete deposit's generated geological resource quantity before player interaction.

Underground continuation and logical-node reserve calculations use this original geological reference rather than:

- current remaining surface ore;
- already-mined surface ore;
- inventory items recovered from mining;
- productivity-amplified output;
- the amount currently generated inside only one chunk.

Conceptually:

```text
Complete Generated Surface Deposit
        ↓
Original Geological Yield
        ↓
Immutable Surface Reference Yield
        ↓
Underground Node 1–5 Reserve Generation
```

### A. Original generated geology is authoritative

The Surface Reference Yield represents the original geological quantity generated for the complete surface deposit.

It is fixed independently from later:

- mining;
- productivity;
- surface depletion;
- player construction;
- Deep Mine placement;
- terrain replacement;
- access-node exposure.

### B. Geological quantity is distinct from recovered item output

The reference is based on generated resource amount, not the total number of inventory items ultimately obtained.

Conceptually:

```text
Original Geological Surface Quantity
≠
Post-productivity / post-recovery item output
```

This prevents mining productivity or later recovery systems from feeding back into underground reserve generation.

### C. Complete patch-wide yield is required

The intended reference is the **entire original surface deposit**, not merely:

- the access-node footprint;
- the first generated chunk;
- the currently visible portion;
- one contiguous subset that happens to exist at the time of an early chunk-generation event.

### D. Cross-chunk deposits may remain provisionally incomplete

A surface deposit may extend across multiple 32×32 chunks.

If only part of the deposit has been generated, TI must not permanently finalize the underground reserve from that partial amount.

Conceptually:

```text
Chunk A Generates
        ↓
Only part of Surface Deposit exists in generated world
        ↓
Create / maintain Pending Deposit Record
        ↓
Additional connected chunks generate
        ↓
Accumulate original generated surface quantity
        ↓
Determine complete deposit reference when safely possible
        ↓
Finalize Surface Reference Yield
        ↓
Finalize dependent underground reserve quantities
```

The exact method for proving or detecting patch completion remains implementation-open.

### E. Underground access entity may exist before reserve finalization

Decision 3.23's underground access representation does not have to wait for the complete cross-chunk surface patch to be generated.

The access node may be generated or reserved when the initial deposit portion appears while the associated geological record remains in a **pending/unfinalized reserve state**.

Once the complete surface reference is known, the code may finalize:

- Surface Reference Yield;
- Node 1–5 reserve quantities;
- normalized internal reserve pools;
- dependent underground quantity data.

The reserve must not be permanently calculated from an incomplete patch total.

### F. Geological identity and quantity finalization may occur at different times

The system may determine stable information early, such as:

- primary mineral;
- geological profile;
- underground continuation existence;
- deterministic access location;

while delaying quantity-dependent calculations until the complete surface reference can be established.

This is an implementation timing distinction, not a geological reroll.

### G. World-generation integration is the preferred source of truth

The preferred implementation direction is to integrate Surface Reference Yield tracking directly with TI's resource/world-generation pipeline.

Potential approaches include:

1. deriving the complete patch total from TI-controlled autoplace/noise generation;
2. accumulating original `resource.amount` values as generated chunks become available;
3. assigning deterministic deposit identities so cross-chunk pieces can be associated;
4. another world-generation-aware method validated through prototyping.

The design must not assume that one chunk-generation callback automatically contains the whole deposit.

### H. Factorio map-view patch totals are not design authority

Factorio can visually group nearby same-type resources in map view and sum their amounts for display.

That player-facing aggregation/abbreviation is not the authoritative TI Surface Reference Yield mechanism.

Map-view formatting such as `K`/larger-unit abbreviations must not be used as the stored geological quantity.

### I. Rounding is permanently deferred at this design stage

Decision 3.28 intentionally does **not** establish whether Surface Reference Yield should be:

- kept at the exact summed integer resource amount;
- rounded up;
- rounded down;
- rounded to a convenient interval;
- normalized through another reserve unit.

No rounding direction or precision policy is locked.

That choice must be made only after the actual Factorio generation hook, patch-identification method, reserve units, and underground-yield mathematics are prototyped.

### J. Distance-based surface resource scaling is a separate future world-generation decision

TI expects later world-generation work to revisit:

- resource patch richness by distance;
- patch size by distance;
- frequency;
- starting-area balance;
- long-distance scaling;
- possible maximum/capped scaling behavior.

Those policies are **not part of Decision 3.28**.

Current Factorio 2.1 base resource-autoplace code applies a distance-dependent richness multiplier that increases linearly after its threshold rather than using an exponential richness multiplier. TI may later replace or reshape that behavior, including considering a linear increase with a hard cap, but exact distances, multipliers, and caps remain future world-generation balance decisions.

### K. Exact implementation remains deferred

Decision 3.28 locks the geological reference semantics but not:

- patch-completion detection;
- cross-chunk deposit identity;
- exact generation event architecture;
- whether pending deposits are finalized eagerly or lazily;
- storage schema;
- rounding;
- reserve unit conversion;
- custom autoplace formulas;
- distance-scaling caps;
- exact world-generation resource balance.

---

## 3.29 Bounded Distance-Based Surface Resource Scaling with Per-Mineral Overrides: LOCKED

TI surface-resource generation uses **bounded distance progression**.

Resource richness may increase gradually with distance from the starting region, but the distance-based increase must reach a configurable hard maximum beyond which additional distance provides no further richness increase.

The preferred architecture is a shared default distance-scaling model with optional per-mineral overrides where justified.

### A. Preferred implementation: bounded shared curve with mineral-specific overrides

The default model is conceptually:

```text
Starting Region
        ↓
Baseline Surface Richness

Increasing Distance
        ↓
Gradual Linear / Near-Linear Richness Increase

Configured Cap Distance
        ↓
Maximum Distance-Based Richness Multiplier

Beyond Cap
        ↓
No Further Distance-Based Richness Increase
```

The exact curve, distances, and multiplier values remain deferred.

### B. Per-mineral overrides are permitted

A shared default resource-scaling model should be used where practical.

Individual minerals may override the default parameters when geology, rarity, progression, or balance justifies different behavior.

Conceptually:

```text
TI Default Resource Scaling
        ↓
Most Minerals Use Default

Specific Mineral Needs Different Behavior?
        ├─ No → Default Curve
        └─ Yes → Mineral-Specific Parameters
```

Overrides may eventually affect:

- baseline richness;
- growth rate with distance;
- cap multiplier;
- cap distance;
- other resource-specific richness parameters.

Exact override semantics remain deferred.

### C. Factorio technical viability is established in principle

Current Factorio 2.1 autoplace supports a `richness_expression` on each entity's `AutoplaceSpecification`.

Mods may define custom noise expressions/functions and assign resource-specific richness expressions during the data stage.

Therefore, TI can in principle implement different bounded richness expressions for different resource prototypes.

The exact TI noise-expression implementation, interaction with map-generation controls, compatibility, and performance still require prototyping.

### D. Option C remains the technical fallback

If per-mineral override behavior proves impractical because of:

- compatibility with other world-generation mods;
- excessive maintenance;
- noise-expression complexity;
- map-generation slider interactions;
- performance;
- debugging burden;
- future Factorio API constraints;

TI falls back to the simpler universal bounded model:

```text
One Shared Linear / Near-Linear Richness Curve
        ↓
One Hard Maximum
        ↓
Applied Uniformly to Conventional Surface Resources
```

This fallback preserves the core bounded-distance design.

### E. Frequency, patch size, and richness remain separate

TI must not automatically treat all resource-generation dimensions as one combined distance multiplier.

Conceptually:

```text
Frequency
= how often deposits occur

Patch Size
= geographical footprint

Richness
= resource amount / density
```

Decision 3.29 primarily locks the **distance-based richness** direction.

Patch-size and frequency behavior remain separate later world-generation decisions.

### F. Exploration remains rewarding but bounded

The intended gameplay outcome is:

```text
Travel Farther
→ generally richer surface deposits
→ meaningful exploration reward

But:

Travel Arbitrarily Farther
≠ unlimited richness escalation
```

The hard cap protects the value of:

- beneficiation;
- underground mining;
- metallurgical recovery progression;
- finite-resource planning.

### G. Current vanilla behavior is not assumed to be exponential

Current Factorio 2.1 base resource-autoplace code uses a distance-dependent richness expression that increases linearly after its threshold.

TI's bounded model is therefore a deliberate capped customization of distance-based richness behavior, not a correction from an assumed exponential vanilla formula.

### H. Exact world-generation values remain deferred

Decision 3.29 does not yet lock:

- baseline richness multiplier;
- richness growth rate;
- cap multiplier;
- cap distance;
- per-mineral override values;
- which minerals receive overrides;
- patch-size scaling;
- frequency scaling;
- starting-area resource quantities;
- interaction with user map-generation sliders;
- exact noise-expression formulas;
- final balance values.

---

## 3.30 Vanilla-Style Bounded Distance Scaling for Surface Deposit Size: LOCKED

TI surface-resource patch-size progression follows **vanilla Factorio-style distance scaling** as its baseline behavior, with a TI hard upper bound preventing patch size from continuing to increase indefinitely with distance.

Decision 3.30 also clarifies the intended default implementation of the richness direction locked in Decision 3.29: TI should preserve vanilla-style distance progression for both **richness** and **patch size** up to the configured TI bounding point, then stop further distance-derived scaling.

Conceptually:

```text
Vanilla Factorio Resource Scaling
        ↓
Increasing Distance from Starting Region
        ↓
Vanilla-Style Richness Progression
+
Vanilla-Style Patch-Size Progression
        ↓
TI Configured Distance / Scaling Cap
        ↓
Maximum Distance-Based Richness
+
Maximum Distance-Based Patch Size
        ↓
Additional Distance
        ↓
No Further Distance-Based Increase
```

### A. Vanilla behavior is the baseline

TI should not invent a fundamentally different default patch-size progression curve where vanilla Factorio's established resource-scaling behavior is suitable.

The intended default is:

```text
Follow Vanilla-Style Scaling
        ↓
Until TI Hard Cap
        ↓
Flatten Distance-Derived Growth
```

The cap modifies the unbounded long-distance result, not the basic progression philosophy before the cap.

### B. Patch size is hard-bounded

Surface deposit geographical footprint may increase with distance according to vanilla-style behavior, but distance-derived patch-size growth must stop at a configurable maximum.

Beyond the cap distance, traveling farther does not continue increasing the deposit's patch size merely because of distance.

Natural variation and resource-specific generation behavior may still produce different-sized deposits within the permitted generation model.

### C. Richness uses the same bounded-vanilla principle

Decision 3.29 remains in force, but its shared default richness curve is clarified as a **vanilla-style bounded progression**.

Conceptually:

```text
Vanilla-Style Richness Result
        ↓
Apply TI Maximum Distance-Based Bound
        ↓
Final Distance-Based Richness Scaling
```

Per-mineral overrides permitted by Decision 3.29 remain available where later geology, rarity, progression, or balance testing justifies them.

### D. The cap is a hard upper bound, not a replacement curve

The intended mathematical behavior is conceptually equivalent to bounding the vanilla-style result:

```text
Distance-Based Result
=
min(
    Vanilla-Style Distance-Scaled Result,
    TI Configured Maximum
)
```

This expression is conceptual only and does not lock Factorio noise-expression syntax or the exact implementation formula.

The objective is to preserve vanilla-style progression before the cap rather than replacing it with a new custom TI progression merely to obtain bounded behavior.

### E. Exact cap distance and maximum values are deferred to prototyping

Decision 3.30 intentionally does not lock:

- the exact distance from the starting region at which the cap is reached;
- the exact maximum richness multiplier;
- the exact maximum patch-size multiplier or area;
- whether specific minerals require different cap parameters;
- exact noise-expression formulas;
- exact interaction with user map-generation settings;
- final balance values.

These must be tested in actual Factorio map generation before final numeric values are locked.

### F. Combined size and richness effects must be tested against Surface Reference Yield

Decision 3.28 defines the immutable Original Surface Reference Yield from the complete generated surface deposit.

Therefore:

```text
Generated Patch Footprint
×
Generated Resource Amount / Richness
        ↓
Complete Surface Geological Quantity
        ↓
Original Surface Reference Yield
        ↓
Underground Reserve Generation
```

Because both size and richness affect total surface geological quantity, prototyping must verify that their combined bounded scaling does not create excessive surface or underground reserve escalation.

This requirement does not change the locked underground-reserve semantics.

### G. Frequency remains a separate world-generation dimension

Decision 3.30 does not establish a new distance-scaling rule for resource frequency.

The separation remains:

```text
Frequency
= how often deposits occur

Patch Size
= geographical footprint

Richness
= resource amount / density
```

Richness and patch size now have established bounded distance-scaling directions.

Frequency remains a separate unresolved world-generation question unless later intentionally left at vanilla behavior.

### H. Decision 3.29 per-mineral override architecture remains valid

Decision 3.30 does not supersede the ability established in Decision 3.29 for individual minerals to use different parameters where justified.

The preferred default is vanilla-style bounded behavior shared as broadly as practical.

Mineral-specific overrides should be introduced only when later testing or design establishes a concrete need.

### I. Exact implementation remains a prototyping gate

The following remain technical/balance work rather than locked design values:

- vanilla resource-autoplace behavior replication;
- exact bounding implementation;
- cap distance;
- maximum size;
- maximum richness;
- resource-specific overrides;
- map-generation slider interaction;
- compatibility with other resource/world-generation mods;
- combined size/richness yield testing;
- final map-generation tuning.

Decision 3.30 locks the **bounded vanilla-style scaling architecture**, not its final numeric tuning.


---

## 3.31 Vanilla-Style Mineral-Specific Surface Resource Frequency: LOCKED

Surface-resource **frequency** remains a separate world-generation dimension from patch size and richness.

TI follows vanilla Factorio-style statistical resource-frequency behavior for normal surface deposits rather than introducing a separate distance-based frequency-growth system.

Conceptually:

```text
Mineral-Specific Base Deposit Frequency
        ↓
Vanilla-Style Resource Spot Autoplace
        ↓
Player Map-Generation Frequency Control
        ↓
Final Statistical Surface-Deposit Frequency
```

Distance-based exploration progression is therefore carried primarily by the bounded **richness** and **patch-size** behavior established in Decisions 3.29 and 3.30, not by continuously increasing the number of deposits per unit area.

### A. No systematic distance-based frequency growth

Normal surface-deposit frequency does not progressively increase merely because the player travels farther from the starting region.

Conceptually:

```text
Near Region
→ normal statistical deposit density

Far Region
→ approximately the same statistical deposit-density model

Very Far Region
→ approximately the same statistical deposit-density model
```

This means TI does not require a distance-based frequency cap analogous to the hard caps applied to richness and patch size.

### B. Frequency is mineral-specific

Each canonical primary mineral may define its own base surface-deposit frequency.

Conceptually:

```text
Common Mineral
→ comparatively higher base deposit frequency

Uncommon Mineral
→ lower base deposit frequency

Rare / Strategic Mineral
→ comparatively low base deposit frequency
```

Exact mineral-specific frequencies remain deferred to world-generation balance testing.

### C. Player map-generation frequency controls remain meaningful

The player's normal resource-frequency settings should continue to influence how often the canonical primary mineral appears.

TI's geological-profile system must not silently defeat the player's frequency selection.

Conceptually:

```text
Lower Mineral Frequency Setting
→ fewer normal surface deposits statistically

Higher Mineral Frequency Setting
→ more normal surface deposits statistically
```

Exact interaction with Factorio map-generation sliders remains subject to technical prototyping.

### D. Geological profile variants do not multiply canonical deposit frequency

Specialized geological profiles are outcomes of an already-generated canonical primary deposit.

Conceptually:

```text
Canonical Hematite Deposit Generated
        ↓
Resolve Geological Profile
        ↓
Pure/Default Hematite
OR
One Compatible Specialized Hematite Profile
```

Adding more specialized profiles does not independently add more Hematite deposits to world generation.

> Geological-profile diversity changes what form a generated deposit takes, not how many canonical primary deposits are autoplaced.

### E. Paired underground continuations do not increase surface frequency

An underground continuation and its underground-vein / mine-access node remain subordinate to the paired surface deposit.

They do not count as additional independently autoplaced surface deposits and do not alter the canonical mineral's surface-frequency calculation.

### F. Starting-area placement remains separate

Starting-area resource guarantees, favored placements, exclusions, quantities, and distances remain a separate later balance concern.

Decision 3.31 governs the **normal statistical frequency of surface deposits across the world**, not the special rules used to ensure or shape starting progression.

### G. Frequency, patch size, and richness now have distinct locked directions

The surface-resource generation dimensions are now separated as follows:

| Dimension | TI direction |
|---|---|
| Frequency | Vanilla-style statistical frequency, mineral-specific, no systematic distance growth |
| Patch Size | Vanilla-style distance scaling with a TI hard upper bound |
| Richness | Vanilla-style distance scaling with a TI hard upper bound |

This separation allows TI to tune deposit count independently from deposit footprint and geological quantity.

### H. Exact frequency values remain deferred

Decision 3.31 does not lock:

- per-mineral base spot frequencies;
- exact common/uncommon/rare frequency tiers;
- starting-area resource guarantees;
- starting-area spot counts;
- exact player-slider interaction formulas;
- exact autoplace noise expressions;
- compatibility behavior with other world-generation/resource mods;
- final frequency balance values.

Decision 3.31 locks the **vanilla-style, mineral-specific, non-distance-scaling frequency architecture**, not its numeric tuning.

---

## 3.32 Canonical Mineral Vocabulary with Planet-Scoped Deposit-Profile Taxonomy: LOCKED

Thelian Industries uses a **global canonical mineral/resource vocabulary**, while the actual primary-resource roster, specialized geological/mineralization profiles, trace associations, and associated underground mineralization are designed on a **planet-specific basis**.

Conceptually:

```text
Global Canonical Mineral Vocabulary
        ↓
Planet Resource Allocation
        ↓
Primary Minerals Present on That Planet
        ↓
Planet-Specific Curated Deposit Profiles
        ↓
Planet-Specific Trace Associations
        ↓
Planet-Specific Associated Underground Bodies
```

### A. One canonical primary mineral family per conventional material remains the default

Decision 3.2 remains in force. Each deliberately supported conventional metal/material normally uses one canonical primary geological mineral family.

Additional real-world ore minerals are not added merely for mineralogical completeness or realism.

Alternative geological source types are permitted when they create genuine gameplay, planetary, geological, or processing value.

### B. Canonical mineral identity is distinct from planetary allocation

A canonical mineral family may be established globally without simultaneously locking the planet on which it occurs.

Conceptually:

```text
Nickel
→ Pentlandite
```

may be canonical even while:

```text
Which planet(s) contain Pentlandite?
```

remains a separate planetary-resource allocation decision.

Legacy planetary assignments therefore remain non-authoritative until explicitly revisited and locked.

### C. Planet assignment defines the active primary-mineral roster and profile catalog for that world

Each planet receives a deliberate set of primary geological resources.

Those assigned primary minerals define the context from which that planet's curated specialized profiles and trace/associated mineralization are designed.

The refined ownership model is:

```text
Planet
+ Primary Mineral
        ↓
Planet/Mineral-Specific Weighted Profile Pool
        ├─ Pure/Default
        ├─ Specialized Profile A
        ├─ Specialized Profile B
        └─ ... up to the Decision 3.12 limit
                ↓
Each specialized profile defines plausible:
- Primary Trace
- optional Secondary Trace
- eligible Underground Associated Bodies
```

Normal profile selection no longer requires a TI geology class or terrain/biome classification.

### D. Trace taxonomy is planet-scoped rather than one universal unrestricted table

Trace and associated-mineral relationships are designed in conjunction with the mineral roster and scientifically plausible mineral associations for the planet on which the primary deposit occurs.

The same canonical primary mineral may therefore support different specialized-profile sets and profile weights on different planets when the planetary mineral ecosystem and intended gameplay justify it.

This does not change the canonical identity of the primary mineral itself.

### E. Primary minerals are not added solely to justify a trace association

The mod should still avoid proliferating primary resource families merely because a real-world trace association exists.

The specialized-profile and trace taxonomy is intentionally designed around the primary mineral roster assigned to each planet.

A trace association may influence planetary mineral-system design, but it does not automatically require every geologically related mineral to become an independently autoplaced primary resource.

### F. Industrial minerals belong to the same mineral taxonomy

Decision 3 is not restricted to metallic ores.

Industrial and supporting geological resources may be canonical mineral families where they serve metallurgy, chemistry, construction, glass, fertilizers, or other TI systems.

Current examples include families such as:

- Limestone / Calcite;
- Quartzite / Silica;
- Phosphorite;
- Carnallite;
- Bituminous material / Coal.

Their downstream recipes may be owned by other systems, but their geological resource identity belongs to the Ore and Mineral Taxonomy.

### G. Multi-element mineral feeds are legitimate exceptions

A canonical mineral family is not required to represent only one useful element when the actual gameplay purpose is a combined mineral feed.

Examples may include:

```text
Carnallite
→ Magnesium-bearing products
+ Potassium-bearing products
```

or:

```text
Monazite
→ Rare-earth-bearing feed
→ later separation into selected rare-earth products
```

Exact processing chains remain later decisions.

### H. Gold canonical primary ore is Gold-Bearing Quartz

The locked primary Gold family is:

```text
Gold
→ Gold-Bearing Quartz
```

The intended working item progression is conceptually:

```text
Gold-Bearing Quartz Deposit
→ Gold-Bearing Quartz
→ Crushed Gold-Bearing Quartz
→ Gold Concentrate / later specialized gold-processing intermediate
→ Gold
```

The exact downstream Gold extraction/refining process remains deferred and may differ materially from ordinary furnace metallurgy.

### I. Placer Gold is retained only as a possible secondary/alluvial geological source type

`Placer Gold` is no longer the canonical hard-rock Gold ore family.

It may later be used as a deliberately distinct secondary/alluvial geological occurrence if explicitly designed.

Whether TI ultimately implements placer deposits, and how they are placed, mined, or processed, remains deferred. Decision 3.13 does not automatically terrain-gate them.

### J. Gold trace-item representation remains explicitly open

A future trace-Gold representation such as a `Gold Nugget` item may be considered, but it is **not locked by Decision 3.32**.

The currently established canonical trace-item rules from Decisions 3.3 and 3.4 remain authoritative unless explicitly revised later.

Therefore, adopting a distinct Gold Nugget trace item would require a deliberate future taxonomy decision rather than being implied by this decision.

### K. Current canonical resource-family roster

The current canonical resource vocabulary includes the following established or retained working families, independent from final planetary allocation:

| Material / Element | Canonical geological source family |
|---|---|
| Coal / carbon fuel | Bituminous material / Coal |
| Iron | Hematite |
| Copper | Cuprite |
| Tin | Cassiterite |
| Lead | Galena |
| Gold | **Gold-Bearing Quartz** |
| Uranium | Uraninite |
| Aluminum | Bauxite |
| Manganese | Pyrolusite |
| Cobalt | Cobaltite |
| Nickel | Pentlandite |
| Zirconium | Zircon |
| Zinc | Sphalerite |
| Silver | Argentite |
| Chromium | Chromite |
| Mercury | Cinnabar |
| Tungsten | Wolframite |
| Titanium | Ilmenite |
| Platinum | Sperrylite |
| Lithium | Petalite |
| Neodymium / selected rare-earth feed | Monazite |
| Silicon / silica | Quartzite |
| Calcium / limestone feed | Limestone / Calcite |
| Magnesium + Potassium feed | Carnallite |
| Phosphorus feed | Phosphorite |

This roster is a taxonomy vocabulary, not a locked statement that every family appears on every planet or that every historical planetary assignment remains valid.

### L. Exact planetary mineral ecosystems remain deferred

Decision 3.32 locks the ownership and naming architecture above, but does not yet lock:

- any future revision to the locked planetary primary-mineral allocation;
- exact number of primary resources per planet;
- exact planet-specific specialized profile tables;
- exact profile-selection weights;
- exact trace-mineral association tables;
- exact associated underground-body tables;
- exact Gold placer implementation;
- any Gold Nugget or other specialized trace item;
- final Gold processing recipes;
- final rare-earth separation design;
- final industrial-mineral processing chains.

---

---

## 3.33 Planetary Primary Mineral Allocation: LOCKED

The currently planned planetary primary-resource allocation is locked as the authoritative working distribution for the Ore and Mineral Taxonomy.

Planet assignment determines where a canonical mineral/resource family may appear as an independently generated primary surface deposit. Trace mineralization, contained coproducts, specialized deposit profiles, and associated underground bodies remain separate systems governed by the planet/mineral profile architecture.

### A. Nauvis

| Geological resource | Element / primary material |
|---|---|
| Bituminous Ore / Coal | Carbon / Coal |
| Hematite | Iron |
| Cuprite | Copper |
| Cassiterite | Tin |
| Galena | Lead |
| Bauxite | Aluminum |

Gold-Bearing Quartz is not a Nauvis primary deposit under this allocation. Uraninite is not a Nauvis primary deposit under this allocation.

### B. Luna

| Geological resource | Element / primary material |
|---|---|
| Cinnabar | Mercury |
| Argentite | Silver |
| Uraninite | Uranium |
| Ice Fields | Water |

Regolith is removed from the planned metallurgy/resource roster and is not part of the Luna allocation.

### C. Vulcanus

| Geological resource | Element / primary material |
|---|---|
| Pyrolusite | Manganese |
| Cobaltite | Cobalt |
| Chromite | Chromium |

### D. Fulgora

| Geological resource | Element / primary material |
|---|---|
| Zircon | Zirconium |
| Pentlandite | Nickel |

Zircon → Zirconium is restored to the canonical mineral vocabulary and retained as a Fulgora primary resource family.

### E. Gleba

| Geological resource | Element / primary material |
|---|---|
| Sphalerite | Zinc |
| Limestone / Calcite | Calcium / limestone feed |
| Gold-Bearing Quartz | Gold |

### F. Pyrosauria

| Geological resource | Element / primary material |
|---|---|
| Carnallite | Magnesium + Potassium |
| Phosphorite | Phosphorus |

### G. Tectara

| Geological resource | Element / primary material |
|---|---|
| Wolframite | Tungsten |
| Ilmenite | Titanium |

### H. Voltaris

| Geological resource | Element / primary material |
|---|---|
| Monazite | Neodymium / selected rare-earth feed |
| Sperrylite | Platinum |

### I. Canonical families not yet assigned as primary planetary deposits

The following canonical families remain in the global vocabulary but are **not assigned as independently generated primary planetary deposits by Decision 3.33**:

- Petalite → Lithium
- Quartzite → Silicon / silica feed

They remain available for later allocation, trace/associated use, specialized processing, or another explicitly designed source architecture.

### J. Planetary allocation and specialized profiles remain distinct

A mineral does not need to be an independently autoplaced primary deposit on a planet in order to appear there through a scientifically justified specialized profile, contained trace association, beneficiation recovery, or associated underground body.

Conversely, assigning a primary mineral to a planet does not by itself lock its exact specialized profiles, trace associations, occurrence weights, reserve quantities, or processing recipes. Those are researched and designed separately.

### K. Current locked allocation summary

```text
Nauvis
- Coal / Carbon ← Bituminous Ore / Coal
- Iron ← Hematite
- Copper ← Cuprite
- Tin ← Cassiterite
- Lead ← Galena
- Aluminum ← Bauxite

Luna
- Mercury ← Cinnabar
- Silver ← Argentite
- Uranium ← Uraninite
- Water ← Ice Fields

Vulcanus
- Manganese ← Pyrolusite
- Cobalt ← Cobaltite
- Chromium ← Chromite

Fulgora
- Zirconium ← Zircon
- Nickel ← Pentlandite

Gleba
- Zinc ← Sphalerite
- Calcium / Limestone ← Limestone / Calcite
- Gold ← Gold-Bearing Quartz

Pyrosauria
- Magnesium + Potassium ← Carnallite
- Phosphorus ← Phosphorite

Tectara
- Tungsten ← Wolframite
- Titanium ← Ilmenite

Voltaris
- Neodymium / Rare-Earth Feed ← Monazite
- Platinum ← Sperrylite
```

### L. Explicit deferrals

Decision 3.33 does not yet lock:

- exact specialized deposit profiles for any planet/mineral pair;
- exact trace-mineral associations;
- exact associated underground-body associations;
- exact planet/mineral profile weights;
- exact starting-area resource placement;
- exact resource frequency, size, or richness balance values beyond the already locked world-generation architecture;
- future assignment of Petalite or Quartzite;
- whether any future planet or resource family is added to the project.

---

---

## 3.34 Geological Association Selection Pool and Existing-Material Scope: LOCKED

The current geology-derived candidate association pool is locked as the **authoritative working selection pool** for future specialized deposit-profile prototyping.

This decision does **not** lock the final specialized profiles that will ship for each planet/mineral pair. Instead, it locks the current set of scientifically grounded relationships that TI may draw from during prototyping, while preserving room for later deliberate fictional or fantasy-level associations when the planet setting, gameplay, or lore benefits from them.

The formula-complete research report `Thelian_Industries_Geological_Deposit_Research(2).md` is the current scientific reference baseline for these associations.

### A. Existing TI material families remain the default gameplay scope

The geology report contains many scientifically valid byproduct elements that are not currently part of TI's material vocabulary. Those elements do not become gameplay materials merely because the geology supports them.

Current rule:

> Specialized deposit profiles should preferentially use the existing TI material/resource families. A new element or material family requires its own explicit future design decision.

Vanadium is explicitly excluded from the current metallurgy/material scope and is not part of the Uraninite candidate pool.

The same existing-material-only default applies to other non-roster elements suggested by the research, including Gallium, Germanium, Cadmium, Indium, Scandium, Hafnium, Tantalum, Niobium, Molybdenum, Bismuth, Antimony, Tellurium, Selenium, Thorium, Palladium, Rhodium, Iridium, Cesium, Beryllium, Boron, and similar additions unless separately approved later.

### B. Deposit-profile formula rule

A geological deposit profile does not itself receive an invented single chemical formula when it represents a rock, ore assemblage, mixed mineral concentrate, or deposit system.

Instead, profile documentation records:

- the canonical primary ore/mineral formula where one exists;
- formulas for important contained trace minerals or associated mineral phases;
- distinct associated underground bodies separately;
- rock/resource families such as Coal, Bauxite, Limestone, Phosphorite, Gold-Bearing Quartz, and Quartzite as multi-mineral assemblages where appropriate.

### C. Locked full working selection pool

Every canonical primary mineral still retains its mandatory **Pure/Default** profile. The specialized candidates below are the current approved pool from which later planet/mineral profile catalogs may be refined.

#### Nauvis

**Bituminous Coal / Coal, no fixed mineral formula**
- Pyritic Coal: Pyrite `FeS2`; Sulfur coproduct; optional pyrite-rich horizon.
- Uraniferous Coal: Coal has no fixed formula; Uranium association; optional U-rich carbonaceous horizon; rare/highly deposit-specific.

**Hematite `Fe2O3` -> Iron**
- Manganiferous Hematite: Hematite `Fe2O3`; Mn phases such as Pyrolusite `MnO2` or Rhodochrosite `MnCO3`; Manganese trace/coproduct; optional Mn-rich horizon.
- Titaniferous Iron Ore: Hematite `Fe2O3`; Ilmenite `FeTiO3`; Magnetite `Fe3O4`; Titanium association; optional Fe-Ti/Ilmenite body.
- Iron-Oxide Copper-Gold Hematite: Hematite `Fe2O3`; Chalcopyrite `CuFeS2`; Bornite `Cu5FeS4`; native Gold `Au`; Electrum `(Au,Ag)`; Copper + Gold specialized IOCG-style association.

**Cuprite `Cu2O` -> Copper**
- Supergene Cuprite Cap: Cuprite `Cu2O`; Chalcocite `Cu2S`; Covellite `CuS`; Chalcopyrite `CuFeS2`; Bornite `Cu5FeS4`; deeper primary Copper-sulfide reserve.
- Gold-Bearing Copper System: Cuprite `Cu2O`; native Gold `Au`; Electrum `(Au,Ag)`; optional deeper Cu sulfides; Gold trace association.
- Silver-Bearing Polymetallic Cuprite: Cuprite `Cu2O`; native Silver `Ag`; Ag2S-family silver mineralization; Electrum `(Au,Ag)`; Silver and optional Gold; polymetallic/Copper-sulfide body.

**Cassiterite `SnO2` -> Tin**
- Tungsten-Bearing Cassiterite Greisen: Cassiterite `SnO2`; Wolframite `(Fe,Mn)WO4`; Ferberite `FeWO4`; Huebnerite `MnWO4`; Scheelite `CaWO4`; Tungsten trace/coproduct and/or Wolframite body.
- Lithium-Associated Cassiterite Pegmatite: Cassiterite `SnO2`; Petalite `LiAlSi4O10`; Spodumene `LiAlSi2O6`; Lepidolite approximately `K(Li,Al)3(Si,Al)4O10(F,OH)2`; Petalite/Lithium-associated body.
- Placer Cassiterite: Cassiterite `SnO2`; Zircon `ZrSiO4`; Ilmenite `FeTiO3`; Rutile `TiO2`; Zirconium + Titanium associated placer phases.

**Galena `PbS` -> Lead**
- Silver-Bearing Galena: Galena `PbS`; Acanthite/Argentite `Ag2S`; Pyrargyrite `Ag3SbS3`; Proustite `Ag3AsS3`; Silver trace; optional Sphalerite body.
- Zinc-Associated Galena: Galena `PbS`; Sphalerite `ZnS`; optional Silver; Sphalerite associated body.
- Polymetallic VMS Galena: Galena `PbS`; Sphalerite `ZnS`; Chalcopyrite `CuFeS2`; Ag-bearing phases such as `Ag2S`; Silver + Copper; Sphalerite and/or Copper-sulfide lens.

**Bauxite -> Aluminum; no single bulk formula**
Principal Al minerals: Gibbsite `Al(OH)3`; Boehmite `AlO(OH)`; Diaspore `AlO(OH)`.
- REE-Bearing Bauxite: principal Al hydroxides plus Monazite-type `(Ce,La,Nd,Th)PO4` accessory phases; Neodymium/REE feed; rare/deposit-specific.
- Titaniferous Bauxite: principal Al hydroxides plus Anatase `TiO2` and Rutile `TiO2`; Titanium association.
- Iron-Rich Bauxite: principal Al hydroxides plus Goethite `FeO(OH)` and Hematite `Fe2O3`; primarily a processing/residue profile rather than an Iron reward.

#### Luna

**Cinnabar `HgS` -> Mercury**
- Hot-Spring Gold Cinnabar: Cinnabar `HgS`; native Gold `Au`; Electrum `(Au,Ag)`; Quartz `SiO2`; Gold trace and/or Gold-Bearing Quartz/epithermal Gold body.
- Polymetallic Epithermal Cinnabar: Cinnabar `HgS`; native Silver `Ag`; Acanthite `Ag2S`; native Gold `Au`; Galena `PbS`; Sphalerite `ZnS`; Silver + Gold with optional Pb-Zn associated body.

**Uraninite `UO2` idealized -> Uranium**
- REE-Bearing Pegmatitic Uraninite: Uraninite `UO2`; Monazite `(Ce,La,Nd,Th)PO4`; Xenotime `YPO4`; Neodymium/REE association; optional REE accessory-mineral zone.
- Polymetallic Hydrothermal Uraninite: Uraninite `UO2`; Chalcopyrite `CuFeS2` and other Cu sulfides; Copper trace/associated body.
- Phosphate-Associated Uranium: Uraninite `UO2`; Apatite `Ca5(PO4)3(F,Cl,OH)`; Fluorapatite `Ca5(PO4)3F`; Phosphorus/Phosphorite association. The reverse Phosphorite -> Uranium relationship is preferred where only one direction is implemented.

**Argentite / Ag2S Ore Family -> Silver**
Canonical TI name remains Argentite; low-temperature natural `Ag2S` is generally Acanthite.
- Gold-Silver Epithermal Ore: `Ag2S`; native Gold `Au`; Electrum `(Au,Ag)`; Gold trace; optional Gold-Bearing Quartz body.
- Lead-Zinc-Silver Ore: `Ag2S`; Galena `PbS`; Sphalerite `ZnS`; Lead/Zinc preferably represented as associated bodies where appropriate.
- Copper-Silver Sulfide Ore: `Ag2S`; Chalcopyrite `CuFeS2`; Copper association and optional Copper-sulfide body.

**Ice Fields `H2O` -> Water**
- No metal-trace profile is required by the current pool.
- Regolith remains removed from the resource roster.

#### Vulcanus

**Pyrolusite `MnO2` -> Manganese**
- Cobaltiferous Manganese Oxide: Pyrolusite `MnO2`; mixed Mn oxides including Cryptomelane idealized `KMn8O16`; Cobalt association; optional Co-rich Mn horizon.
- Nickel-Cobalt Manganese Oxide: Pyrolusite `MnO2`; Birnessite approximately `(Na,Ca)0.5Mn2O4·1.5H2O`; Todorokite generalized `(Na,Ca,K,Ba,Sr)1-x(Mn,Mg,Al)6O12·3-4H2O`; Nickel + Cobalt association.
- Oxidized Mn-over-Carbonate Deposit: Pyrolusite `MnO2`; Rhodochrosite `MnCO3`; deeper Mn-carbonate reserve.
- Hydrothermal Manganese Oxide: Pyrolusite `MnO2`; Quartz `SiO2`; Barite `BaSO4`; Calcite `CaCO3`; processing/mineralogy profile without required metal trace.

**Cobaltite `CoAsS` -> Cobalt**
- Nickeliferous Cobaltite: Cobaltite `CoAsS`; Glaucodot `(Co,Fe)AsS`; Skutterudite `CoAs3`; Ni-bearing arsenides; Nickel trace/associated zone.
- Copper-Gold Cobaltite: Cobaltite `CoAsS`; Chalcopyrite `CuFeS2`; native Gold `Au`; Copper + Gold association; Copper-rich sulfide body.
- Silver-Bearing Cobaltite Vein: Cobaltite `CoAsS`; native Silver `Ag` and Ag-bearing arsenide/sulfide phases; Silver association.
- Tungsten-REE Complex Cobaltite: Cobaltite `CoAsS`; Scheelite `CaWO4`; Monazite `(Ce,La,Nd,Th)PO4`; Xenotime `YPO4`; Tungsten + Neodymium/REE association.

**Chromite `FeCr2O4` idealized -> Chromium**
Natural chromite may be represented approximately as `(Fe,Mg)(Cr,Al,Fe)2O4`.
- PGE-Bearing Stratiform Chromite: Chromite `FeCr2O4`; Sperrylite `PtAs2`; Cooperite `PtS`; other PGM; Platinum/PGE association; Sperrylite/PGE reef.
- Nickel-Copper Sulfide-Associated Chromite: Chromite `FeCr2O4`; Pentlandite `(Fe,Ni)9S8`; Chalcopyrite `CuFeS2`; Pyrrhotite `Fe1-xS`; Nickel + Copper; Pentlandite-rich Ni-Cu body.
- Titaniferous Chromite: Chromite `FeCr2O4`; Ilmenite `FeTiO3`; Rutile `TiO2`; Titanium association; optional Ilmenite body.
- Podiform Chromite: Chromite `FeCr2O4`; Olivine `(Mg,Fe)2SiO4`; Serpentine approximately `Mg3Si2O5(OH)4`; no required trace, optional rare Platinum/PGE pod.

#### Fulgora

**Zircon `ZrSiO4` -> Zirconium**
- Titanium-Rich Heavy-Mineral Sand: Zircon `ZrSiO4`; Ilmenite `FeTiO3`; Rutile `TiO2`; Titanium association; Ilmenite-rich lens.
- Monazite-Bearing Zircon Sand: Zircon `ZrSiO4`; Monazite `(Ce,La,Nd,Th)PO4`; Ilmenite `FeTiO3`; Neodymium/REE + optional Titanium; Monazite/Ilmenite lens.
- Tin-Bearing Heavy-Mineral Placer: Zircon `ZrSiO4`; Cassiterite `SnO2`; Ilmenite `FeTiO3`; Tin + Titanium; optional Cassiterite-rich lens.
- Uraniferous Zircon: Zircon `ZrSiO4` with trace Uranium substitution; Uranium association; mineralogically valid but weak as an economic coproduct.

**Pentlandite `(Fe,Ni)9S8` -> Nickel**
- Cobaltiferous Pentlandite: Pentlandite `(Fe,Ni)9S8` with Co substitution; Cobalt trace.
- Copper-Rich Magmatic Nickel Sulfide: Pentlandite `(Fe,Ni)9S8`; Chalcopyrite `CuFeS2`; Cubanite `CuFe2S3`; Pyrrhotite `Fe1-xS`; Copper + optional Cobalt; Copper-sulfide lens.
- PGE-Bearing Nickel Sulfide: Pentlandite `(Fe,Ni)9S8`; Sperrylite `PtAs2`; Cooperite `PtS`; other PGM; Platinum + Cobalt; Sperrylite/PGE reef.
- Gold-Bearing Nickel-Copper Sulfide: Pentlandite `(Fe,Ni)9S8`; Chalcopyrite `CuFeS2`; native Gold `Au`; Gold + Cobalt or Copper; optional Cu-rich sulfide body.
- Layered-Intrusion Nickel-Chromium System: Pentlandite `(Fe,Ni)9S8`; Chromite `FeCr2O4`; PGM such as Sperrylite `PtAs2`; optional Platinum; Chromite associated body.

#### Gleba

**Sphalerite `ZnS` -> Zinc**
- Lead-Silver Zinc Deposit: Sphalerite `ZnS`; Galena `PbS`; Acanthite/Argentite `Ag2S`; Silver trace; Galena associated body.
- Copper-Zinc VMS Deposit: Sphalerite `ZnS`; Chalcopyrite `CuFeS2`; Galena `PbS`; Ag-bearing phases such as `Ag2S`; Copper + optional Silver; Copper-sulfide lens.

**Calcite `CaCO3` / Limestone -> Calcium / Limestone Feed**
Limestone has no single bulk formula and is commonly dominated by Calcite `CaCO3` with variable Dolomite `CaMg(CO3)2`.
- Dolomitic Limestone: Calcite `CaCO3`; Dolomite `CaMg(CO3)2`; Magnesium coproduct; optional dolostone/Mg-rich carbonate component.
- Phosphatic Limestone: Calcite `CaCO3`; Apatite `Ca5(PO4)3(F,Cl,OH)`; Fluorapatite `Ca5(PO4)3F`; Phosphorus association; optional Phosphorite body.
- MVT Mineralized Limestone: Calcite `CaCO3`; Dolomite `CaMg(CO3)2`; Galena `PbS`; Sphalerite `ZnS`; Pb-Zn represented primarily as associated bodies, not ordinary limestone traces.
- Skarned Limestone, Copper subtype: Calcite `CaCO3`; Chalcopyrite `CuFeS2`; skarn phases such as Diopside `CaMgSi2O6`; Copper-associated skarn body.
- Skarned Limestone, Tungsten subtype: Calcite `CaCO3`; Scheelite `CaWO4`; possible Wolframite `(Fe,Mn)WO4`; Tungsten-associated skarn body.
- Skarned Limestone, Zinc/Tin subtype: Calcite `CaCO3`; Sphalerite `ZnS`; Cassiterite `SnO2` where appropriate; Zinc or Tin associated reserve.

**Gold-Bearing Quartz -> Gold; assemblage, no single formula**
Principal phases include Quartz `SiO2`, native Gold `Au`, and Electrum `(Au,Ag)`.
- Silver-Rich Gold Quartz: Quartz `SiO2`; Gold `Au`; Electrum `(Au,Ag)`; Acanthite `Ag2S`; Silver trace.
- Polymetallic Gold Vein: Quartz `SiO2`; Gold `Au`; Electrum `(Au,Ag)`; Chalcopyrite `CuFeS2`; Galena `PbS`; Sphalerite `ZnS`; Copper + Silver traces; Galena/Sphalerite associated bodies.
- Tungsten-Bearing Gold Vein: Quartz `SiO2`; Gold `Au`; Scheelite `CaWO4`; Wolframite `(Fe,Mn)WO4`; Tungsten association; optional Wolframite-rich zone.
- Arsenopyrite-Rich Refractory Gold: Quartz `SiO2`; Pyrite `FeS2`; Arsenopyrite `FeAsS`; no extra reward required; processing-difficulty profile.

#### Pyrosauria

**Carnallite `KMgCl3·6H2O` -> Magnesium + Potassium**
Also expressible as `KCl·MgCl2·6H2O`.
- Sylvite-Rich Carnallitite: Carnallite `KMgCl3·6H2O`; Sylvite `KCl`; Halite `NaCl`; no extra trace; K-richer recovery balance.
- Sulfate-Rich Mixed Evaporite: Carnallite `KMgCl3·6H2O`; Kieserite `MgSO4·H2O`; Anhydrite `CaSO4`; Gypsum `CaSO4·2H2O`; Polyhalite `K2Ca2Mg(SO4)4·2H2O`; Langbeinite `K2Mg2(SO4)3`; optional Sulfur chemistry; sulfate-rich layer.
- Magnesium-Chloride-Rich Carnallite: Carnallite `KMgCl3·6H2O`; Bischofite `MgCl2·6H2O`; no extra trace; Mg-richer recovery balance.

**Phosphorite -> Phosphorus; no single bulk formula**
Principal ore phase is carbonate-fluorapatite/francolite, approximately `Ca5(PO4,CO3)3(F,OH)`; Fluorapatite endmember `Ca5(PO4)3F`.
- Uraniferous Phosphorite: carbonate-fluorapatite/phosphate material with Uranium incorporated in the phosphate system; Uranium trace/coproduct.
- REE-Bearing Phosphorite: Apatite `Ca5(PO4)3(F,Cl,OH)`; Monazite `(Ce,La,Nd,Th)PO4` where separate accessory phases occur; Neodymium/REE + optional Uranium.
- Carbonate-Associated Phosphorite: Apatite `Ca5(PO4)3(F,Cl,OH)`; Calcite `CaCO3`; Dolomite `CaMg(CO3)2`; optional Limestone/Calcite associated body.

#### Tectara

**Wolframite `(Fe,Mn)WO4` -> Tungsten**
Ferberite endmember `FeWO4`; Huebnerite endmember `MnWO4`.
- Tin-Bearing Wolframite Greisen: Wolframite `(Fe,Mn)WO4`; Cassiterite `SnO2`; Tin trace/coproduct; Cassiterite associated body.
- Lithium-Associated Sn-W Granite Belt: Wolframite `(Fe,Mn)WO4`; Cassiterite `SnO2`; Petalite `LiAlSi4O10`; optional Tin; Petalite and/or Cassiterite associated body.
- Tungsten Skarn / Replacement Zone: Wolframite `(Fe,Mn)WO4`; Scheelite `CaWO4`; Calcite `CaCO3`; Chalcopyrite `CuFeS2`; Sphalerite `ZnS`; Cassiterite `SnO2` depending subtype; optional Copper/Zinc/Tin associated skarn bodies.

**Ilmenite `FeTiO3` -> Titanium**
- Zircon-Monazite Heavy-Mineral Sand: Ilmenite `FeTiO3`; Zircon `ZrSiO4`; Monazite `(Ce,La,Nd,Th)PO4`; Rutile `TiO2`; Zirconium + Neodymium/REE; Zircon/Monazite associated lenses.
- Chromium-Bearing Ilmenite: Ilmenite `FeTiO3`; Chromite `FeCr2O4`; Chromium association; optional Chromite body.
- Layered-Intrusion Ilmenite-Magnetite: Ilmenite `FeTiO3`; Magnetite `Fe3O4`; Titanomagnetite as a magnetite-ulvospinel solid solution between `Fe3O4` and `Fe2TiO4`; Hematite `Fe2O3`; no required trace; Iron-rich oxide body.

#### Voltaris

**Monazite -> Neodymium / selected rare-earth feed**
Generalized monazite-group formula `(Ce,La,Nd,Pr,Sm,Th,Ca,U)PO4`; common Monazite-(Ce) endmember `CePO4`.
- Uranium-Bearing Monazite: monazite-group material containing Uranium; Uranium trace/coproduct.
- Zircon-Ilmenite Monazite Placer: Monazite `(Ce,La,Nd,Th)PO4`; Zircon `ZrSiO4`; Ilmenite `FeTiO3`; Rutile `TiO2`; no required trace from Monazite itself; Zircon + Ilmenite associated bodies/lenses.
- Carbonatite-Hosted Monazite: Monazite `(Ce,La,Nd,Th)PO4`; Apatite `Ca5(PO4)3(F,Cl,OH)`; Calcite `CaCO3`; Dolomite `CaMg(CO3)2`; phosphate/apatite and carbonate associated zones.
- Pegmatitic/Metamorphic Monazite: Monazite `(Ce,La,Nd,Th)PO4`; optional Uraninite `UO2`; Quartz `SiO2`; optional Uranium association.

**Sperrylite `PtAs2` -> Platinum**
- Nickel-Copper PGE Reef: Sperrylite `PtAs2`; Pentlandite `(Fe,Ni)9S8`; Chalcopyrite `CuFeS2`; Pyrrhotite `Fe1-xS`; associated Pentlandite and Copper-sulfide bodies.
- Chromite-Associated PGE Reef: Sperrylite `PtAs2`; Chromite `FeCr2O4`; associated Chromite body.
- Gold-Bearing PGE Reef: Sperrylite `PtAs2`; native Gold `Au`; Pentlandite `(Fe,Ni)9S8`; Chalcopyrite `CuFeS2`; Gold trace; optional Pentlandite/Copper-sulfide body.

#### Canonical but currently unassigned primary-resource families

**Petalite `LiAlSi4O10` -> Lithium**
- Tin-Bearing Petalite Pegmatite: Petalite `LiAlSi4O10`; Cassiterite `SnO2`; Tin trace; Cassiterite body.
- Tin-Lithium Granite System: Petalite `LiAlSi4O10`; Cassiterite `SnO2`; optional Tin; Cassiterite body.
- Tungsten-Associated Rare-Metal Granite Belt: Petalite `LiAlSi4O10`; Wolframite `(Fe,Mn)WO4`; Scheelite `CaWO4`; Wolframite-associated body.
- Zoned Lithium Pegmatite: Petalite `LiAlSi4O10`; Spodumene `LiAlSi2O6`; Lepidolite approximately `K(Li,Al)3(Si,Al)4O10(F,OH)2`; Quartz `SiO2`; K-feldspar `KAlSi3O8`; Albite `NaAlSi3O8`; processing/mineralogical variation without required trace reward.

**Quartzite / Silica -> Silicon; Quartzite has no single bulk formula**
Dominant Quartz is `SiO2`.
- High-Purity Quartz: Quartz `SiO2`; no trace reward; improved purity/processing yield.
- Ferruginous Quartzite: Quartz `SiO2`; Hematite `Fe2O3`; Magnetite `Fe3O4`; Goethite `FeO(OH)`; Iron association; optional Hematite-rich body.
- Heavy-Mineral Silica Sand: Quartz `SiO2`; Zircon `ZrSiO4`; Ilmenite `FeTiO3`; Rutile `TiO2`; Zirconium + Titanium; Zircon/Ilmenite lenses.
- Alumina-Bearing Quartzite: Quartz `SiO2`; K-feldspar `KAlSi3O8`; Albite `NaAlSi3O8`; Kaolinite `Al2Si2O5(OH)4`; Aluminum preferably treated as an impurity/processing penalty rather than a reward.
- Hydrothermal Vein Quartz: Quartz `SiO2`; native Gold `Au`; Pyrite `FeS2`; Arsenopyrite `FeAsS`; no Gold output by default unless a separate Gold-Bearing Quartz mineralized system is explicitly generated.

### D. Representation rules retained from earlier Decision 3 architecture

The full selection pool does not override earlier trace/body semantics:

1. Contained or disseminated mineralization may become direct mining coproduct and/or beneficiation recovery through one shared recovery budget.
2. Distinct zoned or separate mineralization should preferentially become an associated finite underground reserve body.
3. A specialized profile may expose one primary trace plus at most one substantially rarer secondary trace.
4. Pure/Default profiles have no geological trace coproducts.
5. Canonical primary and trace item families remain unchanged unless separately revised.
6. A scientifically valid association does not require TI to represent every mineral species or every documented element as a gameplay item.
7. A profile may contain no reward trace at all and instead alter processing difficulty, purity, product ratios, reserve composition, or associated-body structure.

### E. Exact final profile selection is deferred to prototyping

The pool above is deliberately broader than the final shipped profile catalog.

For each planet + primary mineral pair, later prototyping will determine:

- which candidates from this pool are actually retained;
- whether a candidate is represented as contained trace, beneficiation coproduct, associated underground body, processing modifier, or some combination;
- which candidate profiles are omitted for progression/balance simplicity;
- the final maximum 0–5 specialized profiles for that mineral;
- profile weights and rarity;
- trace grades, abundance ranges, and recovery behavior;
- associated-body occurrence and reserve mathematics.

### F. Deliberate fictional/fantasy associations remain permitted

Real geology is the default scientific grounding and the reference baseline, but TI is not required to reproduce terrestrial geology literally on fictional planets.

Later design may add controlled fictional or fantasy-level associations when justified by:

- planetary history or exotic geochemistry;
- Factorio gameplay progression;
- resource logistics;
- lore;
- unusual fictional environmental processes;
- intentionally fantastical planetary characteristics.

Such additions must be **deliberate and explicit**. They should be documented as fictional adaptations rather than silently presented as ordinary real-world mineralogy.

### G. Scope of this lock

Decision 3.34 locks:

- the formula-complete research report as the current scientific reference baseline;
- the existing-material-first scope for current gameplay associations;
- explicit exclusion of Vanadium from the current material set;
- the full candidate selection pool above;
- the rule that final per-mineral specialized-profile catalogs are deferred to prototyping;
- permission for later explicitly labeled fictional/fantasy additions.

Decision 3.34 does **not** lock:

- the final shipped specialized profiles for each mineral;
- exact profile counts below the existing maximum;
- exact profile weights;
- exact trace abundance grades or mathematics;
- exact associated-body probabilities/reserves;
- any new element/material family;
- any future fictional association not yet explicitly designed.

---

### ADR Note: Retired Terrain/Biome Geology Approach

An earlier design tied deposit-profile eligibility to a deterministic terrain-tile/biome geology classification. That approach was removed after recognizing that Factorio biome regions can be too spatially large for the intended resource-distribution behavior. The active architecture instead uses terrain-independent, planet-scoped deterministic weighted profile selection. The obsolete terrain-driven design is intentionally omitted from this checkpoint.

---

# Geological Generation Architecture: Current Consolidated Model

The current intended architecture through Decision 3.34 is:

```text
World Generation
        ↓
Canonical primary mineral autoplace selects location
        ↓
Generate / identify Pure/Default base deposit
        ↓
Identify complete deposit and stable deposit identity
        ↓
Resolve Planet + Primary Mineral
        ↓
Load that planet/mineral's curated outcome pool:
        Pure/Default
        + 0–5 Specialized Profiles
        ↓
Deterministic weighted-random selection
        ↓
Apply one selected profile coherently to the entire patch
        ↓
Generate stable deposit-specific trace grades / abundance
        ↓
Deposit mining behavior produces:
Guaranteed Primary Raw Ore
+ optional profile-governed Trace Raw Ore(s)
        ↓
Paired underground continuation, if present,
inherits the selected surface profile and independently
creates its finite underground reserve composition
```

Natural terrain tiles, biome families, and TI geology classes are **not inputs** to normal profile selection.

Real-world geology is used when authoring the curated planet/mineral profile catalog and trace/associated-mineral relationships, not as a spatial map-classification layer.

Any failure during profile resolution/conversion must safely result in the Pure/Default deposit.

---

# Geological System: Explicitly Open Implementation Questions

The following are **not yet locked implementation details**:

1. Exact method for assigning a stable identity to a generated deposit, especially across chunk boundaries.

2. Exact method for identifying all resource entities belonging to one generated patch.

3. Exact runtime/data-stage architecture for detecting and converting newly generated deposits.

4. Whether profile selection/conversion occurs immediately during/after chunk generation or through another deterministic generation-aware hook.

5. Exact deterministic RNG/hash inputs used for the planet/mineral weighted profile roll.

6. Exact method for handling deposits spanning chunk boundaries while guaranteeing one profile for the entire geological body.

7. Exact rollback/fallback mechanism if replacement partially fails.

8. Exact Factorio API behavior/performance when replacing large numbers of resource entities during chunk generation.

9. Whether resource variants can share all graphics/assets without meaningful additional VRAM overhead, and the practical prototype-count cost.

10. Exact Pure/Default and specialized-profile weights for each planet/mineral pair.

11. Exact trace-product probabilities and quantities.

12. Exact planet/mineral specialized profile catalogs, trace associations, and associated underground-body tables.

13. Whether deterministic derivation is sufficient for all deposit state or whether some selected/generated values should be persisted in runtime `storage`.

14. Whether any deliberately exceptional future resource type warrants terrain-specific placement outside the normal profile system.

These require technical prototyping, geological/mineralogical research, planetary allocation work, or later balance design.

---

# Existing Baseline Resource and Metallurgy Vocabulary

## Locked planetary primary-resource allocation

### Nauvis

- Bituminous Ore / Coal → Carbon / Coal
- Hematite → Iron
- Cuprite → Copper
- Cassiterite → Tin
- Galena → Lead
- Bauxite → Aluminum

Stage 1 starting-resource direction also includes non-geological resources/materials such as:

- Wood
- Rubber
- Clay

Starting patch quantities remain conceptual:

- intended starting patches: approximately 25k–100k total yield;
- broader/general surface mixed deposits: approximately 10k–100k.

Final balance values are not implemented.

### Luna

- Cinnabar → Mercury
- Argentite → Silver
- Uraninite → Uranium
- Ice Fields → Water

Regolith has been removed from the planned resource roster.

### Vulcanus

- Pyrolusite → Manganese
- Cobaltite → Cobalt
- Chromite → Chromium

### Fulgora

- Zircon → Zirconium
- Pentlandite → Nickel

### Gleba

- Sphalerite → Zinc
- Limestone / Calcite → Calcium / limestone feed
- Gold-Bearing Quartz → Gold

### Pyrosauria

- Carnallite → Magnesium / Potassium
- Phosphorite → Phosphorus

### Tectara

- Wolframite → Tungsten
- Ilmenite → Titanium

### Voltaris

- Monazite → Neodymium / selected rare-earth feed
- Sperrylite → Platinum

### Canonical but currently unassigned primary families

- Petalite → Lithium
- Quartzite → Silicon / silica feed

## Nauvis Orbit concepts

- Carbonic Asteroids → Carbon
- Ice Asteroids → Water
- Ferric Asteroids → Iron
- Cupric Asteroids → Copper
- Silicic Asteroids → Silicates

These orbital concepts are separate from the locked planet-surface primary-deposit allocation.

# Existing Machine Vocabulary

Current metallurgy concepts include:

- Ore Crusher
- Ore Wash Plant
- Stone Brick Smelter
- Blast Furnace
- Arc Furnace
- Foundry
- Metal Caster
- Alloy Foundry
- Electrolysis Bath
- Gas Kiln
- Electric Kiln

Not all of these have had their detailed responsibilities locked.

---

# Existing Byproduct Vocabulary

Default conceptual byproducts:

| Process | Default byproducts |
|---|---|
| Ore Crusher | Rock Tailings, Rock Gravel |
| Wash Plant | Rock Sand, Rock Clay |
| Smelter | Optional low-% Slag |
| Foundry | Universal Slag |

Ratios are geological/process-specific.

Historical/scaffold item IDs include:

- `slag`
- `rock-tailings`
- `rock-sand`
- `rock-clay`
- `rock-salt`
- `rock-slag-gravel`
- `rock-man-sand`
- `rock-man-gravel`

These IDs do not by themselves establish final recipe behavior.

---

# Existing Metals and Alloys

## Basic metals/materials represented in planning

- Iron / Pig Iron
- Steel
- Copper
- Tin
- Lead
- Aluminum
- Zinc
- Cobalt
- Silver
- Gold
- Titanium
- Tungsten
- Platinum
- Silicon

## Alloy concepts

- Bronze = Copper + Tin
- Brass = Copper + Zinc
- Electrum = Gold + Silver
- Constantan = Copper + Nickel
- Invar = Iron + Nickel
- Chromoly Steel = Steel + Chromium + Manganese
- Stainless Steel = Steel + Chromium + Nickel
- Stellite = Cobalt + Chromium + Tungsten
- Kovar = Iron + Nickel + Cobalt

Source scaffolding also contains Duralumin and a `kovar-ingot` localization as “Cobalt-Steel Ingot.” Source scaffolds are implementation vocabulary, not automatic design authority.

---

# Existing Metallurgical Component Concepts

Steel examples:

- Axle
- Ball Bearing
- Bolts
- Gear
- Nuts
- Piston
- Plate
- Rivet
- Rod
- Sheet
- Washers

Other examples:

- Aluminum: rods, plates, gears, heatsinks, pistons, pipes
- Brass: plates, rods, gears, piping, valves
- Copper: coils, plates, pipes, rods, sheets
- Tin: sheet, foil, cans
- Titanium: beam, plate

Construction-component progression concepts include:

- Mechanical Parts: Copper → Brass → Aluminum → Steel → Cobalt Steel
- Hydraulic Parts: Copper → Brass → Stainless Steel
- Electronic Components: wires, boards, microchips, CPUs, power supplies
- Structural Parts: concrete, brick, wall panels, framing

Shared cross-domain ownership follows:

> One authoritative owner per concern, not one exclusive owner per item.

---

# Implementation Snapshot

Current codebase evidence indicates metallurgy is largely **planning/scaffold ahead of implementation**.

Important known state:

- no registered custom resource prototypes for the planned metallurgy;
- no registered mining drills for this architecture;
- no registered Crusher/Wash Plant/furnace/foundry/caster metallurgy chain;
- no implemented metallurgy recipes;
- no implemented metallurgy technologies;
- ore/ingot/component source files contain unregistered prototype scaffolds;
- therefore the locked yield architecture has not yet drifted against implemented recipe numbers.

The existing code scaffolds should be reconciled against these locked decisions during implementation rather than treated as design authority.

---

# Decision 4.1: Surface Mining Machine Classes and Progression Roles: LOCKED

## Core architecture

Surface extraction and underground extraction are separate machine classes. The Deep Mine is not the final upgrade tier of the surface-mining drill family.

```text
SURFACE EXTRACTION

Manual Mining
→ Burner Surface Miner
→ Electric Surface Miner
→ Advanced / Heavy Surface Miner

UNDERGROUND EXTRACTION

Exposed Underground Access Node
→ Deep Mine
```

## A. Manual mining

Manual mining is the emergency/starter extraction method for exposed surface resources. It does not access underground reserves and receives no special geological advantage. Normal finite surface-resource depletion applies.

## B. Burner Surface Miner

The Burner Surface Miner is the first automated surface-extraction machine. Its role is primitive early automation with low throughput, limited practical coverage, and burner-fuel operation. It does not receive a blanket recovery/productivity bonus merely because it automates extraction.

## C. Electric Surface Miner

The Electric Surface Miner is the standard scalable surface-mining workhorse. Its role is substantially improved throughput and convenience, electric operation, and broader practical coverage while continuing to mine the same finite geological surface resource system. It supports specialized deposit and trace-output behavior normally.

## D. Advanced / Heavy Surface Miner

TI uses one later physical surface-mining generation rather than proliferating generic Mk2/Mk3/Mk4 drill tiers. The Advanced / Heavy Surface Miner is intended for high-throughput late surface extraction, larger practical coverage, and later-game operational improvements.

It does **not** create additional geology or automatically receive a universal recovery bonus. Any resource-drain reduction, productivity behavior, recovery advantage, module behavior, or other efficiency effect requires an explicit later balance/process rule.

## E. Deep Mine is a separate underground extraction class

The Deep Mine operates only through the underground-access-node and simulated finite underground-reserve architecture established by Decisions 3.21 through 3.28. It extracts automatic mixed outputs from finite internal reserve pools and is not Surface Miner Mk4.

## F. Physical machine-count rule

After manual mining, TI uses exactly three general physical surface-mining generations by default:

1. **Burner Surface Miner**
2. **Electric Surface Miner**
3. **Advanced / Heavy Surface Miner**

Mineral-specific drill families are not part of the default taxonomy. Generic surface-mining progression should prefer these three physical generations plus technology, recipe, module, and infrastructure progression rather than repeated Mark-tier proliferation.

## G. Deferred details

The following remain intentionally open for later balance/prototyping:

- final machine names;
- footprints;
- mining radius/coverage;
- mining speed;
- energy consumption and fuel characteristics;
- module slots and beacon interaction;
- pollution;
- resource-drain behavior;
- productivity semantics beyond already locked global recovery rules;
- crafting costs and technology placement;
- graphics and animation requirements.

These implementation/balance details must preserve the locked distinction between throughput progression and geological/recovery semantics.

---

# Decision 4.2: Surface Mining Geological Semantics Across Machine Tiers: LOCKED

## Locked direction

TI initially follows vanilla Factorio: Space Age plus Quality semantics for surface-miner resource drain and mining-efficiency behavior rather than introducing a separate TI-specific drain-efficiency system by default.

### Locked rules

1. Surface-miner tier alone does not alter the underlying geological profile, trace abundance, associated underground bodies, or underground reserve generation.
2. Burner, Electric, and Advanced / Heavy Surface Miners inherit ordinary Factorio mining/depletion semantics unless later prototyping demonstrates a need for TI-specific behavior.
3. Factorio Quality is the presumed first implementation direction. If machine quality affects resource drain or mining efficiency, TI initially preserves and evaluates that behavior rather than overriding it preemptively.
4. The Advanced / Heavy Surface Miner does not currently receive an additional TI-specific resource-drain bonus solely because it is the late surface-mining tier.
5. Better miner tier or machine quality does not make a deposit geologically richer and does not change its generated trace percentages or associated-body composition.
6. Improved trace recovery belongs primarily to downstream beneficiation/separation and mineral-specific processing rather than to the mining machine changing ore composition.
7. Decision 3.28 Original Surface Reference Yield remains based on original generated geology before player mining efficiency, productivity, or quality effects and therefore remains insulated from those exploitation mechanics.
8. Any custom TI resource-drain, depletion-efficiency, or quality interaction is deferred until in-game prototyping and balance testing.

---

# Decision 4.3: Surface and Deep Mining Output-State Boundary: LOCKED

## Locked direction

Normal surface miners and Deep Mines are extraction-only machines. They output canonical raw geological material and may also produce unrefined excavation waste. All actual ore preparation and beneficiation remains downstream in the Crusher, Wash Plant, or another explicitly specialized beneficiation process.

### Locked rules

1. Burner Surface Miner, Electric Surface Miner, Advanced / Heavy Surface Miner, and Deep Mine normally produce the canonical Raw Ore state of each extracted mineral.
2. A geological profile that permits directly mined trace-mineral coproducts emits those coproducts in their canonical Raw Ore state.
3. Mining machines do not normally emit Crushed Ore, Concentrate, purified metal, or another beneficiated state merely because the mining machine is more advanced.
4. Crushing remains owned by the Crusher stage. Washing, separation, and concentration remain owned by the Wash Plant or another explicitly specialized beneficiation process.
5. Mining may additionally produce unrefined non-ore excavation byproducts such as waste rock, rock fragments, gravel, rock fines, sand, clay, overburden, or another geology-appropriate material.
6. Exact mining-waste products, probabilities, quantities, and geological dependencies remain deferred to later prototyping.
7. Slag is not a normal mining byproduct. Slag remains a thermal/metallurgical byproduct associated with smelting, foundry work, or related high-temperature processing.
8. Deep Mine mixed extraction follows the same material-state boundary: multiple reserve pools may produce multiple canonical Raw Ore outputs plus possible excavation waste, but not automatically crushed or concentrated products.
9. Any future machine or technology that deliberately combines extraction with crushing or beneficiation must be designed as an explicit specialized exception rather than becoming an inherent feature of ordinary mining-machine progression.

---

# Decision 4.4: Mining Waste and Excavation Byproduct Semantics: LOCKED

## Locked direction

Surface and underground mining may generate bounded unrefined excavation byproducts in addition to canonical Raw Ore. The possible waste composition is geology/profile-driven and selected from a limited shared TI waste-rock/material vocabulary rather than requiring unique waste items for every ore.

### Locked rules

1. Mining waste may include waste rock, rock fragments, gravel, rock fines, sand, clay, overburden, or comparable physically excavated material where geologically appropriate.
2. Deposit geology/profile primarily determines which mining-waste families are plausible. A Hematite body, Bauxite deposit, Coal seam, Limestone body, and quartz-vein deposit do not need to share the same waste mix.
3. TI should use a limited shared canonical mining-waste vocabulary rather than creating one unique waste item per mineral or deposit profile.
4. Mining waste is distinct from beneficiation waste. Crusher rejects, wash tailings, sludge, separated gangue, and comparable process residues belong primarily to beneficiation stages rather than to the extraction stage.
5. Slag remains a thermal/metallurgical byproduct and is not a normal mining-waste item.
6. Miner tier does not change the underlying geological waste composition. Machine progression may later affect throughput or operational ratios, but it does not reroll or redefine what host-rock material exists.
7. Deep Mining follows the same geological principle and may produce excavation rock/waste while extracting finite underground reserves. Surface and Deep Mining may later use different waste quantities because underground development removes additional host rock, but that distinction is deferred.
8. Mining waste is a bounded secondary stream rather than a mandatory one-for-one companion to every Raw Ore item. It should create logistics, recycling, and material-recovery opportunities without overwhelming primary ore extraction by default.
9. Exact waste items, rates, probabilities versus deterministic fractional accumulation, profile tables, machine-specific modifiers, logistics pressure, and reuse/recycling balance remain deferred to prototyping.

---

# Decision 4.5: Deep Mine Physical Machine Progression and Tier Count: LOCKED

## Locked direction

1. Underground extraction uses one general physical **Deep Mine** machine by default rather than multiple generic Deep Mine Mk tiers.
2. The Deep Mine remains the dedicated machine coupled to an underground-access node and extracts the node's finite internal reserve pools through fully automatic mixed extraction.
3. Deep Mining progression is primarily achieved through throughput technologies, machine Quality, modules, power/logistics improvements, excavation-consumable progression, and other operational upgrades rather than repeated replacement of the physical Deep Mine prototype.
4. Deep Mine progression does not alter generated reserve quantity, geological profile, trace abundance, associated-body occurrence, survey truth, or permit manual targeting of individual reserve pools.
5. Vanilla Space Age + Quality behavior is the presumed first implementation direction wherever technically appropriate. TI does not create a parallel Deep Mine Mk progression before prototyping demonstrates a need for one.
6. If prototyping demonstrates that one physical Deep Mine does not provide sufficient progression depth, a later explicit decision may introduce a second physical generation. Multiple generic Deep Mine tiers are not part of the current default architecture.
7. Exact throughput modifiers, Quality effects, module behavior, excavation consumables, power requirements, technology bonuses, and operational efficiencies remain deferred to prototyping.

---

# Decision 4.6: Mineral-Specific Mining Time and Miner Compatibility: LOCKED

## Locked direction

1. TI does not use resource-category gating as the normal mechanism for representing ore hardness, density, competency, or extraction difficulty. Ordinary solid mineral deposits remain broadly compatible with the normal Burner, Electric, and Advanced / Heavy Surface Miner progression.
2. Mineral-specific extraction difficulty is represented primarily through the resource prototype's `minable.mining_time`. Softer or easier-to-extract resources use shorter mining times, while harder, denser, tougher, or otherwise more difficult resources use longer mining times.
3. Miner-side `mining_speed` and resource-side `mining_time` remain separate variables, allowing the same miner to extract different minerals at materially different rates without forbidding access to the harder ore.
4. TI uses modern Factorio mining-time semantics rather than the historical `hardness` / `mining_power` model. The older hardness system is not part of the current Factorio prototype model; `mining_time` is the intended functional lever for resource extraction difficulty.
5. Geological/deposit-profile variants may receive different mining times only when the variant itself reasonably changes physical extraction difficulty. Profile-specific mining time must not be used merely as arbitrary rarity or progression gating.
6. Mining time does not alter generated richness, trace abundance, mining-waste composition, associated underground bodies, underground reserve quantity, or Original Surface Reference Yield. It affects extraction rate only.
7. Resource categories remain available for genuinely different extraction classes or exceptional mechanics, such as a future fluid, solution, dredging, or otherwise fundamentally different extraction system. They are not used merely to prevent an earlier general-purpose surface miner from mining a harder solid ore.
8. Mineral-specific and profile-specific `mining_time` values, machine-speed interactions, Quality behavior, module effects, and balance targets remain deferred to prototyping.

---

# Decision 4.7: Surface-Mining Fluid and Consumable Requirements: LOCKED

## Locked direction

1. Normal TI solid surface resources do not require mineral-specific fluids or chemical reagents by default. Ordinary low-difficulty ores are physically extracted using the miner's normal fuel or electrical energy and produce canonical Raw Ore plus any geology-authorized excavation byproducts.
2. Selected ores or geological profiles may later require a mining fluid where there is a clear extraction, geological, chemical, technological, or gameplay justification.
3. Water is the preferred general-purpose candidate for mechanically difficult extraction where fluid use represents drill/cutter cooling, dust suppression, flushing, or similar mining support rather than ore beneficiation.
4. Mineral-specific chemical reagents, including a Vanilla-style acid requirement, remain explicitly permitted for exceptional resources when justified, but are not automatically assigned to hard ores merely to increase recipe complexity.
5. Resource hardness/extraction difficulty remains primarily represented by Decision 4.6 `minable.mining_time`; any fluid requirement is a separate and independent mechanic.
6. Fluid-assisted mining does not imply beneficiation or concentration at the drill. Normal mineral outputs remain canonical Raw Ore, plus any geology-authorized excavation byproducts.
7. The exact ores or profiles requiring water or other fluids, which miner generations support them, fluid consumption rates, fluid-box layouts, and whether any resource uses a mineral-specific reagent are deferred to prototyping.
8. No machine wear, overheating, maintenance, breakdown, or repair-parts system is implied by this decision. Cooling fluids, if used, are an abstract operating requirement unless a later explicit architecture decision establishes maintenance mechanics.
9. Fundamentally different extraction systems such as solution mining, in-situ leaching, brine extraction, dredging, or pumping may later use dedicated fluids, resource categories, or machines through explicit decisions.

---

# Decision 4.8: Mixed-Resource Surface Mining and Output Handling: LOCKED

## Locked direction

1. TI preserves normal vanilla Factorio surface-mining behavior when a mining area contains multiple compatible resource entities. A miner mines everything compatible within its working area according to Factorio's normal mechanics rather than introducing TI-specific targeting or resource-selection controls.
2. Mixed outputs are therefore allowed naturally. If a miner physically covers multiple resource entities or independent neighboring deposits, its output may contain multiple canonical Raw Ore types and any geology-authorized mining byproducts those entities produce.
3. TI does not add manual per-resource targeting, priority selection, or special mixed-mining restrictions to ordinary surface miners. Player sorting and routing of mixed outputs remains a normal Factorio logistics problem.
4. Vanilla mining behavior is the player-facing authority. TI-specific geology operates underneath that behavior and must not alter ordinary Factorio-style miner interaction unless a later explicit decision establishes a fundamentally different extraction mechanic.
5. Mixed mining does not merge geological deposits. Each deposit retains its own stable identity, geological profile, depletion state, trace behavior, Original Surface Reference Yield, associated underground continuation, and underground access node. A shared miner merely extracts from resource entities inside its coverage.
6. Trace-bearing primary-resource sub-entities, if retained after prototyping, participate through their normal entity mining results and require no special miner targeting. Independent deposits likewise remain independent even when one miner overlaps both.
7. The Decision 3 trace-count limit applies per specialized geological profile, not per mining machine. A miner spanning multiple independent deposits may therefore output more total mineral types without violating the geological trace cap.
8. Exact entity-selection order, extraction scheduling, belt/output interactions, and any implementation safeguards are left to vanilla Factorio behavior unless prototyping reveals a TI-specific technical issue that requires intervention.

---


# Decision 4.9: Footprint-Bound Surface Mining Area: LOCKED

## Locked direction

1. TI preserves normal Factorio surface-miner placement and automatic compatible-resource extraction behavior, with one deliberate modification: a surface miner's effective mining area is constrained to the physical footprint of the mining machine itself. Surface miners do not normally extract resource entities beyond the tiles physically occupied by their entity.
2. Resources underneath belts, pipes, power infrastructure, buildings, or other non-mining entities remain part of the finite surface deposit and are not extracted merely because a nearby miner would have reached them under vanilla's extended mining-area behavior.
3. To recover resource entities left beneath logistics or other infrastructure, the player must later relocate the obstructing infrastructure and place a miner physically over the remaining resource area.
4. This footprint-bound model creates progressive mine excavation and gives infrastructure placement a spatial opportunity cost while retaining ordinary Factorio construction freedom. Buildings and logistics entities may still be placed over surface resources.
5. A miner automatically extracts every compatible resource entity beneath its footprint according to the mixed-resource behavior locked in Decision 4.8. Covering multiple resource types does not merge their geological identities, profiles, trace behavior, depletion state, Original Surface Reference Yield, or underground continuations.
6. Miner footprint and effective mining-area dimensions may differ among the Burner, Electric, and Advanced / Heavy Surface Miners, but each machine's mining coverage corresponds directly to its own physical footprint rather than extending beyond it. Exact machine dimensions remain deferred to prototype design.
7. The underground-access-node system must respect the physical-excavation model. Node exposure should be tied to actual excavation of the node's location rather than remote extraction from a larger surrounding mining radius.
8. Exact underground-access-node reveal behavior, collision handling, resource-entity edge cases, and implementation details remain deferred to prototyping.

---

# Decision 4.10: Surface Miner Output Routing and Direct-Insertion Boundaries: LOCKED

## Locked direction

1. TI preserves normal Factorio-style surface-miner item-output and routing behavior. Surface miners use ordinary directional item outputs and may feed belts, chests, or other compatible adjacent inventories according to normal engine behavior.
2. The footprint-bound mining rule established by Decision 4.9 changes only which resource entities the miner can excavate. It does not replace or redesign the normal Factorio item-output interface.
3. Canonical Raw Ore, directly mined trace Raw Ore, and geology-authorized mining-waste outputs share the miner's ordinary output/logistics interface unless later prototyping demonstrates a technical need for another arrangement.
4. Mixed outputs remain a normal player sorting and logistics problem. TI does not automatically separate ore types, trace outputs, or excavation byproducts at the miner.
5. Logistics infrastructure placed over unmined resources receives no special extraction treatment. Ore beneath belts, pipes, power infrastructure, buildings, or other non-mining entities remains unextracted until that infrastructure is relocated and a miner physically occupies the resource area under Decision 4.9.
6. TI does not introduce remote extraction, hidden patch-wide collection, automatic compensation for infrastructure-covered ore, or centralized whole-patch output behavior for ordinary surface miners.
7. Deep Mine output architecture may later require additional throughput or multi-output considerations because of automatic mixed underground extraction, but its exact output ports, belt throughput, loader use, inventory behavior, and logistics integration remain deferred to machine prototyping.
8. Any deviation from vanilla-style surface-miner output routing requires a later explicit technical or gameplay justification.

---

# Decision 4.11: Surface Deposit Depletion, Exhaustion, Automated Miner Deconstruction, and Miner-End-State Behavior: LOCKED

## Locked direction

1. TI preserves vanilla Factorio finite surface-resource depletion behavior by default. A surface miner continues extracting compatible resource entities beneath its footprint while any remain and naturally stops when its footprint contains no remaining mineable resource.
2. Footprint-bound excavation from Decision 4.9 remains authoritative. Players normally relocate miners and mine-site infrastructure as portions of a finite surface deposit are exhausted so previously infrastructure-covered resource entities can be recovered later.
3. Mixed-resource miners continue operating on whatever compatible resource entities remain beneath their footprint as individual resource types or entities are depleted. Direct trace outputs and geology-driven mining waste cease naturally with the resource entities that generate them and do not persist as separate infinite outputs.
4. After construction robotics and roboport-network capability have been unlocked, TI introduces a dedicated later technology that enables automatic reclamation of exhausted surface miners. Exact technology name, science cost, prerequisites, and placement are deferred, but it must be post-construction-robot/roboport progression rather than available from the start.
5. Once that technology has been researched for a force, a supported surface mining drill whose effective mining footprint contains no compatible mineable resource is automatically marked for deconstruction. Normal Factorio construction robots then remove it only when it is within a functioning construction network with the required logistics capacity. TI does not teleport or directly delete the miner.
6. The intended implementation should follow the proven event-driven pattern used by the MIT-licensed Factorio mod Auto Deconstruct: react to resource depletion, identify potentially affected drills, recheck the drill after a short delay, verify that its runtime status is `defines.entity_status.no_minable_resources`, and then use `LuaEntity::order_deconstruction` rather than continuously scanning every drill every tick. The exact TI implementation may be independently reimplemented or may reuse suitably attributed MIT-licensed logic if that is preferable during implementation.
7. A short confirmation/ejection delay is permitted so the drill can finish its final mining/output state and to avoid false-positive deconstruction orders. Exact ticks, queue structure, and output-buffer handling remain implementation details for prototyping.
8. TI's native feature is scoped to marking the exhausted mining machine itself by default. It does not automatically deconstruct connected belts, chests, pipes, beacons, power infrastructure, or the surrounding mine layout unless a later explicit decision adds such behavior.
9. Player-issued deconstruction commands and cancellations should remain authoritative. Exact handling of manual cancellation, blueprint ghosts, replacement miners, and mod-compatibility edge cases is deferred to implementation testing.
10. The predetermined underground-access-node location remains the narrow geology-specific exception to otherwise vanilla surface-depletion behavior. Actual excavation of the surface resource covering that location exposes or permits discovery of the node under Decisions 3.23 and 4.9. Automatic deconstruction of an exhausted miner can naturally help construction robots clear the exhausted machine from that location, but it does not create, move, reroll, or otherwise modify the underground reserve.
11. Automatic miner deconstruction is a logistics/automation convenience unlocked by technology. It does not alter mining speed, resource drain, ore yield, Quality behavior, trace abundance, waste composition, geological profile, Original Surface Reference Yield, or underground reserve generation.
12. Exact supported miner prototypes, technology identifiers, multiplayer/force behavior, deconstruction-network edge cases, performance safeguards, and whether the same system later applies to Deep Mines remain deferred to prototyping or a later explicit decision.

## Reference implementation research

The Factorio mod **Auto Deconstruct** (`softmix/AutoDeconstruct`, MIT license) provides the reference implementation pattern for this feature. Its current Factorio 2.1 implementation listens to `on_resource_depleted`, searches for potentially affected mining drills, rechecks drill state after a short delay, confirms `defines.entity_status.no_minable_resources`, and calls `order_deconstruction` on the exhausted drill. Its periodic queue processor is enabled only while pending deconstruction work exists, avoiding a permanent all-miner polling loop. TI should preserve the core event-driven efficiency while keeping its own default scope narrower than Auto Deconstruct's optional belt/chest/beacon/pipe cleanup features.

---

# Decision 4.12: Deep Mine Depletion, Exhaustion, Automatic Reclamation, and Site Removal: LOCKED

## Locked direction

1. All underground reserve pools associated with an underground-access node are finite and permanently depletable.
2. A Deep Mine continues operating while any extractable authoritative underground reserve remains and stops once all primary, contained-trace, and distinct associated-body reserve pools have been exhausted.
3. Underground exhaustion never regenerates, rerolls, replaces, or expands the original geological reserve.
4. The automatic miner-reclamation technology established by Decision 4.11 also applies to supported exhausted Deep Mines by default. Once the entire authoritative underground reserve has been exhausted, the Deep Mine may be marked for deconstruction using the same normal Factorio construction-robot workflow.
5. TI does not directly delete or teleport the Deep Mine. The machine is reclaimed only through normal deconstruction orders and construction robots when the required network conditions are satisfied.
6. Unlike the earlier proposed persistent depleted-site concept, the underground-access node/site entity does not remain permanently after complete underground exhaustion. Once the reserve is fully depleted, the geological access-site entity is removed or otherwise ceases to exist as an interactable mineable site.
7. Removing the depleted access-site entity is a deliberate gameplay-simplicity rule. It mirrors vanilla Factorio surface-resource depletion, avoids permanently reserving unusable factory space, and prevents exhausted underground sites from becoming long-term map clutter or construction blockers.
8. No permanent depleted underground-site marker is required by default. If later prototyping shows that historical/depletion information is useful, that information must be represented through a non-blocking UI, statistic, map-history, or other explicit later system rather than by retaining the physical access-node entity.
9. Mining waste and mineral output cease with the final authoritative reserve. No residual or infinite post-depletion output remains.
10. Exact sequencing between final output emission, Deep Mine status transition, automatic deconstruction marking, and access-node removal remains deferred to prototyping, but the system must not lose the last valid reserve-backed outputs or allow rebuilding to regenerate geology.

---

# Decision 4.13: Deep Mine Coupling, Occupancy, and Rebuild Semantics: LOCKED

1. Each underground-access node supports at most one active Deep Mine at a time. Multiple Deep Mines may not simultaneously extract from the same authoritative underground reserve system.
2. The underground-access node and the Deep Mine building use the same physical footprint by design. The Deep Mine is placed directly on top of the access node and is position-locked to that node, analogous to vanilla Factorio pumpjack placement on an oil resource.
3. The Deep Mine cannot be shifted, offset, or placed merely adjacent to the node. Placement is valid only when the building is aligned exactly with a compatible exposed underground-access node.
4. The access node acts as the physical and logical anchor for the Deep Mine. Once occupied, that node cannot accept a second Deep Mine until the existing Deep Mine is removed.
5. Removing or deconstructing a Deep Mine before complete reserve exhaustion does not alter, regenerate, reroll, or reset the underground geology. The access node remains because the authoritative reserve still exists.
6. All remaining primary, trace, and associated-body reserve quantities persist exactly across Deep Mine removal and rebuilding. Replacing a Deep Mine on the same still-active node resumes extraction from the same remaining reserve state.
7. Force-based geological survey knowledge belongs to the underground geological site, not to the Deep Mine entity, and therefore survives removal or replacement of the machine.
8. Once the entire authoritative reserve is exhausted, Decision 4.12 applies: the Deep Mine may be automatically reclaimed under the Decision 4.11 technology and the exhausted access-node/site entity is removed rather than remaining as a permanent blocker.
9. Exact prototype implementation for placement validation, node replacement/overlay behavior, collision masks, graphics layering, and entity-state handoff remains deferred to Factorio API prototyping, but the player-facing behavior must remain equivalent to a one-node/one-machine pumpjack-style placement relationship.

---

# Decision 4.14: Underground Access-Node Placement, Collision, and Factory-Space Interaction: LOCKED

1. Underground-access nodes are non-obstructive geological entities rather than ordinary buildings. Their physical visibility is governed by Decision 4.15: they may be visually obscured by overlapping surface ore or visible from the beginning in a donut-style implementation, but they impose no construction, collision, or placement restrictions merely because they exist.
2. As surface excavation removes any surface ore visually obscuring the predetermined node location, the node becomes more apparent/selectable but does not itself prevent ordinary Factorio infrastructure from occupying the same area. Existing belts, pipes, power infrastructure, or buildings are not automatically removed.
3. A Deep Mine may be placed only when its entire required footprint is clear and exactly aligned with the exposed node under the pumpjack-style placement relationship established by Decision 4.13. If infrastructure occupies that footprint, the player must relocate it before Deep Mine construction.
4. An active underground-access node with remaining reserves cannot normally be manually mined, deconstructed, or deleted. Removing the attached Deep Mine reveals the same persistent node and remaining authoritative reserve state.
5. The access node is removed only when its finite underground reserve system is fully exhausted under Decision 4.12.
6. Once revealed, the node may expose geological and survey information appropriate to the force's current Decision 3.24 survey state.
7. Exact collision masks, selection boxes, render layering, overlap behavior, node graphics, and Factorio prototype implementation remain deferred to prototyping, but the player-facing behavior above is locked.

---

# Decision 4.15: Passive Underground Access-Node Revelation: LOCKED

1. Underground-access nodes do not require a separate hidden/discovered visibility state solely for player-facing revelation. Apparent discovery arises naturally from the physical relationship between the node and the surface deposit.
2. Under the preferred overlapped implementation, the predetermined access-node entity already exists at its fixed location beneath or among surface resource entities and is visually obscured by those resource entities until ordinary surface mining removes them.
3. Under the alternative donut-style implementation, the underground-access node may instead be visibly exposed from the beginning in the center of the surface deposit. The final overlapped-versus-donut representation remains deferred to prototyping.
4. TI provides no automatic discovery alert, popup, map notification, forced tutorial message, or other explicit announcement merely because an access node becomes visually apparent. Passive environmental discovery is intentional.
5. A representative intended discovery sequence is: a surface miner depletes the ore beneath its footprint; the Decision 4.11 reclamation system may later mark the exhausted miner for robot deconstruction; once the miner and covering ore are gone, the player may notice the unusual access-node entity and independently investigate the Deep Mining technology required to use it.
6. Physical visibility is separate from geological survey knowledge. Seeing or selecting an access node does not automatically reveal authoritative underground reserve quantities, trace abundance, associated bodies, or other information beyond what Decision 3.24 permits for the force's current survey state.
7. No dedicated force-level discovery event is required solely to manage visibility. Normal entity/map representation is sufficient by default, and TI does not automatically bookmark every node for the player.
8. Exact graphics, render layering, overlap behavior, selection presentation, map representation, and the final choice between overlapped and donut-style surface layouts remain deferred to prototyping.

---

# Decision 4.16: Bootstrap-Only Manual Ore Mining Through Native Resource Categories: LOCKED

1. TI restricts player-character manual mining of geological resource entities to a deliberately small early-game bootstrap set. By default, the manually mineable TI surface-resource set is Cuprite, Cassiterite, Coal, and Limestone/Stone-equivalent starting material. Exact final starter-resource naming remains subject to early-game prototyping, but the intent is that only the first bootstrap resources are hand-mineable.
2. All other TI geological resource entities require an appropriate mining machine and are not manually mineable by the player character. This includes Galena and the broader metallurgy roster even when such resources occur in the starting region. Early progression must therefore avoid requiring non-hand-mineable materials to construct the first automated mining capability.
3. This behavior is implemented natively through Factorio resource categories rather than a runtime cancellation script. `ResourceEntityPrototype.category` assigns each resource to a resource category; `CharacterPrototype.mining_categories` defines which resource categories the player character may manually mine; and `MiningDrillPrototype.resource_categories` independently defines which categories each mining drill may extract.
4. TI should therefore use a character-mineable bootstrap resource category and one or more machine-only resource categories. The normal player character receives only the bootstrap mining category, while the general Burner, Electric, and Advanced/Heavy Surface Miners receive both bootstrap and machine-only solid-resource categories. This prevents character mining without preventing normal drill compatibility.
5. This is not a reversal of Decision 4.6. Resource categories are not used to simulate hardness or to gate ordinary ores between Burner, Electric, and Advanced/Heavy Surface Miners. Ore extraction difficulty remains governed primarily by `minable.mining_time`. Resource categories are used here only to distinguish character-manual extraction capability from machine extraction capability.
6. Any resource that requires water, acid, another reagent, or another specialized fluid-assisted extraction mechanic under Decision 4.7 is machine-only by default and is not manually mineable by the character unless a later explicit exception is justified.
7. Underground-access nodes and internal underground reserve systems are never manually mineable. Deep Mine machinery remains the required interface for underground extraction.
8. The manual-mining restriction applies specifically to geological resource entities. Ordinary Factorio interactions with trees, loose rocks, buildings, and comparable non-resource entities remain unaffected by resource-category mining restrictions.
9. A runtime custom script is not part of the default implementation because the current Factorio prototype API provides the necessary character-versus-drill resource-category separation directly. Script interception remains only a fallback if later compatibility requirements, replacement character prototypes, or engine limitations invalidate the native category approach during prototyping.
10. If TI supports mods that replace or add player-character prototypes, compatibility patches may need to ensure those characters receive the intended TI bootstrap `mining_categories`. Exact cross-mod compatibility policy remains deferred.
11. Whether the player begins with primitive Burner mining equipment or first gathers the bootstrap resources by hand remains deferred to early-game progression prototyping.

---

# Decision 4.17: Finite Mining Productivity with Immutable Geological Quantities: LOCKED

1. Surface and underground geological quantities remain finite authoritative resource quantities. Mining productivity increases useful output obtained while consuming those quantities, but does not alter generated richness, geological profile, original surface resource quantities, Original Surface Reference Yield, underground reserve generation, trace abundance, or associated-body reserve quantities.
2. All actual surface resource entities use normal Factorio-style mining-productivity behavior. This applies equally to primary mineral entities and spatial trace-resource entities generated within specialized deposits. TI does not suppress productivity merely because a surface entity represents a trace mineral.
3. Surface geology determines how many primary and trace resource entities exist, where they occur, their original richness, and their deposit-profile relationships. Mining productivity operates only on extraction output from those already-generated finite entities.
4. TI surface-mining productivity progression is finite/capped rather than infinitely repeatable by default. Exact technology count, percentage per level, science requirements, and final cap remain deferred to balance prototyping.
5. Deep Mines use a separate Deep Mining Productivity progression. Deep Mine productivity operates on extracted output rather than modifying the authoritative internal reserve pools. If one reserve unit is consumed, productivity may produce additional output items from that extraction event without increasing the stored reserve quantity.
6. Deep Mining Productivity is likewise finite/capped by default rather than infinitely repeatable. Exact levels, percentages, and final cap remain deferred. A conceptual very-late-game cap on the order of several-hundred-percent total productivity may be explored during prototyping, but no exact value is locked.
7. Primary underground reserves, contained/disseminated trace reserves, and separate associated-body reserves remain finite regardless of productivity level. Productivity never regenerates, rerolls, or enlarges those stored geological reserves.
8. Machine Quality, modules, and mining technologies may affect throughput, productivity, resource-drain behavior inherited from Factorio, energy use, or other operational characteristics where technically appropriate, but they do not rewrite generated geological state.
9. The immutable Original Surface Reference Yield from Decision 3.28 remains based on the original generated surface deposit before player-side productivity or Quality effects. Bonus mined output never feeds back into underground reserve generation.
10. Mining waste is not automatically multiplied simply because valuable-ore productivity increases. Waste remains geology- and operation-driven unless later prototyping establishes a different explicit rule.
11. TI does not require infinite mining-productivity research to support the late-game or megabase ethos. If the overhaul needs effectively infinite or renewable raw-material supply, it may later introduce separate Space Age-style production routes, planetary resource loops, recycling loops, environmental extraction systems, asteroid resources, lava/chemical conversion analogues, or other explicitly designed renewable sources. Those systems are outside Decision 4.17 and must not silently make finite surface or underground deposits infinite.
12. The exact balance between very large capped finite deposits, finite productivity, underground reserve scaling, and any future renewable-resource routes is deliberately deferred to prototyping. The current architectural goal is finite geology with sufficiently large late-game reserves and bounded productivity, while preserving the option for separate renewable endgame supply systems.

---

# Decision 4.18: Residual Surface Ore and Patch Exhaustion: LOCKED

1. TI retains vanilla-style finite surface-resource entities as the authoritative representation of remaining surface geology. Residual resource entities underneath belts, pipes, buildings, power infrastructure, or other obstructions remain in place until physically mined and are not automatically removed, consolidated, transferred, or rounded away.
2. The player may relocate infrastructure and mine residual portions later, or leave those resources permanently buried beneath the factory. TI does not require complete extraction of a surface deposit.
3. No separate player-facing whole-patch exhaustion state is required. Individual surface miners determine exhaustion from the compatible resource entities beneath their own footprint, and the Decision 4.11 automatic reclamation system operates per exhausted miner rather than waiting for the entire geological deposit to disappear.
4. Original Surface Reference Yield and underground reserve generation remain based on the immutable original generated deposit and are unaffected by abandoned or residual surface ore.
5. Underground-access-node exposure depends on excavation of the node's own physical location rather than complete exhaustion of the entire surface patch.
6. TI does not automatically delete tiny leftover ore amounts, redistribute residual richness, or declare a deposit exhausted merely because most of the patch has been mined.
7. Any future performance-oriented cleanup of extremely small residual resource entities must preserve these gameplay semantics and remains deferred to implementation prototyping.

---

# Decision 4.19: Resource Entity Depletion Granularity and Final-Unit Handling: LOCKED

1. TI retains Factorio's normal per-resource-entity finite depletion model for surface deposits. Each primary, specialized, and spatial trace-resource entity depletes independently according to its own resource amount and is removed when exhausted.
2. TI does not synchronize depletion across an entire geological patch and does not maintain a fixed trace-to-primary percentage throughout the life of a partially mined deposit. Generated trace abundance describes the original geological distribution only.
3. Actual trace-resource entities embedded in a deposit remain ordinary finite resource entities. A Silver resource entity inside a Galena deposit may exhaust before or after neighboring Galena entities according to its own richness and mining history.
4. Factorio's normal final-unit, resource-consumption, and rounding behavior is inherited wherever practical. TI does not add custom redistribution, fractional-preservation, whole-patch balancing, or neighboring-entity transfer merely to force exact inventory-item totals from individual surface resource entities.
5. Mining productivity remains governed by Decision 4.17 and may increase received output from a finite resource entity without changing that entity's original geological richness or Original Surface Reference Yield.
6. Even extremely rich late-game surface deposits remain represented by ordinary Factorio resource entities rather than TI's simulated underground-reserve system. Surface and underground depletion architectures remain intentionally separate.
7. If practical engine limits, prototype numeric limits, save-size concerns, or runtime performance issues emerge at intended late-game richness values, TI should first adjust richness caps or generation parameters during prototyping rather than replacing surface-resource depletion with a scripted reserve simulation by default.
8. Any future optimization that changes how tiny residual resource entities are represented must preserve the locked gameplay semantics from Decisions 4.18 and 4.19.

---

# Decision 4.20: Deep Mine Buffered Mixed-Output Routing and Blockage Semantics: LOCKED

1. The Deep Mine uses a buffered mixed-output architecture modeled conceptually after Factorio: Space Age's Recycler. Primary mineral output, trace/secondary mineral output, associated-body mineral output, and applicable mining-waste output remain part of one general extraction/output system rather than requiring dedicated per-mineral output ports.
2. Each distinct mineral output available from the attached underground deposit receives bounded internal output capacity. The default design target is one item stack of visible internal storage per distinct mineral output. Exact inventory construction and prototype implementation remain deferred.
3. A blocked belt or downstream output does not immediately stop extraction if the corresponding mineral's internal buffer still has capacity. Extracted material may accumulate internally up to its one-stack limit while the Deep Mine continues operating and attempts ordinary output ejection.
4. When the next already-determined extraction result cannot be committed because its compatible internal output stack is full or otherwise unavailable, the Deep Mine pauses. It may not discard that result, consume geological reserve without producing it, reroll another mineral, substitute another reserve body, or skip the blocked result merely to keep operating.
5. The Deep Mine may retain one already-determined pending extraction result while waiting for compatible visible output capacity. This pending state is a transaction boundary, not additional general-purpose storage. No further geological extraction occurs while that pending result remains blocked.
6. Geological reserve is consumed only when the corresponding extraction result is successfully committed to the machine's output state or otherwise reaches the locked transaction point chosen during implementation. Output blockage must never silently destroy finite geology or valuable output.
7. Item quality is part of output identity for buffering purposes. Different qualities that cannot stack together are not merged or rerolled. If a newly determined quality result cannot enter the visible buffer, it may remain as the single pending result and stall further extraction until compatible capacity becomes available.
8. The one-stack-per-mineral rule is a default player-facing storage bound, not an unlimited hidden warehouse. Any invisible/pending state exists only to preserve one completed or already-determined extraction transaction while respecting output capacity.
9. Fractional per-mineral accumulators established by Decision 3.26 remain separate internal geological-accounting state. They do not represent physical inventory and do not consume output slots until sufficient entitlement exists to emit an actual item result.
10. Output blockage cannot be used as an indirect mineral-targeting mechanism. The automatic mixed-extraction rule from Decision 3.25 remains authoritative even when one mineral or quality is temporarily unable to leave the machine.
11. Exact visible slot count, whether storage is filtered or script-managed, prototype composition, graphics, output direction, inserter/belt behavior, waste buffering, stack-output technology interactions, Quality implementation, and pending-result implementation remain deferred to prototyping. The intended behavioral reference is bounded multi-output buffering similar to the Space Age Recycler rather than an unbuffered ordinary mining drill.

---

# Decision 4.21: Deep Mine Power, Excavation Inputs, and Input-Starvation Semantics: LOCKED AS A PROTOTYPING BASELINE

1. The Deep Mine is expected to be an electrically powered industrial extraction machine. Electricity is the default baseline operating requirement, but exact power demand, drain behavior, scaling with throughput, module interaction, and Quality interaction remain fully deferred to implementation prototyping and balance testing.
2. Later Deep Mining progression may use industrial excavation consumables as productive operating inputs. Candidate roles include drilling, blasting, excavation support, cooling, fluids, fuels, or comparable mining work, but no specific consumable family, recipe, ratio, port, or technology requirement is locked at this stage.
3. Decision 4.21 does not establish a generalized maintenance, durability, random-breakdown, repair, or wear simulation. Such systems would require a separate future decision if ever desired.
4. The current baseline assumption is that if a Deep Mine lacks whatever electricity or productive inputs its eventual implementation requires, extraction pauses without changing, rerolling, regenerating, or otherwise consuming the authoritative underground geology. The exact transaction point for power/input consumption relative to reserve debit, pending output, and buffer commitment remains open for prototyping.
5. A small shared set of general excavation inputs is the preferred starting hypothesis over unique consumables for every mineral, while profile- or mineral-specific fluids/reagents remain permissible where later geological, chemical, technological, or gameplay prototyping justifies them. This is a design preference, not a finalized recipe architecture.
6. Internal input buffering is permitted if useful for stable machine operation, but slot count, stack capacity, filtered versus ordinary inventory behavior, fluid capacity, and visible versus hidden buffering remain implementation-open.
7. All concrete defaults under Decision 4.21 are intentionally deferred to the actual development/prototyping phase. During implementation, TI may establish, test, balance, replace, simplify, or omit candidate power/consumable/input-buffer behaviors as needed, provided finite authoritative reserve semantics and the already-locked extraction/output rules are preserved.

---

## Current planning position

**Decision 3, Ore and Mineral Taxonomy, is locked through sub-decision 3.34, with exact specialized-profile refinement deferred to prototyping. Decision 4, Mining Deposit and Extraction Taxonomy, is LOCKED through 4.22 and is complete at the architecture-planning level.**

Do not reopen Decisions 1 through 4.22 unless a genuine dependency conflict is discovered during implementation or later process design.

# Decision 4.22: Factorio-Style RNG for Deep Mine Mixed Extraction: LOCKED

1. Deep Mine mixed extraction uses ordinary Factorio-style probabilistic RNG rather than a custom fairness, pity, anti-streak, or deterministic scheduling system.
2. Whenever an underground extraction event requires selection among multiple currently available mineral outputs, TI performs a weighted random roll using probabilities defined by the generated underground geological state/profile.
3. Random streaks and short-term deviations from the expected distribution are legitimate outcomes. TI does not artificially correct unlikely sequences merely to force short-run output ratios to match nominal probabilities.
4. Finite underground reserve quantities remain authoritative. A mineral can be selected only while its corresponding reserve remains available, and extraction/output cannot create geological material beyond the remaining finite reserve plus any separately authorized mining-productivity bonus under Decision 4.17.
5. When a reserve is permanently exhausted, that mineral/body is removed from subsequent eligible RNG outcomes. Remaining probabilities may be renormalized or otherwise adjusted using the simplest implementation consistent with the generated deposit data.
6. The player cannot manually target, prioritize, disable, reorder, or filter underground reserve selection through the normal Deep Mine interface.
7. Once an RNG result has been determined, Decision 4.20 governs buffering and blockage. A blocked result may not be discarded, replaced, or rerolled into another mineral merely to keep the mine operating.
8. Contained trace or probabilistic coproduct behavior should likewise use ordinary Factorio-style probability mechanics where applicable, while remaining bounded by the authoritative geological/accounting model already established in Decision 3.
9. Exact probability weights, rolls per cycle, reserve-debit timing, Quality interaction details, and implementation mechanics are deferred to geological-profile and Deep Mine prototyping. Factorio's native behavior is the baseline unless TI has a specific gameplay reason to diverge.

---

# Decision 4 Closure Audit: COMPLETE

Decision 4 now contains enough architecture to proceed into implementation prototyping without further planning sub-decisions.

The following are established at the level needed for a Factorio overhaul mod:

- surface-miner progression and physical coverage rules;
- native surface-resource depletion and mixed-resource behavior;
- mining difficulty and optional fluid-assisted extraction boundaries;
- mining outputs and separation from beneficiation;
- mining waste boundaries;
- automatic exhausted-miner reclamation;
- underground reserve finiteness and depletion;
- Deep Mine/access-node placement, occupancy, persistence, and site-removal behavior;
- passive access-node revelation;
- bootstrap-only manual ore mining;
- finite surface and Deep Mining productivity;
- residual surface-resource behavior;
- Deep Mine buffered mixed output;
- provisional Deep Mine operating-input baseline;
- ordinary Factorio-style RNG for mixed underground extraction.

Further questions about exact percentages, stack counts beyond the accepted output-buffer baseline, cycle times, power draw, consumables, reserve multipliers, probability weights, technology bonuses, graphics, prototype classes, collision masks, scripting structure, and detailed UI behavior are implementation/prototyping work unless a genuine architectural conflict appears.

Decision 4 should therefore not continue into 4.23 merely to specify Factorio behavior that can be inherited or tuned during development.

---

# Forward Planning Audit

The remaining numbered decisions should be kept at architecture/process-definition level rather than expanded into implementation micro-decisions:

- **Decision 5: Crusher and Wash Plant Detailed Roles.** Largely established already by Decisions 1 and 2. The remaining useful work is to consolidate the machine/process boundary and identify only genuine exceptions. Exact recipes, speeds, fluids, reagents, waste rates, and mineral-specific numbers belong in prototyping/process design.
- **Decision 6: Stone Brick Smelter, Blast Furnace, Arc Furnace, Foundry Detailed Roles.** Still needs a concise capability-boundary pass because these machines define actual metallurgical progression. Exact per-mineral recipes and numbers remain later work.
- **Decision 7: Molten Metal, Casting, and Remelting Architecture.** Partially established. A concise pass is still useful to define the common molten/casting interface and preserve the locked 0.95x remelting return without over-specifying recipes.
- **Decision 8: Stage 1 Copper/Tin/Bronze Metallurgy.** Architecture direction is now locked, but exact recipe, technology, and tier sequencing is intentionally deferred until the broader early-game/game-progression plan is available.
- **Decision 9: Stage 1 Iron/Steel Metallurgy.** Intentionally deferred because its useful decisions are progression-dependent and should be resolved together with the broader game-progression plan rather than in isolation.
- **Decision 10: Metal Forms and Component Granularity.** Still genuinely useful at architecture level because it controls item proliferation, but exact per-metal forms should remain deferred to recipe/progression design.

The default planning rule from this point forward is: **inherit Factorio behavior unless TI explicitly needs a different gameplay rule; lock only architecture and process boundaries now; defer exact values and implementation behavior to development prototyping.**

---

# Decision 5: Crusher and Wash Plant Detailed Roles: LOCKED

Decision 5 consolidates the already-established Crusher and Wash Plant architecture without adding implementation micro-decisions. These machines define the universal ore-preparation and beneficiation boundary before metallurgical extraction.

## 5.1 Ore Crusher role

- TI uses exactly **two physical Ore Crusher generations** by default.
- The Crusher owns the universal **Raw Ore -> Crushed Ore** preparation stage.
- The locked baseline relationship remains **2 Raw Ore -> 3 Crushed Ore**, representing the established 1.50x local recovery relationship.
- Crushing represents mechanical size reduction and preparation, not chemical beneficiation or metallurgical extraction.
- Crusher processing may generate appropriate mechanical/gangue waste such as Rock Tailings or Rock Gravel where the recipe warrants it.
- Further progression should primarily come from technology-gated recipes, throughput, efficiency, and process capability rather than a long Mk1-Mk6 machine chain.

## 5.2 Wash Plant / Ore Concentrator role

- TI uses exactly **one physical Wash Plant / Ore Concentrator machine** by default.
- The Wash Plant owns the universal **Crushed Ore -> Concentrate** beneficiation stage.
- The locked baseline relationship remains **2 Crushed Ore -> 3 Concentrate**, preserving the established cumulative **2.25x prepared-material recovery** after crushing and concentration.
- Basic beneficiation may use water or reused process water.
- Advanced mineral-specific beneficiation may use reagents or other processing aids when justified by the mineral/process design.
- The Wash Plant may improve separation, primary recovery where explicitly designed, trace recovery, fluid/reagent efficiency, throughput, and waste behavior.
- Recovered trace minerals use their normal canonical concentrate items. No dedicated `trace-*` concentrate item family is created.
- Wash Plant processing may generate beneficiation waste such as Rock Sand, Rock Clay, tailings, sludge, or separated gangue as appropriate.

## 5.3 Machine/process boundary

The locked default process boundary is:

```text
Raw Ore
-> Ore Crusher
-> Crushed Ore
-> Wash Plant / Ore Concentrator
-> Concentrate
-> Metallurgical Extraction
```

- Surface miners and Deep Mines remain extraction-only and do not perform crushing or beneficiation.
- The Crusher does not perform concentration or metallurgical extraction.
- The Wash Plant does not perform smelting, reduction, refining, or metal casting.
- There is no universal post-concentrate beneficiation state. Any exceptional specialized processing step must be justified by the specific mineral/process later.

## 5.4 Explicit prototyping deferrals

Decision 5 intentionally does **not** lock exact implementation values for:

- recipe durations;
- crafting speeds;
- machine power draw;
- exact water consumption;
- exact reagent identities or quantities;
- exact waste/byproduct quantities;
- exact trace-recovery percentages;
- per-mineral advanced beneficiation recipes;
- machine footprints;
- module slots and module behavior;
- graphics, animations, sounds, and UI details;
- technology costs and numerical upgrade values.

These are development/prototyping and balance decisions unless a later architecture conflict requires reopening Decision 5.

---

# Decision 6: Stone Brick Smelter, Blast Furnace, Arc Furnace, and Foundry Detailed Roles: LOCKED

Decision 6 defines two related metallurgical progression paths without requiring every mineral to pass through every machine. Exact recipe assignments remain mineral-specific and are deferred to process prototyping.

## 6.1 Solid-metal / ingot progression

```text
Stone Brick Smelter
→ Arc Furnace
```

### Stone Brick Smelter

- primitive starting metallurgical extraction machine;
- powered by solid combustible fuel;
- supports simple early metallurgy from appropriate raw or prepared feedstocks;
- primarily produces solid metal / ingot outputs;
- intentionally inefficient compared with later industrial metallurgy;
- does not serve as a general molten-metal machine.

### Arc Furnace

- advanced electric successor to the Stone Brick Smelter path;
- advanced high-temperature metallurgy powered by electricity;
- primarily produces ingots or other solid-metal outputs rather than serving as a general molten-metal producer;
- supports minerals/processes that benefit from advanced electric high-temperature extraction;
- exact mineral-specific capability advantages remain process-specific rather than a universal recovery multiplier.

## 6.2 Molten-metal progression

```text
Blast Furnace
→ Foundry
```

### Blast Furnace

- first general molten-metal extraction tier and major industrial transition;
- powered by solid combustible fuel by default;
- produces molten metal for downstream casting and later alloying;
- may require mineral/process-specific fluxes or additives;
- has **limited alloy-production capability** for selected early/simple alloy systems;
- does not automatically receive a universal material-productivity or recovery bonus.

### Foundry

- advanced electric molten-metal extraction, refining, and alloying tier;
- functions as the advanced successor to the Blast Furnace path;
- supports the broadest molten-metallurgy capability;
- advanced alloys may require combining appropriate molten-metal feeds produced by Blast Furnaces, Foundries, or other explicitly supported molten sources;
- may use fluxes, reagents, gases, additives, or specialized intermediates where a specific process warrants them;
- may improve recovery, separation, throughput, or byproduct handling only where the corresponding recipe/process explicitly provides that advantage;
- remains an extraction/refining/alloying machine rather than the downstream Metal Caster.

## 6.3 Alloy capability boundary

- Blast Furnace alloying is intentionally limited to selected early/simple alloy systems.
- Advanced alloy systems belong primarily to the Foundry and may require multiple molten-metal feeds.
- Exact classification of individual TI alloys as Blast-Furnace-capable or Foundry-required is deferred to the later alloy/process-design and prototyping phase.
- No assumption is made that every alloy must use molten processing if a later process design justifies another route.

## 6.4 Common recovery and byproduct rule

- Machine advancement does not create a universal recovery multiplier. Decision 2 remains authoritative: final recovery depends on prepared-material recovery and the specific extraction recipe/process.
- Slag and other thermal/metallurgical byproducts remain recipe/process-specific.
- Fluxes, reagents, gases, and additives remain process-specific rather than universal machine taxes.

## 6.5 Explicit prototyping deferrals

Decision 6 intentionally does **not** lock:

- exact per-mineral machine assignments beyond the progression boundaries above;
- exact early/simple versus advanced alloy lists;
- exact recipes and ratios;
- power or fuel consumption;
- crafting speeds and throughput;
- machine footprints;
- module behavior;
- flux/reagent/gas quantities;
- slag/byproduct quantities;
- exact technology costs or numerical bonuses;
- graphics, animations, sounds, or implementation details.

These remain development/prototyping decisions unless a genuine architectural conflict requires reopening Decision 6.

---

# Decision 7: Molten Metal, Casting, and Remelting Architecture: LOCKED

Decision 7 establishes the shared solid-metal and molten-metal routing architecture without over-specifying implementation details.

## 7.1 Solid-metal route

```text
Prepared Ore
→ Stone Brick Smelter / Arc Furnace
→ Solid Metal / Ingot
```

- The solid route does not require molten-metal logistics or the Metal Caster.
- Stone Brick Smelter and Arc Furnace roles remain governed by Decision 6.
- Exact per-mineral recipes remain deferred to process prototyping.

## 7.2 Molten-metal route

```text
Prepared Ore
→ Blast Furnace / Foundry
→ Molten Metal
→ Metal Caster
→ Solid Metal Products
```

- Blast Furnace is the first general molten-metal production tier.
- Foundry is the advanced molten-metal extraction/refining/alloying tier.
- Metal Caster is downstream from extraction and alloying.

## 7.3 Alloy routing

Selected early/simple alloys may be produced through the Blast Furnace molten route where appropriate.

Advanced alloys belong primarily to the Foundry and may require combining multiple molten-metal feeds:

```text
Molten Metal A ─┐
                ├→ Foundry → Molten Advanced Alloy
Molten Metal B ─┘
                         ↓
                    Metal Caster
```

Exact classification of individual alloys and exact feed ratios remain deferred to later process design and prototyping.

## 7.4 Metal Caster role

Use one general physical Metal Caster by default.

The Metal Caster receives eligible molten pure metals or molten alloys and converts them into supported solid forms. Candidate outputs may include ingots, plates, gears, structural forms, or other products where direct casting is appropriate. Exact castable product lists remain recipe-specific and deferred to prototyping.

## 7.5 Remelting progression

Baseline remelting remains subtractive:

```text
Eligible Solid Metal / Ingot / Metal Part
→ Remelting
→ 0.95× Molten-Metal Equivalent
```

- **0.95× recovery is the baseline remelting return.**
- Technological progression may unlock advanced remelting recipes using fluxes, protective process aids, or other justified metallurgy inputs to reduce oxidation and related molten-metal losses.
- Advanced remelting recovery may improve progressively up to a **hard cap of 0.99× molten-metal equivalent (99% recovery)**.
- Remelting never reaches 100% material recovery by default.
- Remelting may produce slag or other appropriate thermal byproducts.
- Exact fluxes, intermediate recovery steps, recipe ratios, machine ownership, and byproduct quantities remain deferred to prototyping.

This progression supports a meaningful logistics tradeoff between direct local casting and transporting compact solid-metal forms for later remelting. Separate bulk shipping-crate mechanics are not part of Decision 7 and remain governed by the independent logistics/idea-backlog design process.

## 7.6 Explicit prototyping deferrals

Decision 7 intentionally does **not** lock:

- exact molten-fluid quantities;
- exact temperatures;
- pipe throughput;
- casting speeds;
- coolant or process-fluid usage;
- exact caster recipes;
- exact remeltable component lists;
- direct-casting productivity;
- exact molten-alloy ratios;
- exact flux identities and consumption;
- exact remelting recovery steps between 95% and 99%;
- machine statistics, graphics, sounds, or implementation details.

These remain development/prototyping decisions unless a genuine architectural conflict requires reopening Decision 7.

---

# Decision 8: Stage 1 Copper, Tin, and Bronze Metallurgy: LOCKED AS OPEN DIRECTION

Decision 8 deliberately locks only the metallurgy architecture that is known now. Exact technology ordering, recipe progression, tier timing, unlock costs, and broader early-game balance are deferred until the wider Thelian Industries game-progression plan has been researched and designed. Metallurgy must reference that future progression work rather than attempting to invent the surrounding game in isolation.

## 8.1 Early Copper and Tin

- Copper and Tin remain early foundational metals sourced from Cuprite and Cassiterite.
- The Stone Brick Smelter remains the early solid-metal smelting machine.
- The Blast Furnace is **technology-gated and is not part of the initial early-game Bronze requirement**.
- Exact first recipes, unlock order, required preparation stage, yields, and timing remain progression/prototyping decisions.

## 8.2 Early Bronze feed-mix architecture

Early Bronze does not require molten-metal alloying or the Blast Furnace. Instead, Copper-bearing and Tin-bearing feedstocks are combined in the required matching alloy ratio into a dedicated **Bronze Feed Mix** intermediate, which is then smelted in the Stone Brick Smelter to produce Bronze.

The intended architecture supports state-matched feed mixes, for example:

```text
Copper Raw Ore + Tin Raw Ore
→ Bronze Feed Mix (Raw)
→ Stone Brick Smelter
→ Bronze

Copper Crushed Ore + Tin Crushed Ore
→ Bronze Feed Mix (Crushed)
→ Stone Brick Smelter
→ Bronze

Copper Concentrate + Tin Concentrate
→ Bronze Feed Mix (Concentrate)
→ Stone Brick Smelter
→ Bronze
```

The exact item names, Copper-to-Tin ratios, crafting method, yields, whether every preparation state receives a dedicated feed-mix recipe, and which Bronze output form is produced are intentionally deferred. The locked concept is the **pre-mixed Copper/Tin solid feedstock -> Stone Brick Smelter -> Bronze** route.

## 8.3 Later Bronze processing

Later technology may introduce molten Bronze or alternative Bronze-production routes through the Blast Furnace/Foundry architecture established in Decisions 6 and 7. Those later routes are not required to resolve Decision 8 and are deferred to recipe/progression prototyping.

## 8.4 Progression dependency and implementation rule

No additional metallurgy decision should attempt to finalize exact technology, recipe, tier, or early-game progression sequencing before the metallurgy content foundation exists in-game and the broader progression work is ready to be tested. Questions such as when Crusher/Wash Plant stages become mandatory, when Blast Furnace/Arc Furnace/Foundry technologies unlock, exact metallurgy recipe chains, and the timing of Iron/Steel progression must be revisited in context during the later progression/balance phase.

This does **not** block foundational implementation. Copper, Tin, Bronze Feed Mixes, machines, recipes, and supporting technologies may be implemented with simple placeholder values and 1:1-style ratios where mechanically coherent so the complete metallurgy path can be exercised in-game. Those placeholder values are not final balance decisions.

Decision 8 therefore provides a reference point for later progression work rather than a complete progression specification.

---

# Metallurgy Planning Pause Point

**Decision 9: Stage 1 Iron/Steel Metallurgy remains deferred at the detailed progression level.** Its foundational content may later be implemented with simple placeholder recipes and technologies once the required entities/items/processes are ready, while exact recipe ratios, unlock timing, costs, yields, and pacing remain part of the later progression/balance pass.

**Decision 10: Metal Forms and Component Granularity remains pending at architecture level.** It can be resumed when metallurgy planning returns, without requiring progression-specific assignments first.

The current metallurgy plan is therefore sufficient to pause here without inventing additional progression detail. Future implementation should follow the metallurgy implementation and progression staging principle defined near the beginning of this document.

---

*Internal checkpoint updated through Decision 8. Decisions 1-8 are complete at their current architecture scope; Decision 9 is progression-deferred; Decision 10 remains pending. Foundational metallurgy implementation may use provisional 1:1-style recipes and baseline values until later in-game progression and balance passes.*
