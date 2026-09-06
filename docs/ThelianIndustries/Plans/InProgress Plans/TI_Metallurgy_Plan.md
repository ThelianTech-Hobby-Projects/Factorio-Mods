# Thelian Industries Metallurgy Plan

**Checkpoint status:** Refreshed through Decision 3.34  
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

---

# Running Decision Register

| # | Decision | Status |
|---|---|---|
| 1 | Tiered Mining, Ore Refinement, and Metallurgical Recovery Architecture | **LOCKED** |
| 2 | Recovery/Yield Semantics and Process Upgrade Rules | **LOCKED** |
| 3 | Ore and Mineral Taxonomy | **LOCKED through 3.34; exact profile refinement deferred to prototyping** |
| 4 | Mining Deposit and Extraction Taxonomy | Partially resolved by Decision 1 and Decision 3 |
| 5 | Crusher and Wash Plant Detailed Roles | Partially resolved |
| 6 | Stone Brick Smelter, Blast Furnace, Arc Furnace, Foundry Detailed Roles | Partially resolved |
| 7 | Molten Metal, Casting, and Remelting Architecture | Partially resolved |
| 8 | Stage 1 Copper/Tin/Bronze Metallurgy | Pending |
| 9 | Stage 1 Iron/Steel Metallurgy | Pending |
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

- major industrial transition;
- high-temperature metallurgy;
- solid combustible fuel;
- progression toward molten-metal processing;
- advanced recipes may require fluxes/additives;
- no universal material-productivity bonus.

#### Tier 2: Arc Furnace

- advanced electric high-temperature metallurgy;
- first general extraction tier powered by electricity rather than solid combustible fuel;
- exact recipe/capability advantages remain mineral-specific.

#### Tier 3: Foundry

- highest general metallurgy tier;
- electric;
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

The Blast Furnace introduces molten metallurgy without an automatic productivity multiplier.

Concept:

```text
Supported Feedstock
+ Required Fuel
+ Recipe-Specific Flux/Additives
→ Molten Metal
+ Byproducts
```

A simple process may be approximately 1:1 material-equivalent.

Higher or lower recovery is permitted when the mineral-specific process justifies it.

The same governing rule applies to Arc Furnace and Foundry recipes.

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

Remelting is a separate subtractive process:

```text
Refined Metal / Ingot / Eligible Part
→ Remelting
→ 0.95× Molten-Metal Equivalent
```

**0.95× return, 5% loss is locked.**

Fluxes/additives do not inherently restore the lost refined metal.

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

# Continuation Context

## Current planning position

**Decision 3, Ore and Mineral Taxonomy, is locked through sub-decision 3.34, with exact specialized-profile refinement deferred to prototyping.**

The next planning step is:

# Decision 4.1: Surface Mining Machine Classes and Progression Roles

Begin the Mining Deposit and Extraction Taxonomy from the already locked surface-deposit, underground-continuation, Deep Mine, and geological-profile architecture. Define the player-facing classes and progression roles of surface mining machines without reopening the geological generation rules unless a genuine dependency conflict is discovered.

Do not reopen Decisions 1 through 3.34 unless a genuine dependency conflict is discovered.

### Particularly important established invariants

