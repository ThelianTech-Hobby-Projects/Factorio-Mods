# Thelian Industries — Metallurgy Locked Decisions & Continuation Context

**Purpose:** Durable checkpoint for the Thelian Industries Factorio: Space Age metallurgy design workflow.  
**Update rule:** Add every newly locked decision to this file, update the Running Decision Register, and provide a fresh downloadable copy.  
**Scope:** Metallurgy, mining, ore processing, metal extraction, casting, alloys, metallurgical components, and directly dependent interfaces.

---

## Working Rules

- Preserve existing decisions and concepts. Do not redesign from scratch.
- Speculative ideas are not canonical until explicitly owner-approved.
- When a decision is explicitly approved, mark it **LOCKED** and preserve it unless the owner explicitly reopens it.
- Exact balance constants may remain deferred when the architecture is locked.
- Use one authoritative owner per concern, not one exclusive owner per shared item.
- Distinguish real-world process inspiration from the Factorio abstraction and from the current Thelian Industries decision.
- Planetary resource allocations remain open unless explicitly locked.
- Existing newer metallurgy process/yield documentation is authoritative over conflicting older yield values.
- Avoid unnecessary machine-tier proliferation. Prefer technology-gated process/recipe improvements unless new hardware represents a meaningful industrial capability change.

---

# Running Decision Register

| # | Decision | Status |
|---|---|---|
| **1** | Tiered Mining, Ore Refinement, and Metallurgical Recovery Architecture | **LOCKED** |
| **2** | Recovery/Yield Semantics and Process Upgrade Rules | **LOCKED** |
| **3** | Ore and Mineral Taxonomy | **NEXT** |
| 4 | Mining Deposit and Extraction Taxonomy | Partially resolved by Decision 1 |
| 5 | Crusher and Wash Plant Detailed Roles | Partially resolved by Decision 1 |
| 6 | Smelter, Blast Furnace, Arc Furnace, and Foundry Detailed Roles | Partially resolved by Decision 1 |
| 7 | Molten Metal, Casting, and Remelting Architecture | Partially resolved by Decision 1 |
| 8 | Stage 1 Copper/Tin/Bronze Metallurgy | Pending |
| 9 | Stage 1 Iron/Steel Metallurgy | Pending |
| 10 | Metal Forms and Component Granularity | Pending |

---

# Decision 1: Tiered Mining, Ore Refinement, and Metallurgical Recovery Architecture

> **DECISION 1: LOCKED**

## Core Principle

Thelian Industries metallurgy is based on progressively increasing the useful material and industrial value obtainable from **finite geological resources**.

Early technology is deliberately inefficient. Progression improves geological access, resource recovery, beneficiation, metallurgical processing, throughput, trace-resource recovery, and manufacturing efficiency.

**Governing gameplay rule:** Better technology makes a finite resource base stretch progressively farther.

---

## Surface Mining

Surface mineral patches form the initial finite resource layer.

Early progression begins approximately as:

```text
Manual Character Mining
→ Burner Surface Mining
→ Electric / Improved Surface Mining
→ Later Surface-Mining Technology
```

Surface extraction serves as the approximately **1.0× geological extraction reference**. Exact patch richness remains a later balance concern.

---

## Surface-to-Underground Discovery

Complete depletion of a qualifying surface mineral patch may reveal that the exposed deposit continues underground.

The underground-continuation probability is **mineral-specific**. There is no universal discovery percentage.

Conceptually:

```text
Surface Patch Completely Depleted
        ↓
Mineral-Specific Continuation Roll
        ↓
No Continuation
        OR
Underground Continuation Discovered
```

Exact continuation probabilities will be established during individual mineral design and balancing.

### Technical implementation note

Factorio provides `on_resource_depleted` for individual depleted resource entities rather than a native whole-connected-patch-depleted event. Thelian Industries will therefore need its own patch tracking/detection logic on top of resource depletion events to determine when an entire qualifying surface patch has been exhausted before rolling underground discovery.

This is an implementation concern, not a change to the gameplay architecture.

---

## Underground Node Generation

If underground continuation succeeds:

