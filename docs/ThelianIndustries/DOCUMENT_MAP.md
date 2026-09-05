# Document Map

**Status: Planning Draft**

This map assigns an authoritative owner per concern. Shared concepts may have multiple domain documents only when each owns a different concern and cross-links to the other.

| Concern | Canonical owner | Notes |
| --- | --- | --- |
| Documentation authority and status rules | [DOCUMENT_AUTHORITY.md](DOCUMENT_AUTHORITY.md) | Governs authority questions; does not establish gameplay design. |
| Project framing, scope, open questions, and documentation audit | [00_Project/](00_Project/README.md) | Project-level planning administration. |
| Overall game-design direction | [01_Game_Design/](01_Game_Design/README.md) | Planning-only system direction. |
| Game stages, worlds, victory, and postgame | [02_Progression_and_Worlds/](02_Progression_and_Worlds/README.md) | Owns progression sequencing and world descriptions. |
| Metallurgical processing and yield rules | [03_Production_Systems/](03_Production_Systems/README.md) | Yield ownership belongs to the process-and-yield document. |
| Speculative mechanics and candidates | [Plans/](Plans/README.md) | The idea backlog remains authoritative until an owner promotes an item. |
| Durable owner-approved decisions | [Decisions/](Decisions/README.md) | No substantive ADRs are created by this migration. |
| Migration review evidence | [Reviews/](Reviews/README.md) | Owns audit findings and provenance notes. |
| Historical material | [Archive/](Archive/README.md) | Does not override active planning sources. |
| Reusable formats | [Templates/](Templates/README.md) | Templates are not design specifications. |

## Shared Concerns

Metallurgy owns material production and yield behavior; electronics owns electronics use and progression. Documents must avoid duplicating the same rule and should use reciprocal related-document links where a concept spans both domains.

## Legacy Source Map

