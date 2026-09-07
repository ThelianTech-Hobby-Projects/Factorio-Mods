# Mining and Resource Gating

**Status: Locked mining architecture / prototyping pending**

## Current status

The owner-designated [Thelian Industries Metallurgy Plan](../Plans/InProgress%20Plans/TI_Metallurgy_Plan.md) locks mining, resource, and reserve architecture through Decisions 1, 3, and 4. It does not represent implemented behavior; no TI resource, mining drill, Deep Mine, access-node, or map-generation prototype is currently verified.

After manual mining, TI uses three general surface-miner generations—Burner, Electric, and Advanced / Heavy—and one separate Deep Mine for exposed underground-access nodes. Surface and Deep Mining normally output canonical Raw Ore plus possible unrefined excavation waste; crushing and concentration remain downstream. Ordinary solid-resource difficulty uses `minable.mining_time`, not obsolete hardness/mining-power or resource-category gating between surface-miner tiers.

Manual mining is bootstrap-only. Cuprite, Cassiterite, Coal, and Limestone/stone-equivalent are the default hand-mineable resource categories; other ordinary geological resources are machine-only by default. Exact category IDs, starting-area placement, prototype behavior, and broader early progression remain deferred.

Surface deposits and paired underground reserve pools are finite. Normal surface profile selection is deterministic, planet/mineral scoped, terrain-independent, and safely falls back to Pure/Default. Deep Mine extraction is automatic mixed extraction from finite reserve pools: players cannot target, reroll, or discard individual minerals to force selection. Surveying, access-node representation, reserve mathematics, buffers, power/consumables, map-generation behavior, and final balance remain prototyping work.

The old idea-backlog mining material remains candidate context only where it is not covered by the locked plan.

Resource locations, yield semantics, and processing remain owned by the production-system documents. This page summarizes only the locked gameplay-mechanics boundary and links to the detailed decision record.

## Research boundary

The [Technical Feasibility Research](../06_Research/01_Technical_Feasibility_Research.md) page records the supplied audit's validation baseline for the mining proposal. It is research context only, not a project decision or an implementation claim.

## Related documents

- [Idea Backlog](../Plans/Idea_Backlog.md)
- [Technical Feasibility Research](../06_Research/01_Technical_Feasibility_Research.md)
- [Game Progression](../02_Progression_and_Worlds/00_Game_Progression.md)
- [Metallurgy Processing Chains](../03_Production_Systems/01_Metallurgy_Processing_Chains.md)
- [Metallurgy Process and Yield Rules](../03_Production_Systems/02_Metallurgy_Process_and_Yield_Rules.md)
- [Thelian Industries Metallurgy Plan](../Plans/InProgress%20Plans/TI_Metallurgy_Plan.md)