1. **Node 1 is guaranteed** and contains the primary mineral associated with the depleted surface patch.
2. Up to **four additional potential nodes** may be generated, for a maximum of **five underground nodes**.
3. Nodes 2–5 use progressively weighted, mineral-specific rolls.
4. An optional node may resolve to:
   - the primary mineral,
   - a geologically plausible associated trace/secondary mineral,
   - nothing.

Illustrative weights discussed during planning, such as 60% primary / 15% trace / 25% nothing for an optional node, are **not locked balance values**.

The exact node-generation weights are determined per mineral later.

---

## Underground Reserve Classes

Underground deposits are finite reserve/richness-style extraction nodes accessed through dedicated underground mining infrastructure.

They **fully deplete to zero** and do not retain vanilla oil's permanent minimum production floor.

### Primary underground nodes

Primary underground nodes represent larger subsurface bodies of the surface mineral.

Current architectural range:

**approximately 1.5×–3.0× the original surface-reference yield**

The exact multiplier and weighting are mineral-specific. The earlier ~2.5× concept remains a useful middle-of-range planning reference, not a universal constant.

### Trace underground nodes

Trace/secondary mineral nodes use a separate reserve class because they represent associated mineral bodies rather than the main deposit.

Current architectural range:

**approximately 0.25×–1.5× the original depleted surface patch's yield**

The upper end represents an unusually substantial associated deposit rather than the normal expectation.

Trace-node appearance probability, reserve range/weighting, and geological association are all mineral-specific.

### Three independent underground variables

Do not conflate:

1. **Continuation chance:** whether an underground deposit is discovered.
2. **Node composition weight:** whether an optional node is primary, trace, or nothing.
3. **Reserve multiplier:** how large a successfully generated node is.

---

## Ore Recovery Progression

Conventional metallurgy uses the following primary recovery ladder:

```text
Raw Ore
→ Crushed Ore
→ Concentrated / Beneficiated Ore
```

Earlier processing remains valid where appropriate. The player invests technology, machinery, energy, fluids, and logistics to recover more useful metal from the same finite geological resource.

### Existing authoritative yield baseline

The newer metallurgy process/yield documentation remains authoritative:

| Process | Current multiplier |
|---|---:|
| Raw Ore → Smelter | **1.0×** |
| Crushed Ore → Smelter | **1.5×** |
| Concentrate → Smelter | **3.0×** |
| Raw Ore → Foundry | **1.5×** |
| Crushed Ore → Foundry | **3.0×** |
| Concentrate → Foundry | **4.5×** |
| Remelt Ingots/Scrap → Molten | **0.95×** |

The 5% remelting loss remains the existing universal slag/remelting baseline.

These values are carried forward rather than reopened by Decision 1.

---

## Trace Minerals: Two Distinct Mechanics

Trace resources can appear through two separate systems.

### Geological trace discovery

```text
Surface Deposit Depleted
→ Underground Continuation
→ Optional Discrete Trace-Mineral Node
```

This represents a separate associated geological body.

### Metallurgical trace recovery

```text
Primary Ore
→ Crushing / Advanced Concentration
→ Recoverable Trace-Mineral Material or Concentrate
```

This represents secondary minerals contained within the primary processed material.

The two systems may overlap for a particular mineral association when realistic geology and gameplay justify it, but they remain mechanically distinct.

Exact trace associations will be decided per mineral.

---

# Machine and Process Progression

## Governing Rule

The metallurgy system distinguishes:

1. **Resource recovery progression**
2. **Process/recipe efficiency progression**
3. **Physical hardware capability progression**
4. **Manufacturing productivity progression**

Not every technological improvement should increase material yield.

A new physical machine should normally exist only when it represents a meaningful mechanical, energy, or metallurgical capability change. Improvements to an existing process should preferentially use technology-gated recipes.

---

## Ore Crusher

The Ore Crusher has **two physical hardware generations**.

### Crusher Tier/Generation 1
An early industrial crusher built from progression-appropriate materials such as iron/steel mechanical components.

### Crusher Tier/Generation 2
A genuinely improved later crusher using more advanced materials and engineering. Candidate materials discussed include stainless steel, titanium, cobalt-bearing materials, or another later metallurgy combination. Final construction materials are deferred.

Further crusher progression occurs primarily through **technology-gated recipes**, not Crusher III/IV/V/VI entities.

Recipe upgrades may improve processing throughput, batch size, processing time, byproduct handling, or other process characteristics without automatically adding another material-recovery multiplier.

