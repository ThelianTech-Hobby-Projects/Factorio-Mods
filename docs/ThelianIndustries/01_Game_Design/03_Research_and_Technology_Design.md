# Research and Technology Design

**Status: Locked research-system foundation / detailed tree deferred**

The [Research System Foundation Plan](../Plans/InProgress%20Plans/TI_Research_System_Foundation_Plan.md) is the owner-designated source of truth for the locked architecture and rulesets of research and progression. This page summarizes those rules for navigation and cross-system use. It does not define the final technology tree, exact prerequisites, research media recipes/costs, planet/stage placements, unlock order, or implementation architecture.

## Locked foundation

Research represents development, proof, and application of scientific, engineering, and industrial knowledge by the player's force. It changes knowledge, capability, or technological state; it is not merely spending abstract currency for recipe unlocks.

- Interaction-driven progression and formal research are both first-class throughout the game. Industrial contribution, exploration/discovery, and experimentation/measurement are also approved mechanisms; scanning/information gathering, planetary/environment-dependent progression, and system-state transitions are specialized options when justified.
- A technology effect must have a credible, documented relationship to the knowledge or progression state it represents. Research may unlock or improve processes, reveal or enable information, automate behavior, change force-level state, or retire explicitly transitional methods.
- Prefer process, recipe, knowledge, efficiency, recovery, throughput, or capability advancement over machine tiers that add only statistics. Keep knowledge and physical machine capability conceptually separate, but use separate gates only when each represents a meaningful step.
- Previously unlocked processes generally remain available. Retirement is exceptional and requires an explicit transitional purpose, a viable replacement, an understandable destination, and softlock review. Transitional spur research can provide a temporary bootstrap without becoming a permanent mainline prerequisite.
- Research states what the force can learn; observation, scanning, or analysis may determine what it has learned about a particular object or place. Immediate effects and capabilities applied through later use are both valid; no universal post-research activation step is required.
- Scientific work industrializes over time, from direct investigation and documented findings through automated experimentation, computation, and digital data. Maturity is domain-relative: a new planet or discipline may require investigation while established domains remain automated.
- Planetary research should emerge from local materials, conditions, phenomena, industry, and problems. Access opens a domain but does not equal mastery. Cross-planet research combines disciplines that a technology genuinely needs rather than applying a universal pack checklist.
- Stage 5 remains the main-victory path. Stage 6 research continues after victory through deeper system integration, experimental development, and selectively justified long-term research. Finite technology is the default; extended-finite, repeatable, and true-infinite classes must each be justified, and no specific technology is classified here.
- Players may research ahead within an open frontier. Major readiness requirements belong at meaningful new frontiers; research capacity does not open inaccessible planets or scientific domains by itself.
- Bootstrap viability and prevention of mandatory progression softlocks are development and QA concerns assessed case by case, not a required progression mechanic for every subsystem.
- The approved mechanism set is closed by default. A new research architecture or mechanism requires a justified, documented, owner-approved amendment through the ADR-style process described in the foundation plan.

## Authority and later technology-tree work

The eventual unified **Research, Technology, and Game Progression Plan** owns technology placement, prerequisites, research-media requirements, milestones, stages/frontiers, planetary and cross-system integration, costs, timing, and the complete progression graph. *(Reserved for a link to that unified plan when it is generated.)* Subsystem plans own their materials, items, processes, capabilities, industrial dependencies, and intrinsic research requirements; they do not independently finalize the global tree.

Later planning should wait until the underlying production systems, materials, machines, recipes, planets, and logistics are sufficiently mature, then integrate modular stage/domain plans into one coherent graph. Until that work exists, exact names, IDs, prerequisites, topology, costs, times, quantities, media count/names, lab and research-machine tiers, planetary experiments, postgame formulas, implementation details, and stage placement remain deferred.

## Locked metallurgy boundary

Metallurgy foundation work may use simple placeholder technologies and coherent placeholder recipes to exercise the complete content chain. Final unlock order, science requirements, costs, pacing, and numerical bonuses remain deferred. The Blast Furnace is technology-gated and is not required for initial Bronze; this is a constraint, not a technology-tree specification. See [Thelian Industries Metallurgy Plan](../Plans/InProgress%20Plans/TI_Metallurgy_Plan.md).

The metallurgy plan's other research-related locks—including its information-capability versus acquired-knowledge boundary for GPR and its requirement that scanning applies researched capability to a specific deposit—remain subsystem constraints to integrate into the future global tree. Geological research informs profile plausibility without changing underlying geology or finite reserves.

## Related planning note

`Game-Progression-Tree.md` contains Stage 1 context describing early research as more interaction-based than science-pack-based, followed by a research desk, science data packets, and advanced or infinite technology. Treat this as historical Stage 1 source wording under the newer foundation: interaction and formal research are first-class throughout the game, while the exact tree, desk design/unlock, data-packet system, and technology classifications remain deferred. See [Game Progression](../02_Progression_and_Worlds/00_Game_Progression.md), [Victory and Postgame](../02_Progression_and_Worlds/03_Victory_and_Postgame.md), and the [Idea Backlog](../Plans/Idea_Backlog.md) for stage context and non-canonical legacy research concepts.

The foundation locks **Science Papers** as the primitive documented-knowledge medium, followed by intermediate paper-to-digital migration and advanced native digital research. Exact Science Paper recipes, research desk/lab/computer designs, digital-medium name, and production remain deferred. Paper/Wood Pulp material production is a cross-system interface: see [Chemistry and Oil Processing](../03_Production_Systems/03_Chemistry_and_Oil_Processing.md) and *(reserved for a Forestry owner-document link when that system is planned)*.

## Locked electronics progression boundary

The [Electronics decision record](../Plans/InProgress%20Plans/TI_Electronics_Plan.md) establishes the following mechanics without defining the complete technology tree:

- selected general-purpose machinery provides crude, expensive pre-Tier-1 recipes for the canonical outputs needed to build the first Electronic Workshop;
- an electronics-industrialization craft milestone may retire designated crude routes;
- each lower electronics-machine tier receives only narrow, expensive prototype recipes for the minimum intermediates needed to bootstrap the next tier; and
- native higher-tier production supplies the intended capability and economics while retaining appropriate lower-tier recipes.

Recipe retirement requires force-level runtime availability control and reconciliation after relevant progression or configuration changes; no declarative recipe-lock effect is assumed. Exact thresholds, prerequisites, costs, unlock order, warnings, retired-recipe lists, and stage placement remain deferred. The future Research Desk and its exact Paper production relationship remain unplanned infrastructure details. Quantum manufacturing and its technology chain remain deferred to future endgame planning, with a dedicated cross-document link reserved when that plan is generated.

## Provenance

- Primary placeholder source: `Mods/ThelianIndustries/plans/Tech-Tree.md` (empty)
- Related context: `Mods/ThelianIndustries/plans/Game-Progression-Tree.md`
- Electronics interface source: [Thelian Industries Electronics Plan](../Plans/InProgress%20Plans/TI_Electronics_Plan.md)