1. One canonical primary mineral family per metal by default.
2. Raw → Crushed → Concentrate is the default conventional path, with mineral-specific alternatives permitted.
3. Trace minerals use canonical raw/concentrate item families, not `trace-*` item variants.
4. Deposit-specific geology belongs to resource/deposit profiles, not hidden primary-item provenance.
5. One pure/default resource prototype is the map-gen/autoplace base and universal fallback.
6. Runtime geological logic may replace that base patch with a curated specialized variant.
7. One entire normal deposit uses one geological profile.
8. The profile is selected by a deterministic weighted roll scoped to planet + canonical primary mineral + stable deposit identity; natural terrain/biome is not an input.
9. Curated planet/mineral profiles define scientifically plausible trace composition, associated bodies, and profile weights without changing the already-selected primary mineral identity.
10. Failed or unresolved conversion falls back to the pure/default deposit.
11. Each primary mineral supports 1 pure/default profile plus up to 5 specialized profiles, maximum 6 total.
12. Profile resolution is terrain-independent: build the planet/mineral-specific outcome pool containing Pure/Default plus configured specialized profiles, then deterministically select one coherent profile for the whole deposit.
13. If no specialized profiles are configured, the deposit remains Pure/Default; any resolution/conversion failure also results in Pure/Default.
14. Natural terrain tiles, biome families, and TI geology classes are not inputs to normal deposit-profile selection.
15. Real-world geology remains the research authority for authoring curated profiles and mineral associations, without requiring spatial terrain/geology-class mappings.
16. Deposit profile identity is resolved once and remains stable; save/load, chunk revisitation, runtime order, and later terrain replacement do not reroll it.
17. Unknown or modded terrain has no special effect on normal profile selection because terrain is not an input; Pure/Default remains the universal technical fallback.
18. Planetary primary-resource allocation is locked by Decision 3.33: Nauvis = Coal/Hematite/Cuprite/Cassiterite/Galena/Bauxite; Luna = Cinnabar/Argentite/Uraninite/Ice Fields; Vulcanus = Pyrolusite/Cobaltite/Chromite; Fulgora = Zircon/Pentlandite; Gleba = Sphalerite/Limestone-Calcite/Gold-Bearing Quartz; Pyrosauria = Carnallite/Phosphorite; Tectara = Wolframite/Ilmenite; Voltaris = Monazite/Sperrylite. Petalite and Quartzite remain canonical but unassigned as primary planetary deposits.
19. A specialized deposit profile may expose one primary trace mineral plus at most one substantially rarer secondary trace mineral.
20. Pure/Default deposits have no geological trace coproducts.
21. Trace-bearing specialized deposits receive deterministic deposit-level trace-abundance variation, so deposits of the same profile may be trace-poor or trace-rich within later-defined bounds.
22. The exact Factorio representation of trace abundance remains implementation-open; candidate approaches include abundance-adjusted mining outputs or profile-governed mixed trace resource entities within the patch.
23. Canonical primary ore-item identity remains unchanged unless a later explicit decision intentionally revisits Decisions 3.6/3.7.
24. Three trace-abundance representation candidates remain valid for prototyping: uniform probabilistic specialized entities (A), physically distributed ordinary trace-resource entities (B), and trace-bearing primary-resource sub-entities (C).
25. Option C is the preferred design direction, but final implementation is deferred to comparative in-game prototyping.
26. Dynamic per-entity tooltip reporting of generated trace abundance is a preferred usability experiment, subject to API/performance validation; static Factoriopedia text remains profile-level documentation.
27. Each trace mineral in a generated deposit receives a discrete abundance grade whose later-defined numeric range produces a deposit-specific exact value.
28. A separate multiplicative trace-scaling/reduction layer converts the base grade value into final trace abundance, keeping trace outputs appropriately small.
29. Generated abundance values are stable per deposit and may be persisted in Factorio runtime storage if the selected implementation requires explicit state.
30. Exact grade taxonomy, ranges, multipliers, distributions, and yield formulas remain deferred for later balance/prototyping work.
31. Trace minerals share a common qualitative abundance-grade vocabulary for player readability, but grade availability, selection weights, numeric ranges, and scaling mathematics are profile/trace-specific.
32. Trace abundance generation is two-stage: select a grade using profile-specific weights, then generate the exact deposit value inside that grade's profile/trace-specific range.
33. Underground continuation inherits the surface deposit's geological profile identity but independently generates underground trace grades and exact abundance values within that profile's permitted ranges.
34. The inherited profile constrains which trace/secondary minerals may appear as optional underground nodes.
35. Surface and underground trace representations must remain balance-coherent and must not double-count the same geological trace reserve across coproduct, separate-node, and beneficiation representations.
36. Contained/disseminated trace mineralization uses one conceptual recovery budget shared between direct mining coproduct and beneficiation recovery.
37. Separate associated underground nodes represent distinct finite geological bodies with their own reserves, not duplicate recovery channels for the contained trace budget.
38. A trace mineral may be contained-only, separate-body-only, both, or neither depending on later geological research.
39. Each paired underground continuation normally spawns one surface underground-vein/mine-access node rather than a tiled underground resource patch.
40. The player places the Deep Mine building over or directly coupled to that spawned access node to extract the simulated underground reserve.
41. Decision 1 underground Nodes 1–5 are logical reserve-generation components aggregated into that node's internal simulated reserve; same-primary nodes may combine while distinct associated bodies may remain separate internal pools.
42. Underground reserve components are finite, inherit the surface geological profile, independently generate underground abundance, and exist without a separate playable underground Factorio surface.
43. Logical underground Nodes 1–5 are normalized into finite internal reserve pools after generation; same-primary nodes may aggregate while distinct associated bodies remain separate pools.
44. Contained trace potential remains attached to its host reserve body and becomes accessible only as host material is extracted.
45. Deep Mine extraction is concurrent across active reserve pools, allowing output composition to change as individual associated reserves deplete.
46. Underground reserve geology and access location are fixed at map generation; surface depletion reveals access but never creates or rerolls the underground reserve.
47. Preferred exposure uses an overlapping underground-access entity obscured by surface resource entities, with delayed spawn and central/donut placement retained as technical fallbacks.
48. Physical discovery is driven by surface excavation, while Deep Mining progression controls exploitation rather than geological existence.
49. Deep Mine placement requires sufficient clearance of the access footprint; exact clearance and overlap mechanics remain subject to prototyping.
50. Unsurveyed underground deposits reveal existence and primary mineral but no reserve estimate or trace information by default.
51. Advanced Ground-Penetrating Radar combines ordinary radar functionality with underground geological surveying; research enables capability, while scanning/rescanning updates force knowledge.
52. GPR analysis uses an open progression of 3–5 total survey states, moving from unknown to broad estimate, narrower estimates, and ultimately highest-precision/exact knowledge.
53. Survey knowledge is force-based, persistent, stable between inspections, and decrements coherently as mining depletes the authoritative reserve.
54. Survey progression changes knowledge only; it never changes or rerolls the underlying geology or reserve state.
55. Deep Mine extraction is fully automatic mixed extraction; the player does not target or prioritize individual underground reserve bodies.
56. Deep Mining progression should primarily improve extraction throughput/cycle speed rather than extraction targeting, while preserving finite-reserve semantics.
57. The Deep Mine is intended to require electricity plus later-defined industrial excavation consumables such as explosives, fuels, fluids, or other mining inputs; exact prototype implementation remains deferred.
58. Deep Mine outputs are reserve-backed: each cycle derives extraction entitlement from finite internal reserve pools before emitting items.
59. Fractional per-mineral accumulators may retain sub-item quantities so low-abundance traces remain recoverable without rounding distortion.
60. Bounded randomness may vary when whole items appear, but must never create material beyond the authoritative geological reserve.
61. Contributions from multiple internal sources of the same mineral merge into one canonical output item while retaining separate depletion accounting internally.
62. Underground reserve generation is hierarchical by logical-node role: Node 1 is the guaranteed main continuation, while Nodes 2–5 are subordinate optional bodies.
63. Optional same-primary nodes contribute smaller additive primary reserves; optional associated-mineral nodes use secondary/trace reserve rules and remain distinct finite pools.
64. Later optional nodes generally have progressively less favorable occurrence and reserve-size characteristics; exact ranges and formulas remain deferred.
65. Underground reserve generation uses an immutable Original Surface Reference Yield representing the complete generated surface deposit's geological quantity before player interaction or productivity.
66. Cross-chunk deposits must not be permanently finalized from a partial generated patch; underground quantity state may remain pending until the complete surface reference can be established.
67. The underground access node may exist before quantity finalization, while stable geological identity and access-location data remain fixed.
68. Surface Reference Yield rounding/normalization is explicitly deferred until Factorio generation integration and reserve mathematics are prototyped.
69. Distance-based resource richness/size scaling and any TI hard cap are separate future world-generation decisions, not part of 3.28.
70. Surface-resource richness uses bounded distance progression: richness may increase with distance but reaches a hard maximum beyond which distance gives no further richness increase.
71. Preferred implementation uses a shared default richness curve with per-mineral overrides where justified; current Factorio autoplace richness expressions make this technically viable in principle.
72. If per-mineral overrides prove impractical in prototyping, TI falls back to one universal bounded linear/near-linear richness curve with a hard cap.
73. Frequency, patch size, and richness remain separate world-generation dimensions; exact values and formulas remain deferred.
74. Surface patch-size progression follows vanilla Factorio-style distance scaling by default, but TI imposes a hard upper bound so distance-derived patch-size growth eventually stops.
75. Decision 3.29's default richness direction is clarified as vanilla-style distance progression bounded by a TI hard maximum rather than an unrelated custom progression curve.
76. The vanilla-style richness and patch-size progression should be preserved up to the configured TI bounding point; exact cap distance, maximum values, and implementation formulas are deferred to in-game prototyping.
77. Combined bounded patch-size and richness scaling must be tested against Original Surface Reference Yield because both dimensions feed the total geological quantity used by underground reserve generation.
78. Surface-resource frequency follows vanilla-style statistical spot-frequency behavior and does not systematically increase with distance from spawn.
79. Each canonical primary mineral may define its own base deposit frequency, subject to the player's normal map-generation frequency control; exact values remain deferred.
80. Geological profile variants and paired underground continuations do not independently increase canonical surface-deposit frequency.
81. Starting-area resource placement remains a separate balance layer from normal world deposit frequency.
82. Frequency, patch size, and richness now have separate locked directions: frequency remains non-distance-scaling, while size and richness use bounded vanilla-style distance scaling.
83. TI uses one global canonical mineral/resource vocabulary while planet allocation determines which primary mineral families are active on each world.
84. Specialized geological profiles, trace associations, and associated underground mineralization are planet-scoped and designed around each planet's assigned primary mineral roster plus real-world mineral-association research; normal profile selection is not terrain-gated.
85. Industrial minerals and legitimate multi-element mineral feeds are part of the same geological taxonomy even when downstream ownership belongs partly to chemistry, construction, glass, fertilizers, or another system.
86. Gold-Bearing Quartz is the canonical primary Gold ore family, superseding Placer Gold in that role.
87. Placer Gold is retained only as a possible later secondary/alluvial Gold deposit type; its implementation remains deferred.
88. A distinct Gold Nugget or other specialized trace-Gold item is not established by 3.32 and would require an explicit future revision to the canonical trace-item rules.
89. A stable deposit identity drives the deterministic weighted profile roll; terrain/biome classification and anchor tiles are not inputs to normal profile selection.
90. Exact implementation mechanics require Factorio API prototyping before being treated as technically locked.
91. Decision 3.34 locks the formula-complete geology report as the current scientific association baseline and the full current-material candidate association pool for later profile prototyping.
92. The current default association scope uses existing TI material/resource families; scientifically valid non-roster elements do not become gameplay materials without a separate explicit decision.
93. Vanadium is explicitly excluded from the current TI material set and is not part of the Uraninite candidate profile pool.
94. A deposit profile may represent lattice-contained elements, disseminated/accessory minerals, associated mineral phases, distinct associated underground bodies, or processing/mineralogy differences; these occurrence modes are not interchangeable.
95. The full Decision 3.34 pool is a selection pool, not a commitment to ship every candidate profile. Exact per-planet/per-mineral selections remain deferred to prototyping.
96. Specialized profiles may legitimately contain no reward trace and instead alter processing difficulty, purity, product ratios, reserve composition, or associated-body structure.
97. Distinct associated mineral bodies remain separate finite reserve pools where geology and gameplay justify that representation.
98. Controlled fictional or fantasy-level mineral associations may be added later when explicitly justified by planetary setting, lore, or gameplay, and should be documented as fictional adaptations rather than ordinary real-world geology.
99. Any future new element/material family still requires a separate explicit design decision even if it appears in the geological research.
---

*End of checkpoint through Decision 3.34.*