---

## Wash Plant / Ore Concentrator

The Wash Plant uses **one physical machine entity**.

Its progression occurs through technology-gated concentration recipes.

### Basic concentration

Early recipes use relatively simple water-based or recycled-process-water beneficiation and primarily recover the **main target mineral concentrate**.

Conceptually:

```text
Crushed Primary Ore
+ Basic Wash Fluid
→ Wash Plant
→ Primary Ore Concentrate
+ Waste / Byproducts
```

At this stage, trace minerals may remain unrecovered or enter the waste/byproduct abstraction.

### Advanced chemical concentration

Later research unlocks chemically assisted concentration in the same Wash Plant.

Possible future reagents include sulfuric acid plus water, other acids, alkaline solutions, treated process water, or mineral-specific chemical reagents.

The exact reagent is determined by the individual mineral/process later. Sulfuric acid is an example, not a universal requirement.

Advanced concentration may improve:

- processing throughput,
- batch efficiency,
- fluid/reagent efficiency,
- separation capability,
- intentional trace-mineral recovery.

### Trace concentrate technology gating

Basic Wash Plant recipes primarily produce the main mineral concentrate.

Advanced technologies may unlock recipes that produce:

```text
Primary Mineral Concentrate
+
Potential Trace-Mineral Concentrate(s)
```

The exact trace minerals, output chances/ratios, reagents, and recipe behavior are mineral-specific and deferred.

This creates an explicit metallurgy ↔ chemistry progression interface.

---

# Four-Tier Smelting / Metal-Extraction Machinery

The general metal-extraction chain contains **four distinct physical metallurgical machine tiers**.

The tier labels are **documentation/progression classifications only**. Implementation prototypes, items, entities, and player-facing localization use the machines' unique names rather than generic `tier-1`, `tier-2`, etc. identifiers.

| Documentation tier | Machine | General role |
|---|---|---|
| **Tier 0** | **Stone Brick Smelter** | Primitive early-game direct smelting |
| **Tier 1** | **Blast Furnace** | Industrial high-temperature metallurgy and molten-metal introduction |
| **Tier 2** | **Arc Furnace** | Advanced electrically driven high-temperature metallurgy |
| **Tier 3** | **Foundry** | Full advanced metallurgical processing / highest general extraction tier |

## Tier 0 — Stone Brick Smelter

The Stone Brick Smelter is the primitive bootstrap metallurgy machine available at the earliest technology level.

Conceptually:

```text
Supported Raw / Prepared Ore
→ Stone Brick Smelter
→ Metal Ingots
```

It provides the player's initial direct ore-to-metal route.

## Tier 1 — Blast Furnace

The Blast Furnace is the first major industrial thermal-metallurgy transition and introduces the intended progression toward molten-metal processing.

Conceptually:

```text
Supported Metallurgical Feedstock
→ Blast Furnace
→ Molten Metal
```

Exact fuel, flux, metal eligibility, and recipes are deferred.

## Tier 2 — Arc Furnace

The Arc Furnace is the advanced electrically driven high-temperature metallurgy tier following the Blast Furnace.

Its precise benefits, eligible materials, energy requirements, remelting/refining roles, throughput, and recipe responsibilities will be resolved during the detailed machine-role decision.

## Tier 3 — Foundry

The Foundry is the highest currently planned general metallurgy extraction/process tier.

Its exact capabilities relative to the Arc Furnace, including how the existing authoritative Foundry yield multipliers are implemented, will be resolved later.

These machines form a process progression:

```text
Stone Brick Smelter
→ Blast Furnace
→ Arc Furnace
→ Foundry
```

They are distinct industrial technologies, not repetitive speed-only Mk upgrades.

---

# Metal Casting

The Metal Caster is a **separate downstream machine**, not a fifth smelting/extraction tier.

There is **one physical Metal Caster entity**.

Conceptually:

```text
Molten Metal
→ Metal Caster
→ Supported Cast Product
```

Potential products include ingots, plates, gears, and other appropriate directly cast forms/components. The exact cast-product list is deferred to recipe/component design.

## Advanced / Cooled Casting

There will **not** be a separate physical Cooled Metal Caster.

Later research instead unlocks advanced/cooled casting recipes in the same Metal Caster.

