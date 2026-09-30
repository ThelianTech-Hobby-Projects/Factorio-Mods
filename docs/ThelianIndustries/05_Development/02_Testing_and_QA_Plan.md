# Testing and QA Plan

**Status: Placeholder / Planning Required**

## Current status

The current legacy planning sources do not define automated tests, runtime verification, playtest criteria, regression checks, or a quality-assurance process.

No testing plan, coverage claim, or verified implementation status is inferred in this migration.

## Metallurgy minimum validation boundary

The locked metallurgy plan requires end-to-end in-game verification of the implemented content chain using provisional values before finalized progression and balance. Prototype choices then require targeted validation; later balance work includes code iteration, reload/restart testing, and playtesting. Exact acceptance criteria, automated coverage, regression strategy, and release QA remain open.

## Electronics minimum validation boundary

When implemented, the locked Electronics architecture requires validation that:

- pre-Tier-1 bootstrap and each narrow next-tier bridge cannot softlock construction of the first machine in the next capability tier;
- crude, prototype, native, and improved recipes produce the same intended canonical outputs rather than accidental duplicate item tiers;
- retired crude recipes remain unavailable after research/configuration/migration state is reapplied; and
- already configured machines cannot bypass the intended retirement behavior.

Exact test fixtures, thresholds, automated coverage, performance criteria, and acceptance values remain deferred.

## Information needed

- Owner-approved test and playtest strategy.
- Criteria for verification of planned versus implemented behavior.
- Regression, compatibility, and release-validation expectations.

## Related documents

- [Document Authority](../DOCUMENT_AUTHORITY.md)
- [Technical Feasibility Research](../06_Research/01_Technical_Feasibility_Research.md)
- [Release Workflow](04_Release_Workflow.md)
- [Thelian Industries Metallurgy Plan](../Plans/InProgress%20Plans/TI_Metallurgy_Plan.md)
- [Thelian Industries Electronics Plan](../Plans/InProgress%20Plans/TI_Electronics_Plan.md)
