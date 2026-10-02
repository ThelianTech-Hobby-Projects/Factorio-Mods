# Technical Feasibility Research

**Status: Research Needed**

## Purpose and provenance

This page records a bounded, audit-derived research baseline. It does not approve a gameplay system, assert that Thelian Industries implements any mechanic, or replace targeted validation.

Source reference: `docs/Codex_files/thelian_industries_planning_audit_2026-09-04.md`, Section 10. The audit explicitly identifies its feasibility check as not being a design decision. The related concepts remain non-canonical in the [Idea Backlog](../Plans/Idea_Backlog.md). *(Reserved for a live Markdown link when that absent reference artifact is restored or generated in this checkout.)*

The governing research architecture is locked in the [Research System Foundation](../Plans/InProgress%20Plans/TI_Research_System_Foundation_Plan.md). Feasibility findings may inform implementation choices or a documented amendment; they do not silently introduce a new progression mechanism or replace the foundation.

## Audit-derived baseline for later validation

The audit identifies existing platform hooks or clear prototype surfaces worth evaluating for these candidate areas:

- interaction-driven research;
- multi-output recipes and waste/byproduct streams;
- 1x1 loader concepts;
- custom planets and custom pollution types;
- fluid temperature and pipeline extent; and
- module and quality effects.

This baseline is not a conclusion that any proposed Thelian Industries mechanic is feasible as designed. Custom behavior, values, compatibility, player experience, and implementation choices remain unspecified.

## Candidate areas requiring targeted research or prototype validation

The audit specifically identifies the following proposals as requiring a targeted prototype, scripting investigation, or alternative design before they can become implementation commitments:

- restricted loose-material versus normal-belt behavior;
- historical mining-hardness or equivalent progression-gating proposal (superseded for ordinary solid ores by the locked `minable.mining_time` architecture);
- distinct gas, liquid, molten, and special pipe-network behavior;
- quality-dependent rocket cargo behavior; and
- complex planetary hazards and inter-platform logistics concepts.

## Locked metallurgy prototype boundary

The metallurgy architecture is not a candidate mechanics list. Technical validation must instead test suitable implementations for character bootstrap mining versus machine mining, `minable.mining_time` and normal miner compatibility, footprint-bound surface extraction, underground access-node exposure, and finite simulated Deep Mine reserves. It must also validate the selected overlapping-resource representation or its fallback. Prototype validation chooses an implementation approach; it does not change the locked architecture or settle deferred numerical balance.

## Locked Electronics prototype boundary

The Electronics architecture is also not a candidate list. Technical validation must test three-tier recipe capability, narrow next-tier prototype bridges, crude pre-Tier-1 bootstrap, and force-level retirement/reconciliation of designated recipes. It must evaluate reloads, configuration/progression changes, migrations, and already configured machines. Feasibility work chooses mechanics and code structure; it does not change the locked taxonomy, machine-capability model, or same-output progression rule.

## Research rules

- Record evidence, assumptions, scope, and result separately for each investigation.
- Do not turn an audit observation into a requirement or implementation claim.
- Do not promote an idea without an explicit owner decision.
- Link an accepted design decision to its evidence when one is made.

## Related documents

- [Gameplay Mechanics Index](../04_Gameplay_Mechanics/00_Gameplay_Mechanics_Index.md)
- [Idea Backlog](../Plans/Idea_Backlog.md)
- [Testing and QA Plan](../05_Development/02_Testing_and_QA_Plan.md)
- [Thelian Industries Metallurgy Plan](../Plans/InProgress%20Plans/TI_Metallurgy_Plan.md)
- [Thelian Industries Electronics Plan](../Plans/InProgress%20Plans/TI_Electronics_Plan.md)