Conceptually:

```text
Molten Metal
+ Cooling Fluid
→ Metal Caster
→ Cast Product at Higher Throughput
```

The cooling fluid may be water, treated water, or another appropriate coolant depending on later chemistry/fluid design.

Cooled casting is primarily a **throughput improvement**, not automatically another material-yield multiplier.

Direct-casting productivity will later be balanced in conjunction with molten-metal quantities and the established ore-recovery system, with a general intent to remain broadly comparable in gameplay scale to Factorio: Space Age rather than creating runaway productivity.

---

# Universal Backbone With Metal-Specific Metallurgy

The common conceptual backbone is:

```text
Geological Resource
→ Extraction
→ Raw Material
→ Crushing / Preparation
→ Concentration / Beneficiation
→ Metallurgical Extraction
→ Metal
→ Metal Forms / Components
```

This is a gameplay progression framework, not a requirement for identical chemistry.

Individual metals may introduce realistic or semi-realistic:

- roasting,
- reduction,
- flux requirements,
- electrolysis,
- chemical refining,
- specialized intermediates,
- coproducts/byproducts,
- trace recovery,
- planetary processing.

Real-world metallurgy informs the differences. A difference should be implemented when it creates meaningful gameplay rather than for realism alone.

---

# Locked Overall Design Rule

> **Technological progression should allow the player to extract more value from finite mineral resources, gain access to larger but still finite geological reserves, improve the throughput and sophistication of existing industrial processes, unlock genuinely new metallurgical technologies where appropriate, recover useful secondary resources, and manufacture increasingly advanced products without unnecessary machine-tier proliferation or uncontrolled multiplicative yield inflation.**

---

# Decision 1 — Explicitly Deferred Details

The following are downstream decisions, not unresolved portions of Decision 1:

- Exact underground-continuation percentage for each mineral.
- Exact Node 2–5 spawn weights for each mineral.
- Exact primary/trace/nothing distributions.
- Exact primary underground reserve distribution within the ~1.5×–3.0× architecture.
- Exact trace underground reserve distribution within the ~0.25×–1.5× architecture.
- Exact underground-node placement algorithm.
- Exact trace-mineral associations.
- Exact Crusher II construction materials.
- Exact crusher recipe-upgrade sequence.
- Exact Wash Plant reagents and chemistry per mineral.
- Exact Wash Plant trace-recovery recipes.
- Detailed responsibilities of Stone Brick Smelter vs Blast Furnace vs Arc Furnace vs Foundry.
- Exact metals eligible for each extraction machine.
- Exact Metal Caster products.
- Exact advanced/cooled casting fluid.
- Exact casting productivity values.
- Remaining machine families and hardware generations.
- Final recipe timings, energy use, and balance constants.

---


---

# Decision 1 — Locked Refinement: Smelting Machine Energy and Process Inputs

> **DECISION 1 REFINEMENT: LOCKED**

The four smelting/metallurgical extraction tiers also differ by their fundamental energy/process model.

| Documentation tier | Machine | Primary energy / process model |
|---|---|---|
| **Tier 0** | **Stone Brick Smelter** | Consumes solid combustible fuel such as wood, coal, coke, or other valid burnable fuel items |
| **Tier 1** | **Blast Furnace** | Continues to consume solid combustible fuel; advanced recipes may additionally require fluxes or other metallurgical additives |
| **Tier 2** | **Arc Furnace** | First general smelting tier whose heat/process energy is provided by electricity rather than solid combustible fuel |
| **Tier 3** | **Foundry** | Uses electricity and may additionally require fluxes, reagents, or other recipe-specific additives to improve recovery, throughput, separation, or other advanced process capability |

## Clarifications

- The exact fuels, fluxes, additives, and mineral-specific recipe requirements are deferred to later recipe and mineral-chain decisions.
- The Foundry's additional item requirement is not yet locked to one universal purpose. Depending on the recipe, additives may improve recovery, processing speed, separation, or another metallurgical property.
- Blast-furnace and later recipes may require fluxes such as limestone, lime, calcium-bearing materials, sand/silica, or other suitable materials where the specific metal/process justifies them.
- Flux requirements are not universal. Some metals/processes may not require an added flux.
- The previously locked remelting rule remains distinct: remelting ingots, scrap, or metal parts into molten metal retains the 0.95× material-return rule unless explicitly reopened by the owner.