The primary source-to-destination mapping and migration status are recorded in the [migration audit](Reviews/migration_audit_2026-09-04.md#source-coverage). Legacy sources are retained under [`Mods/ThelianIndustries/plans/`](../../Mods/ThelianIndustries/plans/).

## Document Register

The register supplies per-document navigation and governance metadata. `Migration prompt` refers to `docs/Codex_files/thelian_industries_docs_migration_codex_prompt.md`; it establishes the documentation structure and owner-resolved migration instructions, not gameplay design.

| Path | Title | Authority class | Status | Purpose | Source / provenance | Related documents | Owner review required |
| --- | --- | --- | --- | --- | --- | --- | --- |
| `README.md` | Documentation Package | Canonical navigation | Planning Draft | Package entry point | Migration prompt | authority, project index, review | Yes |
| `DOCUMENT_AUTHORITY.md` | Document Authority | Canonical governance | Planning Draft | Defines authority order | Migration prompt | map, AGENTS | Yes |
| `DOCUMENT_MAP.md` | Document Map | Canonical governance | Planning Draft | Navigation and ownership register | Migration prompt | all domains | Yes |
| `CHANGELOG.md` | Changelog | Canonical record | Documentation-only | Records migration | Migration prompt | review | No |
| `AGENTS.md` | Agent Guidance | Canonical process | Planning Draft | Guides future documentation work | Migration prompt | authority, map | Yes |
| `PROJECT_CONTEXT.md` | Project Context Snapshot | Generated working context | Static audit snapshot | Portable implementation-and-planning context; not independent authority | live codebase audit and canonical docs | codebase audit, authority | Yes |
| `00_Project/README.md` | Project Documentation | Canonical navigation | Planning Draft | Project-area index | Migration prompt | project pages | Yes |
| `00_Project/00_Project_Index.md` | Project Index | Canonical navigation | Planning Draft | Project entry and links | Migration prompt | root README | Yes |
| `00_Project/01_Project_Charter.md` | Project Charter | Canonical placeholder | Placeholder / Planning Required | Reserves charter location | No dedicated legacy source | scope, plan | Yes |
| `00_Project/02_Project_Scope.md` | Project Scope | Canonical placeholder | Placeholder / Planning Required | Reserves scope location | No dedicated legacy source | charter, roadmap | Yes |
| `00_Project/03_Project_Plan.md` | Project Plan | Canonical placeholder | Placeholder / Planning Required | Reserves plan location | No dedicated legacy source | roadmap, research log | Yes |
| `00_Project/04_Roadmap_and_Release_Strategy.md` | Roadmap and Release Strategy | Canonical placeholder | Placeholder / Planning Required | Reserves roadmap location | No dedicated legacy source | release placeholder | Yes |
| `00_Project/05_Open_Questions_and_Research_Log.md` | Open Questions and Research Log | Canonical log | Research Needed | Tracks unresolved design | legacy plans and owner resolution | ideas, review | Yes |
| `00_Project/06_Documentation_Audit.md` | Documentation Audit | Canonical audit summary | Planning Draft | Summarizes migration coverage | migration review | detailed review | Yes |
| `01_Game_Design/README.md` | Game Design | Canonical navigation | Planning Draft | Domain index | migrated structure | game-design pages | Yes |
| `01_Game_Design/00_Game_Design_Overview.md` | Game Design Overview | Canonical planning | Planning Draft | High-level source summary | progression and metallurgy plans | progression, production | Yes |
| `01_Game_Design/01_Design_Pillars_and_Overhaul_Scope.md` | Design Pillars and Overhaul Scope | Canonical placeholder | Placeholder / Planning Required | Reserves pillars and scope | No dedicated legacy source | project scope, ideas | Yes |
| `01_Game_Design/02_Construction_and_Intermediate_Components.md` | Construction and Intermediate Components | Canonical planning | Planning Draft | Classifies component groups | metallurgy, electronics, progression plans | metallurgy, electronics | Yes |
| `01_Game_Design/03_Research_and_Technology_Design.md` | Research and Technology Design | Canonical placeholder | Placeholder | Reserves dedicated technology design | empty `Tech-Tree.md` | progression, research log | Yes |
| `02_Progression_and_Worlds/README.md` | Progression and Worlds | Canonical navigation | Planning Draft | Domain index | migrated structure | progression pages | Yes |
| `02_Progression_and_Worlds/00_Game_Progression.md` | Game Progression | Canonical planning | Planning Draft | Owns stage sequencing | `Game-Progression-Tree.md` | stage matrix, victory | Yes |
| `02_Progression_and_Worlds/01_Solar_System_and_Planets.md` | Solar System and Planets | Canonical planning | AI Draft / Planning Draft | Owns world descriptions | `Solar-System.md` | progression, stage matrix | Yes |
| `02_Progression_and_Worlds/02_Planetary_Stage_Matrix.md` | Planetary Stage Matrix | Canonical register | Planning Draft | Maps stated stages to worlds | progression and solar-system plans | progression, worlds | Yes |
| `02_Progression_and_Worlds/03_Victory_and_Postgame.md` | Victory and Postgame | Canonical planning | Planning Draft | Owns resolved lifecycle wording | progression, solar system, ideas | progression, backlog | Yes |
| `03_Production_Systems/README.md` | Production Systems | Canonical navigation | Planning Draft | Domain index | migrated structure | production pages | Yes |
| `03_Production_Systems/00_Production_Systems_Overview.md` | Production Systems Overview | Canonical planning | Planning Draft | Production source overview | metallurgy and electronics plans | metallurgy, electronics | Yes |
| `03_Production_Systems/01_Metallurgy_Processing_Chains.md` | Metallurgy Processing Chains | Canonical planning | Planning Draft | Owns nonnumeric metallurgy concerns | `Metallurgy-Tree.md` and process plan | yield rules, electronics | Yes |
| `03_Production_Systems/02_Metallurgy_Process_and_Yield_Rules.md` | Metallurgy Process and Yield Rules | Canonical planning | Planning Draft | Owns numeric yield relationships | `Metallurgy_Process-Tree.md` | metallurgy chains | Yes |
| `03_Production_Systems/03_Chemistry_and_Oil_Processing.md` | Chemistry and Oil Processing | Canonical placeholder | Placeholder | Reserves chemistry domain | empty `Chemistry_Oil-Processing.md` | research log | Yes |
| `03_Production_Systems/04_Electronics.md` | Electronics | Canonical planning | Planning Draft | Owns electronics-use concern | `electronics.md`, Stage 1 notes | metallurgy, components | Yes |
| `03_Production_Systems/05_Recycling_and_Waste.md` | Recycling and Waste | Canonical placeholder | Placeholder | Reserves recycling domain | empty `Recycling-Chain.md` | research log | Yes |
| `03_Production_Systems/06_Recipe_Tables.md` | Recipe Tables | Canonical placeholder | Placeholder | Reserves recipe-table domain | empty `Recipie-Tables.md` | research log | Yes |
| `04_Gameplay_Mechanics/README.md` | Gameplay Mechanics | Canonical navigation | Planning Draft | Domain index | migration prompt and backlog | mechanics pages, backlog | Yes |
| `04_Gameplay_Mechanics/00_Gameplay_Mechanics_Index.md` | Gameplay Mechanics Index | Canonical navigation | Planning Draft | Mechanics register | idea backlog | mechanics pages | Yes |
| `04_Gameplay_Mechanics/01_Logistics_and_Belts.md` | Logistics and Belts | Canonical reservation | Idea / Research Needed | Reserves logistics design | idea backlog | technical research | Yes |
| `04_Gameplay_Mechanics/02_Fluids_and_Pipe_Systems.md` | Fluids and Pipe Systems | Canonical reservation | Idea / Research Needed | Reserves fluid design | idea backlog | technical research | Yes |
| `04_Gameplay_Mechanics/03_Modules_Quality_and_Effects.md` | Modules, Quality, and Effects | Canonical reservation | Idea / Research Needed | Reserves module design | idea backlog | technical research | Yes |
| `04_Gameplay_Mechanics/04_Power_Steam_and_Early_Infrastructure.md` | Power, Steam, and Early Infrastructure | Canonical reservation | Planning Draft / Idea | Reserves early infrastructure | progression plan and backlog | progression, ideas | Yes |
| `04_Gameplay_Mechanics/05_Rockets_Space_Logistics_and_Transport.md` | Rockets, Space Logistics, and Transport | Canonical reservation | Idea / Research Needed | Reserves transport design | idea backlog | technical research | Yes |
| `04_Gameplay_Mechanics/06_Mining_and_Resource_Gating.md` | Mining and Resource Gating | Canonical reservation | Planning Draft / Research Needed | Reserves gating design | metallurgy and backlog | metallurgy, technical research | Yes |
| `05_Development/README.md` | Development | Canonical navigation | Placeholder / Planning Required | Domain index | No dedicated legacy source | development pages | Yes |
| `05_Development/00_Mod_Architecture.md` | Mod Architecture | Canonical placeholder | Placeholder / Planning Required | Reserves architecture | No dedicated legacy source | repository structure | Yes |
| `05_Development/01_Repository_and_Mod_Structure.md` | Repository and Mod Structure | Canonical placeholder | Placeholder / Planning Required | Reserves structure guidance | No dedicated legacy source | architecture | Yes |
| `05_Development/02_Testing_and_QA_Plan.md` | Testing and QA Plan | Canonical placeholder | Placeholder / Planning Required | Reserves QA plan | No dedicated legacy source | release workflow | Yes |
| `05_Development/03_Coding_and_Data_Standards.md` | Coding and Data Standards | Canonical placeholder | Placeholder / Planning Required | Reserves standards | No dedicated legacy source | architecture | Yes |
| `05_Development/04_Release_Workflow.md` | Release Workflow | Canonical placeholder | Placeholder / Planning Required | Reserves workflow | No dedicated legacy source | release strategy | Yes |
| `06_Research/README.md` | Research | Canonical navigation | Research Needed | Domain index | planning audit baseline | research pages | Yes |
| `06_Research/00_Research_Index.md` | Research Index | Canonical navigation | Research Needed | Research register | planning audit baseline | research pages | Yes |
| `06_Research/01_Technical_Feasibility_Research.md` | Technical Feasibility Research | Canonical research | Research Needed | Records non-decisional feasibility baseline | planning audit section 10 | gameplay mechanics | Yes |
| `06_Research/02_Gameplay_Balance_Research.md` | Gameplay Balance Research | Canonical placeholder | Research Needed | Reserves balance research | no dedicated legacy source | metallurgy, progression | Yes |
| `06_Research/03_Real_World_Process_Research.md` | Real World Process Research | Canonical placeholder | Research Needed | Reserves process research | no dedicated legacy source | metallurgy | Yes |
| `07_Releases/README.md` | Releases | Canonical placeholder | Placeholder / Planning Required | Reserves release records | no release source | roadmap | Yes |
| `Decisions/README.md` | Decisions | Canonical governance | Planning Draft | Decision-record index | migration prompt | ADR index | Yes |
| `Decisions/ADR/README.md` | ADR Register | Canonical governance | Planning Draft | ADR index | migration prompt | decisions | Yes |
| `Plans/README.md` | Plans | Canonical navigation | Idea / Candidate | Backlog index | `IDEAS.md` | idea backlog | Yes |
| `Plans/Idea_Backlog.md` | Idea Backlog | Canonical backlog | Idea / Candidate / Research Needed | Owns speculative concepts | `IDEAS.md` | research, mechanics | Yes |
| `Reviews/README.md` | Reviews | Canonical navigation | Planning Draft | Review index | migration prompt | migration audit | Yes |
| `Reviews/migration_audit_2026-09-04.md` | Migration Audit | Canonical review evidence | Planning Draft | Detailed migration evidence | legacy sources and owner decisions | project audit | Yes |
| `Reviews/codebase_context_audit_2026-09-04.md` | Codebase Context Audit | Review evidence | Static Source Audit | Detailed implementation/reconciliation evidence | live codebase audit | project context, authority | Yes |
| `Archive/README.md` | Archive | Canonical navigation | Historical | Historical-material index | migration prompt | authority | No |
| `Templates/README.md` | Templates | Canonical process | Planning Draft | Template index | migration prompt | templates | No |
| `Templates/doc-template.md` | Documentation Template | Canonical template | Planning Draft | Reusable document format | migration prompt | ADR template | No |
| `Templates/adr-template.md` | ADR Template | Canonical template | Planning Draft | Reusable ADR format | migration prompt | decisions | No |