---

# Decision 1 — Locked Refinement: Underground Deposit Generation Timing

> **DECISION 1 REFINEMENT: LOCKED DIRECTION, IMPLEMENTATION METHOD OPEN**

The previously locked underground-deposit architecture remains in force, but the exact **time and representation of underground-node generation** is intentionally reopened at the implementation level.

## Generalized direction

Underground continuations do **not** need to be created only after the last entity in a surface ore patch is depleted.

A preferred implementation direction is now to consider generating the underground continuation **at map/resource-patch generation time**, paired spatially with the corresponding surface deposit. This may simplify runtime logic and avoid having to detect the exact moment when the final resource entity belonging to a connected surface patch is mined.

The gameplay architecture remains the same:
- qualifying deposits may have mineral-specific underground continuations;
- primary and trace underground nodes retain their locked reserve classes and weighted generation rules;
- underground deposits remain finite;
- dedicated underground-mining infrastructure is required to exploit underground reserves.

## Candidate representations to investigate

The implementation may use one of several spatial representations, subject to technical feasibility testing:

1. **Layered/overlapping generation**
   - Generate underground-deposit entities together with the surface patch.
   - Configure collision, selection, and mining behavior so ordinary surface drills interact only with surface resources while the dedicated underground mine/shaft accesses the subsurface resource.
   - Surface ore graphics should remain visually dominant where overlap occurs.

2. **Donut/ring surface patch**
   - Generate the visible surface ore as a ring or donut.
   - Reserve the center area for the corresponding underground mine node(s) and future underground shaft placement.
   - This avoids direct resource-entity overlap and may provide a clear visual and placement affordance.

3. **Another map-generation-time paired representation**
   - A later technical design may use another deterministic generation method if it preserves the same gameplay behavior more cleanly.

## Locked versus open

**Locked:**
- Prefer evaluating map-generation-time pairing as the primary implementation direction rather than assuming depletion-time spawning is required.
- Surface and underground deposits should be spatially and geologically related.
- Surface mining equipment must not accidentally mine underground-only resources.
- Underground reserves must remain accessible only through the intended underground mining mechanic.

**Open for technical feasibility testing:**
- Overlapping entities versus donut/ring patches versus another representation.
- Exact collision masks and resource categories.
- Exact selection/rendering behavior.
- Exact map-generation noise/autoplace implementation.
- Whether underground nodes are literal resource entities at map generation or another entity/data representation that later exposes a mineable reserve.
- Final visual treatment and shaft-placement rules.

This refinement supersedes any implication in Decision 1 that underground nodes must be physically spawned only after complete surface-patch depletion. Surface depletion may still be used as a gameplay unlock/reveal condition if desirable, even when the underlying underground reserve is pre-generated.

---

# Decision 2: Recovery/Yield Semantics and Process Upgrade Rules

> **DECISION 2: LOCKED**

## Universal Ore-Preparation States

The standard universal beneficiation chain contains three material states:

```text
Raw Ore
→ Ore Crusher
→ Crushed Ore
→ Wash Plant
→ Concentrate
→ Metallurgical Extraction
```

- Raw Ore is the Crusher input.
- Crushed Ore is the Crusher output and Wash Plant input.
- Concentrate is the Wash Plant output and the final universal beneficiation state.
- Raw Ore does not enter the Wash Plant.
- Concentrate is not universally re-concentrated through another Wash Plant stage.
- Metal-specific processing may later add specialized intermediates where justified, but those are exceptions rather than additional universal beneficiation tiers.

## Universal Baseline Recovery Mathematics

### Crushing

Baseline conceptual recipe relationship:

```text
2 Raw Ore
→ 3 Crushed Ore
```

Local recovery multiplier:

`3 / 2 = 1.50×`

Therefore Crushed Ore represents **1.50× cumulative recoverable value** relative to the original Raw Ore.

### Concentration

Baseline conceptual recipe relationship:

```text
2 Crushed Ore
→ 3 Concentrate
```

Local recovery multiplier:

`3 / 2 = 1.50×`

Because crushing has already established a 1.50× state:

`1.50 × 1.50 = 2.25×`

Therefore Concentrate represents **2.25× cumulative recoverable value** relative to the original Raw Ore.

### Locked universal preparation baseline

| Material state | Local conversion | Cumulative recovery from original Raw Ore |
|---|---:|---:|
| Raw Ore | 1.00× | **1.00×** |
| Crushed Ore | 1.50× | **1.50×** |
| Concentrate | 1.50× from Crushed | **2.25×** |

This **supersedes** the previous universal preparation assumption in which Concentrate was treated as a 3.0× cumulative recovery state.

The `2 Raw → 3 Crushed` and `2 Crushed → 3 Concentrate` relationships are the current conceptual baseline. Exact mineral recipe quantities may later be expressed using equivalent integer ratios or mineral-specific recipes where appropriate.

## Extraction Machines Do Not Automatically Multiply Yield

Later furnace/extraction tiers do not receive universal material-productivity bonuses merely because the machine is more advanced.

The prepared feedstock establishes its baseline recoverable value. The **specific metallurgical recipe/process** determines how effectively that material is converted into metal.

The general accounting relationship is:

`Final Recovery = Prepared-Material Recovery × Recipe Extraction Factor`

A baseline full-conversion extraction process may use an extraction factor of `1.00×`.

Therefore, absent a recipe-specific improvement or loss:

| Route | Baseline cumulative final recovery |
|---|---:|
| Raw Ore → extraction | **1.00×** |
| Raw → Crushed → extraction | **1.50×** |
| Raw → Crushed → Concentrate → extraction | **2.25×** |

The earlier assumption that the Blast Furnace universally provides a +50% output bonus, and that advanced furnace routes universally produce 1.5× / 3.0× / 4.5× output, is **superseded**.

## Molten-Metal Extraction Framework

The Blast Furnace introduces the progression from direct ingot smelting toward molten-metal production, but molten-metal recipes do not receive an automatic universal productivity multiplier.

Conceptually:

```text
Supported Metallurgical Feedstock
+ Required Fuel
+ Recipe-Specific Flux/Additives, if applicable
→ Molten Metal
+ Byproducts
```

A simple process may convert prepared material to molten metal at an approximately 1:1 material-equivalent relationship.

Higher or lower extraction recovery is allowed where the actual mineral-specific recipe justifies it.

The Arc Furnace and Foundry follow the same governing rule: machine tier alone does not create additional metal. Their value comes from capability, energy model, throughput, recipe access, process chemistry, module/productivity possibilities, and other deliberately designed improvements.

## Fluxes, Reagents, and Recipe-Specific Recovery

Fluxes, reagents, and other metallurgical additives may be required by individual recipes.

Depending on the mineral/process, an additive may:

- enable proper extraction;
- reduce an otherwise lossy extraction process;
- improve primary-metal recovery;
- increase processing throughput;
- improve separation;
- alter slag or other byproducts;
- enable another mineral-specific metallurgical capability.

Flux/additive requirements are **not universal**. Exact materials and quantities are deferred to mineral-by-mineral recipe design.

Advanced extraction may exceed the universal preparation baseline only when an explicitly designed process recovers additional usable metal. Advanced machine tier by itself is not sufficient justification.

## Slag and Metal Loss

Slag production does not automatically represent an equivalent loss of primary metal.

Slag may abstract:

- gangue;
- impurities;
- oxides;
- silicates;
- ash;
- spent flux;
- other unwanted compounds.

A recipe may therefore achieve its intended primary-metal recovery while also producing slag.

Actual primary-metal losses must be explicitly represented by the recipe/process rather than inferred solely from the amount of slag produced.

## Remelting

Remelting remains a separate, genuinely subtractive process.

```text
Refined Metal / Ingot / Eligible Metal Part
→ Remelting
→ 0.95× Molten-Metal Equivalent
```

The existing **0.95× return / 5% loss** remains locked.

Flux or another additive may be required by a later remelting recipe, but it does not inherently create more refined metal than was present in the input. Unless explicitly reopened, the 0.95× material-return rule remains the governing remelting baseline.

## Throughput Is Independent of Recovery

Machine crafting speed and recipe execution time modify **throughput**, not the material conversion ratio.

Example conceptual recipe:

```text
2 Raw Ore
→ 3 Crushed Ore
Recipe time: 2 seconds
```

With a machine crafting speed of `1.0`, the effective duration is 2 seconds.

With a machine crafting speed of `2.0`, the effective duration is 1 second.

Both machines still perform:

```text
2 Raw Ore
→ 3 Crushed Ore
```

and therefore preserve the same **1.50× recovery relationship**.

General relationship:

`Effective Recipe Time = Base Recipe Time / Machine Crafting Speed`

Exact crafting speeds, recipe durations, batch sizes, and machine statistics are deferred to later recipe/balance design.

## Technology-Gated Process Improvements

Technology progression may improve recipes without automatically increasing primary material recovery.

Possible improvement dimensions include:

- crafting speed / processing time;
- batch size;
- energy efficiency;
- fluid efficiency;
- reagent efficiency;
- waste/byproduct handling;
- trace-mineral separation;
- primary recovery where specifically justified;
- new processing capability.

A technology is not assumed to increase yield merely because it is later or more advanced.

## Wash Plant Recipe Progression

The Wash Plant specifically processes:

```text
Crushed Ore
→ Concentrate
```

The standard/basic conceptual relationship is:

```text
2 Crushed Ore
→ 3 Concentrate
```

Advanced Wash Plant recipes remain **Crushed Ore → Concentrate** processes. They do not introduce a universal post-Concentrate beneficiation state.

Mineral-specific advanced recipes may improve one or more of:

- throughput;
- fluid/reagent efficiency;
- primary concentrate recovery;
- trace-mineral recovery;
- waste/byproduct behavior;
- separation capability.

An advanced recipe may therefore exceed the normal 2.25× cumulative primary recovery for a particular mineral if that process is explicitly designed to recover additional material. Such bonuses are mineral/recipe-specific rather than universal.

## Trace-Mineral Recovery

Advanced beneficiation may recover secondary minerals that earlier processing discarded or left in waste.

Default conceptual behavior:

```text
Basic:
Crushed Ore
→ Primary Concentrate
+ Waste containing unrecovered trace material

Advanced:
Crushed Ore
+ Appropriate Reagent(s)
→ Primary Concentrate
+ Recoverable Trace Concentrate(s)
+ Changed/Reduced Waste
```

Trace recovery does not automatically reduce established primary recovery unless a specific process is deliberately designed as a tradeoff.

Trace-mineral associations are directional and geology-driven. If Mineral B can plausibly occur as a recoverable trace constituent of Ore A, that does not imply that Mineral A must occur in Ore B.

Exact associations require later geological research and mineral-by-mineral design.

## Locked Recovery Table

| Route / process state | Universal baseline |
|---|---:|
| Raw Ore state | **1.00× cumulative recovery** |
| Crushed Ore state | **1.50× cumulative recovery** |
| Concentrate state | **2.25× cumulative recovery** |
| Baseline extraction of Raw Ore | **1.00× final recovery** |
| Baseline extraction after Crushing | **1.50× final recovery** |
| Baseline extraction after Crushing + Concentration | **2.25× final recovery** |
| Mineral-specific advanced beneficiation/extraction | **Variable only when explicitly designed** |
| Refined metal / eligible metal part → Molten remelting | **0.95× return** |

## Explicit Deferrals

Decision 2 does not lock:

- exact mineral-specific Crusher recipes;
- exact advanced Wash Plant recipes;
- exact recovery bonuses from specialized reagents;
- exact trace-mineral associations;
- exact flux materials or quantities;
- exact slag quantities;
- exact Blast Furnace recipes;
- exact Arc Furnace recipes;
- exact Foundry recipes;
- exact machine crafting speeds;
- exact recipe crafting times;
- exact batch sizes;
- exact energy consumption;
- exact module/productivity behavior;
- exact direct-casting productivity;
- final balance values beyond the universal baseline relationships established above.

---

# Running Continuation

## Next Decision

### Decision 3: Ore and Mineral Taxonomy

Decision 3 should establish the canonical distinction between geological resources, ores/minerals, processed ore states, concentrates, trace/secondary minerals, and related naming/data conventions. It should preserve the Raw → Crushed → Concentrate architecture locked in Decisions 1 and 2 while determining how individual mineral families map onto that universal structure.

**Checkpoint state:** Decisions 1 and 2 are locked. Decision 3 is next.

