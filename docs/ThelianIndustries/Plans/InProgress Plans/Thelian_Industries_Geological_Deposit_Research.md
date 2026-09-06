# Thelian Industries: Geological, Mineralogical, and Deposit-Association Research — Formula-Complete Revision

**Project:** Thelian Industries, Factorio: Space Age overhaul  
**Research purpose:** Reference dataset for specialized geological deposits, trace-mineral outputs, beneficiation coproducts, associated underground reserve bodies, and scientifically defensible cross-mineral relationships.  
**Date:** 2026-09-06  
**Revision:** Formula-complete edition; primary ores and all named associated minerals now include chemical formulae.

---

## Executive research rules

This report deliberately separates four geological relationships that should not be implemented as though they were equivalent:

- **A. Lattice-contained element:** the element substitutes into, or is structurally incorporated in, the named primary mineral. This is the strongest basis for a true mineral-level trace output.
- **B. Disseminated or microscopic mineral:** a distinct mineral phase occurs as inclusions, intergrowths, coatings, fine grains, or disseminations through the ore. This is a strong basis for a beneficiation coproduct, but it is not a lattice substitution.
- **C. Associated mineral phase:** a separate mineral is a recurring member of the ore assemblage. It may be recoverable in the same processing circuit if sufficiently abundant.
- **D. Associated ore body:** a distinct, mappable or zoned mineralized body occurs in the same geological system. This is the best basis for a separate finite underground reserve pool rather than a percentage trace yield from every unit of the primary ore.


### Chemical-formula policy used in this revision

This revision treats the **chemical formula as mandatory mineral data**, not optional descriptive detail. Formulae are written in plain chemical notation so they can be transferred directly into TI metallurgy and processing design.

- A **single mineral species** is given its standard mineral formula, for example siderite `FeCO3`, stibnite `Sb2S3`, galena `PbS`, and scheelite `CaWO4`.
- A **solid-solution series or mineral group** is given a generalized formula and, where useful, named endmember formulas. Example: wolframite `(Fe,Mn)WO4`, bounded by ferberite `FeWO4` and huebnerite `MnWO4`.
- A **rock, ore rock, mineraloid, alteration aggregate, or generic mineral group** does **not** receive an invented single formula. Its row states that no unique formula exists and supplies representative constituent mineral formulas instead.
- Formula columns describe **mineral identity**, not bulk ore grade. A deposit containing siderite `FeCO3` does not mean the entire ore body has the bulk composition `FeCO3`.
- The report does not add atom-count tables or oxidation-state tables. Variable substitutions remain discussed only where geologically important.

Primary formulae and the associated-mineral formula table were standardized against recognized mineralogical references, especially the Mineralogical Society of America *Handbook of Mineralogy* and IMA-aligned mineral data; variable/group formulas are explicitly labeled as generalized or representative. [F01, F02]

### Frequency scale used in this report

| Rating | Meaning |
| --- | --- |
| **Very Common** | Characteristic, diagnostic, or widespread in a major deposit model for this ore family. |
| **Common** | Recurrent across many deposits, but not required in every occurrence. |
| **Occasional** | Well documented in a meaningful subset of deposits. |
| **Rare** | Geologically real but uncommon enough that it should not be assumed. |
| **Highly deposit-specific** | Strong in a particular deposit subtype, district, or unusual geochemical setting, but a poor generic association. |

### Gameplay interpretation rules

1. A **Pure/Default** profile is a gameplay baseline, not a claim of absolute mineralogical purity.
2. A trace output is favored when the element is either lattice-hosted or consistently present as a fine recoverable phase.
3. A separate underground body is favored when the relationship is zoned, stratigraphically separate, vein-controlled, or represented by a different ore mineral rather than by substitution in the named mineral.
4. Gangue and deleterious impurities are not automatically converted into rewards. Some realistic associations are better represented as processing penalties, waste streams, or ore-grade modifiers.
5. The same chemical element can legitimately occur by different mechanisms in different profiles. For example, silver can substitute into galena, form microscopic silver minerals, or occur in a separate silver-rich vein.

---

# Part I. Nauvis mineral families

## Bituminous Ore / Coal -> Carbon / Coal

### 1. Mineral composition

Coal is **not a single mineral species**. Bituminous coal is an organic-rich sedimentary rock composed of macerals derived from plant matter plus variable inorganic mineral matter. Its organic fraction is dominated by carbon, with hydrogen, oxygen, nitrogen, and sulfur as significant chemically bound components. Mineral matter commonly includes quartz, clay minerals, pyrite, carbonates, and minor accessory phases. [S18]

- **Formula:** No fixed mineral formula.
- **Main elements:** C, H, O, N, S in the organic fraction.
- **Common non-target components:** Si, Al, Fe, S, Ca, Mg, K and minor Na in mineral matter.
- **Common mineral impurities:** quartz, kaolinite, illite, pyrite; locally calcite, siderite, chlorite and other clays. [S18]
- **Important trace behavior:** As and Se are commonly concentrated in coal pyrite relative to silicate minerals. Other elements may partition into clay minerals, organic matter, or accessory sulfides. Germanium, gallium, uranium, rare-earth elements, mercury and others can be anomalously enriched in particular coal seams, but enrichment is strongly basin- and seam-specific.

**A versus B distinction:** sulfur may be organically bound in the coal matrix **A**, but much sulfur also occurs in separate pyrite grains **B/C**. Germanium and uranium can have an organic association in some coals, whereas As and Se commonly follow pyrite or other sulfide phases.

### 2. Commonly associated minerals

| Associated mineral / common ore-mineral name | Chemical formula(s) | Main useful element(s) | Relationship | Typical frequency | Notes |
| --- | --- | --- | --- | --- | --- |
| Pyrite | `FeS2` | Fe, S; hosts As/Se and sometimes Hg | B/C | Very Common | One of the four most abundant minerals in many bituminous coals. Often a sulfur and trace-element carrier. |
| Quartz | `SiO2` | Si | C | Very Common | Detrital or authigenic mineral matter, generally gangue. |
| Kaolinite | `Al2Si2O5(OH)4` | Al, Si | C | Very Common | Major clay component in many coals. |
| Illite | Variable illite; representative `K0.6-0.85Al2(Si,Al)4O10(OH)2` | K, Al, Si | C | Very Common | Common clay; can carry lithophile trace elements. |
| Calcite | `CaCO3` | Ca | C | Common | Vein, cleat, or sedimentary carbonate mineral. |
| Siderite | `FeCO3` | Fe | C | Common | Can occur as nodules or dispersed carbonate. |
| Other sulfides | No single formula; representative pyrite `FeS2`, marcasite `FeS2`, sphalerite `ZnS`, chalcopyrite `CuFeS2` | variable | B/C | Occasional | Local sphalerite, chalcopyrite, marcasite and related phases occur in some coal-bearing strata. |

### 3. Economically relevant associated elements

| Element | How it occurs | Commonness | Could plausibly be a TI trace output? |
| --- | --- | --- | --- |
| Sulfur | A organic sulfur; B/C pyrite and other sulfides | Very Common | **Yes, if sulfur recovery has gameplay value.** More defensible than treating a trace metal as universal. |
| Germanium | A organic-associated and B/C mineral-hosted depending seam | Highly deposit-specific | **Yes, specialized profile only.** Coal is a recognized Ge source, but enrichment is not generic. |
| Gallium | Mostly B/C clay and aluminosilicate association | Occasional | Possible but weaker than bauxite/sphalerite. |
| As | Primarily B/C pyrite and sulfides | Common | Geologically strong, but usually a contaminant rather than a desirable coproduct. |
| Se | Primarily B/C pyrite and organic association | Common | Possible chemistry byproduct, but usually not a primary economic coal coproduct. |
| Hg | B/C sulfides and organic matter | Occasional | Better treated as a contaminant/emissions issue than a routine resource. |
| U | A organic association and B/C accessory phases | Highly deposit-specific | **Do not make generic.** Uraniferous coal exists, but it is a special deposit style. |
| REE | B/C clays, phosphates, volcanic ash layers; concentrated further in ash | Highly deposit-specific | Possible late-game ash-recovery profile, not a normal raw-coal trace. |

### 4. Typical deposit environments

Bituminous coal develops from peat accumulated in oxygen-poor wetlands and then buried, compacted and thermally matured. Major settings include paralic coastal plains, deltaic systems, foreland basins, intracratonic basins, and continental swamp environments. Trace-metal enrichments can be introduced by detrital sediment, volcanic ash, hydrothermal fluids, marine incursions, groundwater, or unusual source rocks. Therefore, a chemically unusual coal seam should be treated as a special stratigraphic layer, not as the default condition.

### 5. Best candidates for Thelian Industries

- **Primary trace candidate:** **Sulfur**, especially where pyrite-rich coal can be beneficiated. This is geologically common, though it is not a metal coproduct.
- **Secondary trace candidate:** **Germanium**, but only as a rare/specialized seam profile.
- **Possible separate associated underground mineral:** **Pyrite-rich band or sulfide-rich roof/floor horizon**, if TI wants a distinct sulfur-bearing reserve. This is more credible than spawning a universal metal body beneath coal.
- **Associations that should probably NOT be represented:** routine uranium, REE, mercury, gallium, or silver from all coal. These are real enrichments in particular coals, but too deposit-specific for a general trace table.

**Source basis:** USGS coal mineral and trace-element studies [S18].

---

## Hematite -> Iron (Fe)

### 1. Mineral composition

- **Formula:** `Fe2O3`.
- **Main elements:** Fe3+ and O.
- **Common substitutions/impurities:** Al is a common substitution in natural hematite. Ti, Cr, V and Mn can occur at minor or trace levels depending on origin, and hematite belongs to an oxide structural family in which Al, V, Cr and Ti-bearing end-members or solid-solution relations are important. In many ores, however, Ti, Mn, Si and P are present chiefly in **separate minerals or gangue**, not dissolved uniformly in hematite.
- **Important trace elements within hematite itself:** Al is the most defensible common lattice impurity. Ti and V can be significant in particular Fe-Ti oxide systems. Cr and Mn are more variable. Valuable trace metals such as Au or Cu should not be described as normal hematite-lattice constituents.

### 2. Commonly associated minerals

| Associated mineral / common ore-mineral name | Chemical formula(s) | Main useful element(s) | Relationship | Typical frequency | Notes |
| --- | --- | --- | --- | --- | --- |
| Magnetite | `Fe3O4` | Fe | C, sometimes D | Very Common | Major companion iron oxide in BIFs and many metamorphosed iron formations. |
| Quartz/chert | Quartz/chert `SiO2` | Si | C | Very Common | Characteristic gangue in banded iron formations. |
| Goethite | `FeO(OH)` | Fe | C | Common | Common weathering or supergene Fe oxyhydroxide. |
| Siderite/ankerite | Siderite `FeCO3`; ankerite `Ca(Fe,Mg)(CO3)2` | Fe, Ca, Mg | C | Common | Carbonate facies or altered iron formations. |
| Apatite | General apatite `Ca5(PO4)3(F,Cl,OH)` | P, Ca | C | Highly deposit-specific | Important in iron-oxide-apatite systems, but phosphorus is usually undesirable in ordinary iron ore. |
| Ilmenite | `FeTiO3` | Ti | C | Occasional | Stronger in magmatic/metamorphic Fe-Ti oxide settings than in classic BIF hematite. |
| Chalcopyrite/bornite | Chalcopyrite `CuFeS2`; bornite `Cu5FeS4` | Cu | B/C/D | Highly deposit-specific | Relevant to IOCG or magmatic-hydrothermal systems, not ordinary hematite ore. |
| Native gold/electrum | Native gold `Au`; electrum `(Au,Ag)` | Au, Ag | B/C | Highly deposit-specific | Can occur in IOCG and other hydrothermal iron-oxide systems, not generic hematite. |

### 3. Economically relevant associated elements

| Element | How it occurs | Commonness | Could plausibly be a TI trace output? |
| --- | --- | --- | --- |
| Mn | A minor substitution and B/C Mn oxides/carbonates | Common in some sedimentary iron ores | **Moderate.** Best used as a manganiferous iron-ore profile, not universal. |
| Ti | A trace substitution and especially C ilmenite/titaniferous oxides | Occasional | **Moderate**, strongest in magmatic Fe-Ti systems. |
| V | A trace in Fe-Ti oxides, especially magnetite; less consistently hematite-hosted | Highly deposit-specific | Possible only for Fe-Ti-V profile. |
| P | C apatite or phosphate phases | Common as an impurity in some iron ores | Usually **No** as a reward; better as a deleterious-grade modifier unless phosphate recovery is deliberately modeled. |
| Cu | B/C sulfides or D copper zones in IOCG | Highly deposit-specific | **Yes only in an IOCG profile.** Not a hematite trace by default. |
| Au | B/C native gold/telluride/sulfide association in IOCG | Highly deposit-specific | **Yes only in a special hydrothermal profile.** |

### 4. Typical deposit environments

The major hematite ore environments include banded iron formation and its metamorphosed/enriched derivatives, supergene iron ores formed by weathering and enrichment, sedimentary iron formations, and some hydrothermal or magmatic-hydrothermal iron oxide systems. Hematite also occurs in iron-oxide-apatite and IOCG systems, but these are genetically distinct from classic BIF-derived iron ore. This distinction matters because Cu, Au, apatite and REE associations belong to those specific hydrothermal systems, not to hematite as a mineral species.

### 5. Best candidates for Thelian Industries

- **Primary trace candidate:** **Manganese**, for a clearly labeled manganiferous hematite profile.
- **Secondary trace candidate:** **Titanium**, preferably represented by disseminated ilmenite rather than pretending Ti is always in hematite.
- **Possible separate associated underground mineral:** **Ilmenite/Fe-Ti oxide lens** in a magmatic iron profile, or a **Cu-bearing sulfide zone** in an explicitly IOCG-derived profile.
- **Associations that should probably NOT be represented:** generic Au, Cu, U, REE or P from all hematite. They are deposit-model signals, not universal hematite associations.

---

## Cuprite -> Copper (Cu)

### 1. Mineral composition

- **Formula:** `Cu2O`.
- **Main elements:** Cu+ and O.
- **Common substitutions/impurities:** Cuprite is comparatively simple chemically. Economically useful trace substitution is not its defining feature.
- **Critical geological qualification:** Cuprite is chiefly a **secondary oxidation-zone mineral**, formed by weathering and supergene alteration of primary copper sulfides or native copper. It is therefore less representative of a deep primary copper ore system than chalcopyrite, bornite or chalcocite. [S01]

### 2. Commonly associated minerals

| Associated mineral / common ore-mineral name | Chemical formula(s) | Main useful element(s) | Relationship | Typical frequency | Notes |
| --- | --- | --- | --- | --- | --- |
| Native copper | `Cu` | Cu | B/C | Common | Characteristic in some oxidized or supergene copper assemblages. |
| Malachite | `Cu2CO3(OH)2` | Cu | C | Very Common | Common oxidized copper carbonate. |
| Azurite | `Cu3(CO3)2(OH)2` | Cu | C | Common | Oxidized copper carbonate. |
| Tenorite | `CuO` | Cu | C | Common | Copper oxide, especially in oxidized zones. |
| Chrysocolla | Variable: `Cu2-xAlx(H2-xSi2O5)(OH)4·nH2O` | Cu | C | Common | Hydrated Cu silicate or mineraloid association. |
| Goethite/limonite | Goethite `FeO(OH)`; limonite has no fixed formula and is chiefly hydrated Fe oxyhydroxide/oxide material | Fe | C | Very Common | Oxidized gossan and weathering products. |
| Chalcocite/covellite | Chalcocite `Cu2S`; covellite `CuS` | Cu | C/D | Common | Supergene sulfide enrichment beneath oxidized zones. |
| Chalcopyrite/bornite | Chalcopyrite `CuFeS2`; bornite `Cu5FeS4` | Cu | D | Common at system scale | Primary hypogene sulfides below or laterally from the oxide zone. |
| Quartz/calcite | Quartz `SiO2`; calcite `CaCO3` | Si, Ca | C | Common | Gangue. |

### 3. Economically relevant associated elements

| Element | How it occurs | Commonness | Could plausibly be a TI trace output? |
| --- | --- | --- | --- |
| Au | B/C native gold/electrum or D Cu-Au mineralization in parent system | Occasional to Highly deposit-specific | **Yes in a Cu-Au profile**, but not as a cuprite lattice trace. |
| Ag | B/C native Ag, Ag sulfides/sulfosalts, or Cu sulfides | Occasional | **Yes in a polymetallic/epithermal profile.** |
| Mo | D molybdenite-bearing porphyry zone | Highly deposit-specific | Better as a separate porphyry-system coproduct, not cuprite trace. |
| Fe | C goethite/hematite/limonite | Very Common | Usually gangue rather than economic trace. |

### 4. Typical deposit environments

Cuprite occurs mainly in the **oxidized and supergene zones of copper deposits**, including weathered porphyry copper, vein, replacement and sediment-hosted copper systems. It commonly overlies or replaces primary sulfide mineralization. In a porphyry system the larger geological system may also contain Au, Ag and Mo, but those metals are not present because cuprite itself incorporates them. USGS porphyry copper models identify Cu with major Mo, Au and Ag resources at deposit scale. [S01]

### 5. Best candidates for Thelian Industries

- **Primary trace candidate:** **Gold**, only for a Cu-Au parent-system profile and modeled as B/C disseminated native/electrum or sulfide-associated material.
- **Secondary trace candidate:** **Silver**, likewise as a separate phase or parent-system association.
- **Possible separate associated underground mineral:** **Primary copper sulfide body** (chalcocite/chalcopyrite/bornite-rich) beneath the oxidized cuprite cap. This is arguably the single most realistic use of TI's associated underground-body mechanic for cuprite.
- **Associations that should probably NOT be represented:** Mo, Au or Ag as ordinary cuprite lattice impurities; zinc/lead as generic cuprite traces.

**Source basis:** cuprite mineralogy plus USGS porphyry copper deposit model [S01].

---

## Cassiterite -> Tin (Sn)

### 1. Mineral composition

- **Formula:** `SnO2`.
- **Main elements:** Sn4+ and O.
- **Common substitutions/impurities:** Fe, Mn, Ta, Nb and W can enter cassiterite through coupled substitutions; Ti, Zr, Hf, In and REE can also occur at trace levels depending on the ore-forming system. Experimental and natural-mineral work specifically documents coupled Ta-Nb-W-Fe-Mn substitution mechanisms. [S23]
- **Important consequence:** cassiterite trace chemistry varies systematically between pegmatitic, greisen, hydrothermal and other environments, so a single universal trace list would be misleading.

### 2. Commonly associated minerals

| Associated mineral / common ore-mineral name | Chemical formula(s) | Main useful element(s) | Relationship | Typical frequency | Notes |
| --- | --- | --- | --- | --- | --- |
| Quartz | `SiO2` | Si | C | Very Common | Major gangue in veins, greisens and pegmatites. |
| Muscovite | `KAl2(AlSi3O10)(OH)2` | K, Al | C | Common | Characteristic of greisen alteration. |
| Topaz | `Al2SiO4(F,OH)2` | F, Al | C | Common in evolved granitic greisens | Strong indicator of F-rich granite-related systems. |
| Tourmaline | Tourmaline group has no single formula; representative schorl `NaFe3Al6(BO3)3Si6O18(OH)4` | B | C | Common | Common granite-related accessory/gangue. |
| Wolframite | General series `(Fe,Mn)WO4`; ferberite `FeWO4`; huebnerite `MnWO4` | W | B/C/D | Common in Sn-W districts | One of the strongest TI cross-links. |
| Scheelite | `CaWO4` | W | C | Occasional | More important in some skarn or vein systems. |
| Arsenopyrite/pyrite | Arsenopyrite `FeAsS`; pyrite `FeS2` | As, Fe, S | C | Common | Sulfide accessory phases. |
| Chalcopyrite | `CuFeS2` | Cu | C | Occasional | Polymetallic greisen/vein/skarn association. |
| Molybdenite | `MoS2` | Mo | C | Occasional | Documented in granite-related Sn systems. |
| Bismuthinite/native Bi | Bismuthinite `Bi2S3`; native bismuth `Bi` | Bi | C | Occasional | Evolved magmatic-hydrothermal association. |
| Columbite-tantalite | General `(Fe,Mn)(Nb,Ta)2O6`; representative columbite-(Fe) `FeNb2O6`, tantalite-(Fe) `FeTa2O6` | Nb, Ta | B/C | Common in rare-metal pegmatitic systems | Especially relevant to LCT and evolved granites. |
| Petalite/spodumene/lepidolite | Petalite `LiAlSi4O10`; spodumene `LiAlSi2O6`; lepidolite variable `K(Li,Al)3(Si,Al)4O10(F,OH)2` | Li | C/D | Highly deposit-specific | Strong in LCT pegmatites, not normal for all tin deposits. |
| Zircon/ilmenite/monazite | Zircon `ZrSiO4`; ilmenite `FeTiO3`; monazite group `(Ce,La,Nd,Th)PO4` | Zr, Ti, REE | C | Occasional in placers | Detrital heavy-mineral association rather than genetic co-crystallization in every case. |

### 3. Economically relevant associated elements

| Element | How it occurs | Commonness | Could plausibly be a TI trace output? |
| --- | --- | --- | --- |
| W | A substitution in cassiterite plus B/C wolframite or scheelite | Common in granite-related Sn-W systems | **Excellent.** Strongest TI-roster trace/coproduct candidate. |
| Ta | A coupled substitution and B/C columbite-tantalite | Common in rare-metal pegmatite/greisen subtype | **Excellent if Ta is ever added**, but not required by current roster. |
| Nb | A coupled substitution and B/C columbite-group minerals | Common in evolved rare-metal systems | Strong additional-element candidate. |
| Fe/Mn | A coupled substitution; also gangue/oxide phases | Common | Chemically real, but generally poor economic trace outputs from tin ore. |
| Li | C/D petalite, spodumene, lepidolite in LCT pegmatites | Highly deposit-specific | **Good as an associated body**, not as cassiterite lattice Li. |
| Mo | C molybdenite | Occasional | Plausible specialized byproduct. |
| Bi | C bismuth minerals | Occasional | Plausible specialized byproduct. |
| Cu | C chalcopyrite and other sulfides | Occasional | Plausible in polymetallic greisen/skarn profile. |

### 4. Typical deposit environments

Cassiterite is the dominant tin ore mineral in **granite-related hydrothermal systems**, including greisens, quartz-cassiterite veins and stockworks, pegmatites, skarns and limestone-replacement bodies. Weathering of primary lodes also produces important alluvial and coastal placer tin deposits because cassiterite is dense and resistant. USGS synthesis links tin-bearing granites to pegmatites, disseminated ore, greisen-bordered veins, skarns and limestone replacements, commonly with variable wolframite and molybdenite. [S09]

### 5. Best candidates for Thelian Industries

- **Primary trace candidate:** **Tungsten**, using a combination of lattice W and fine/disseminated wolframite where appropriate.
- **Secondary trace candidate:** **Ta/Nb** if TI ever adds either element; otherwise **Mo** is a defensible secondary byproduct in a granite-hydrothermal profile.
- **Possible separate associated underground mineral:** **Wolframite body** in an Sn-W greisen system, or **Petalite/LCT pegmatite body** in a lithium-rich rare-metal system.
- **Associations that should probably NOT be represented:** universal Li, Au, Ag, REE or Cu. Each occurs in particular tin districts but is not a generic cassiterite consequence.

**Source basis:** USGS tin synthesis and LCT pegmatite model [S08, S09], cassiterite substitution study [S23].

---

## Galena -> Lead (Pb)

### 1. Mineral composition

- **Formula:** `PbS`.
- **Main elements:** Pb and S.
- **Common substitutions/impurities:** Ag, Bi and Sb can substitute through coupled mechanisms such as Ag+ + (Bi,Sb)3+ <-> 2Pb2+. Trace Se, Te, Tl, Sn, Cd, Hg and other elements can occur depending on deposit chemistry. Galena can be an important host for Tl in some assemblages. [S21]
- **Important trace elements within galena itself:** **Ag** is the most gameplay-relevant and geologically defensible. Bi and Sb are also significant trace/minor elements. Silver can additionally occur as microscopic inclusions or distinct Ag minerals, so not all silver associated with galena is lattice-bound.

### 2. Commonly associated minerals

| Associated mineral / common ore-mineral name | Chemical formula(s) | Main useful element(s) | Relationship | Typical frequency | Notes |
| --- | --- | --- | --- | --- | --- |
| Sphalerite | `ZnS` | Zn, Cd, Ge, Ga, In | C/D | Very Common | Characteristic Pb-Zn association in MVT, SEDEX and many polymetallic veins. |
| Pyrite/marcasite | Pyrite `FeS2`; marcasite `FeS2` | Fe, S | C | Common | Common iron sulfides. |
| Chalcopyrite | `CuFeS2` | Cu | C | Occasional to Common | More important in VMS and polymetallic systems; typically low in many MVT deposits. |
| Calcite/dolomite/ankerite/siderite | Calcite `CaCO3`; dolomite `CaMg(CO3)2`; ankerite `Ca(Fe,Mg)(CO3)2`; siderite `FeCO3` | Ca, Mg, Fe | C | Very Common in MVT | Major carbonate gangue and host-rock minerals. |
| Barite | `BaSO4` | Ba | C | Common | Especially in sedimentary Pb-Zn systems. |
| Quartz | `SiO2` | Si | C | Common | Vein or silicified gangue; minor in many MVT deposits, abundant in some vein systems. |
| Silver sulfides/sulfosalts | Acanthite/argentite `Ag2S`; pyrargyrite `Ag3SbS3`; proustite `Ag3AsS3` | Ag, Sb, As | B/C | Common in Ag-rich deposits | Separate Ag-bearing phases can dominate silver deportment. |
| Fluorite | `CaF2` | F, Ca | C | Occasional | Common in some MVT and polymetallic districts. |

### 3. Economically relevant associated elements

| Element | How it occurs | Commonness | Could plausibly be a TI trace output? |
| --- | --- | --- | --- |
| Ag | A lattice substitution; B microscopic inclusions; C separate Ag minerals | Common | **Excellent.** One of the strongest trace-output relationships in the entire roster. |
| Zn | C sphalerite; D separate Zn-rich lenses/zones | Very Common at deposit-system scale | **Better as associated Sphalerite body** than as Pb-ore trace. |
| Bi | A lattice substitution; C bismuth minerals | Occasional | Strong non-roster specialized byproduct candidate. |
| Sb | A lattice substitution; C sulfosalts/stibnite | Occasional | Strong non-roster specialized byproduct candidate. |
| Tl | A lattice-hosted in some galena | Highly deposit-specific | Geologically important, poor gameplay default. |
| Cu | C chalcopyrite; D Cu-rich VMS/polymetallic zones | Occasional | Good only in polymetallic profile. |
| Cd/Ge/Ga/In | Mostly hosted by associated sphalerite, not galena | Deposit-specific | Should be attributed to sphalerite processing, not to galena itself. |

### 4. Typical deposit environments

Galena is a principal ore mineral in **Mississippi Valley-type (MVT)** Pb-Zn deposits, **SEDEX** Pb-Zn-Ag deposits, polymetallic hydrothermal veins and replacements, VMS deposits, skarns, and some epithermal systems. USGS MVT models describe ores composed mainly of sphalerite and galena, with silver commonly an important commodity and Cu generally low. MVT ores occur predominantly in platform carbonates and lack direct igneous association. [S02] VMS systems form a separate volcanic-hydrothermal environment in which Pb-Zn may occur with Cu-Au-Ag. [S03]

### 5. Best candidates for Thelian Industries

- **Primary trace candidate:** **Silver**.
- **Secondary trace candidate:** **Bismuth or antimony** if TI expands its element set; for current-roster cross-links, **Cu** can be used only in a VMS/polymetallic profile.
- **Possible separate associated underground mineral:** **Sphalerite**. This is the strongest lead-zinc body relationship in the roster.
- **Associations that should probably NOT be represented:** Cd, Ge, Ga or In as "galena traces" when their actual host is sphalerite; routine Cu in MVT galena; universal Au.

**Source basis:** USGS MVT and VMS models [S02, S03], galena trace-element mineral chemistry [S21].

---

## Bauxite -> Aluminum (Al)

### 1. Mineral composition

Bauxite is **an ore rock, not a single mineral**.

- **Formula:** No single chemical formula. Principal aluminum ore minerals are **gibbsite `Al(OH)3`**, **boehmite `AlO(OH)`**, and **diaspore `AlO(OH)`**.

Its main aluminum minerals are:

- **Gibbsite:** Al(OH)3.
- **Boehmite:** AlO(OH).
- **Diaspore:** AlO(OH), a denser polymorph of boehmite.

USGS identifies gibbsite, boehmite and diaspore as the principal Al hydroxide/oxyhydroxide minerals of bauxite. [S19]

- **Main elements:** Al, O, H.
- **Common non-target minerals:** goethite and hematite (Fe), quartz (Si), kaolinite (Al-Si clay), and Ti minerals such as anatase/rutile. Lateritic bauxite forms by intense chemical weathering and leaching. [S19]
- **Important trace behavior:** gallium follows Al closely and substitutes into Al-bearing bauxite minerals. Sc, Nb, REE and other critical elements can be enriched in some bauxites or processing residues, but their distribution is variable and may be tied to Fe oxides, Ti phases, clays or resistant accessory minerals rather than uniformly to the Al hydroxides.

### 2. Commonly associated minerals

| Associated mineral / common ore-mineral name | Chemical formula(s) | Main useful element(s) | Relationship | Typical frequency | Notes |
| --- | --- | --- | --- | --- | --- |
| Goethite | `FeO(OH)` | Fe | C | Very Common | Major iron oxyhydroxide impurity. |
| Hematite | `Fe2O3` | Fe | C | Common | Common Fe oxide in lateritic bauxite. |
| Kaolinite | `Al2Si2O5(OH)4` | Al, Si | C | Very Common | Common clay impurity and precursor/residue. |
| Quartz | `SiO2` | Si | C | Common | Residual/detrital silica. |
| Anatase/rutile | Anatase `TiO2`; rutile `TiO2` | Ti | B/C | Common | Common Ti-bearing accessory phases. |
| Zircon and resistant heavy minerals | Zircon `ZrSiO4`; other heavy minerals vary (e.g. rutile `TiO2`, monazite `(Ce,La,Nd,Th)PO4`) | Zr, Hf, REE-bearing accessories | C | Occasional | Residual concentration possible during weathering. |

### 3. Economically relevant associated elements

| Element | How it occurs | Commonness | Could plausibly be a TI trace output? |
| --- | --- | --- | --- |
| Ga | A substitutes for Al in gibbsite/boehmite/diaspore; recovered during alumina processing | Common | **Excellent.** Bauxite is the principal global Ga source. [S20] |
| Sc | A/B distributed among Al/Fe/Ti phases and residues | Occasional | **Good specialized candidate**, but grade is deposit-specific. |
| REE | B/C resistant/accessory phases, adsorbed phases and processing residue | Occasional | Possible specialized residue-recovery profile. |
| Nb | B/C Ti/Fe/resistant accessory phases | Highly deposit-specific | Possible but not general. |
| Ti | C anatase/rutile | Common | Geologically strong, but usually a separate mineral impurity rather than a bauxite trace metal. Could be a beneficiation coproduct in a special high-Ti bauxite. |
| Fe | C goethite/hematite | Very Common | Usually gangue/residue, not a valuable trace output from bauxite. |

USGS reports bauxite Ga values worldwide ranging from below 10 to 812 ppm with an average near 57 ppm, and notes Ga as the largest established bauxite byproduct. [S20]

### 4. Typical deposit environments

The principal bauxite environments are **lateritic bauxites** developed by intense tropical to subtropical weathering of aluminosilicate rocks and **karst bauxites** concentrated in depressions and cavities on carbonate platforms. The key process is chemical leaching of mobile elements and residual enrichment of Al hydroxides, Fe oxides and resistant accessory minerals. The exact trace-element inventory depends heavily on parent rock and weathering history.

### 5. Best candidates for Thelian Industries

- **Primary trace candidate:** **Gallium**.
- **Secondary trace candidate:** **Scandium**, or a combined REE-rich residue profile if TI prefers rare-earth linkage over adding Sc.
- **Possible separate associated underground mineral:** generally **none required**. Bauxite's important companions are mostly intermingled lateritic phases rather than distinct deeper orebodies.
- **Associations that should probably NOT be represented:** universal REE, Nb or Sc; routine recoverable Fe from all bauxite. High concentrations are strongly deposit-specific.

**Source basis:** USGS bauxite mineralogy [S19], USGS gallium resource studies [S20].

---

# Part II. Luna mineral families

## Cinnabar -> Mercury (Hg)

### 1. Mineral composition

- **Formula:** `HgS`.
- **Main elements:** Hg and S.
- **Common substitutions/impurities:** cinnabar is commonly close to stoichiometric HgS. Se can substitute for S to a limited degree, and minor As or Sb may occur in some material, but much of the As-Sb signature of mercury deposits belongs to **separate arsenic and antimony minerals**, not to cinnabar lattice chemistry.
- **Important distinction:** native mercury, metacinnabar, corderoite, Hg selenides and other Hg phases can coexist with cinnabar. Their presence should be modeled as separate mineral phases rather than as arbitrary elements inside cinnabar.

### 2. Commonly associated minerals

| Associated mineral / common ore-mineral name | Chemical formula(s) | Main useful element(s) | Relationship | Typical frequency | Notes |
| --- | --- | --- | --- | --- | --- |
| Native mercury | `Hg` | Hg | B/C | Common | Common in some low-temperature Hg systems. |
| Metacinnabar | `HgS` | Hg | C | Occasional | Cubic HgS polymorph; more important in some deposits. |
| Pyrite/marcasite | Pyrite `FeS2`; marcasite `FeS2` | Fe, S | C | Common | Common sulfides in hot-spring and epithermal systems. |
| Stibnite | `Sb2S3` | Sb | C/D | Common in Hg-Sb districts | One of the strongest non-Hg ore associations. |
| Realgar/orpiment | Realgar `As4S4`; orpiment `As2S3` | As | C | Occasional to Common | Characteristic of As-rich low-temperature hydrothermal systems. |
| Native sulfur | `S` | S | C | Common in acid/hot-spring settings | Common near surface in some systems. |
| Quartz/opal/chalcedony | Quartz/chalcedony `SiO2`; opal `SiO2·nH2O` | Si | C | Very Common | Silica gangue and sinter. |
| Calcite/carbonate minerals | Calcite `CaCO3`; other carbonates have distinct formulas | Ca, Mg | C | Common | Hydrothermal gangue. |
| Gold/electrum | Native gold `Au`; electrum `(Au,Ag)` | Au, Ag | B/C/D | Highly deposit-specific | Important in hot-spring and epithermal systems, but not universal Hg ore. |

### 3. Economically relevant associated elements

| Element | How it occurs | Commonness | Could plausibly be a TI trace output? |
| --- | --- | --- | --- |
| Sb | C/D stibnite and sulfosalts; minor substitution possible | Common in Hg-Sb districts | **Excellent specialized coproduct**, but as a separate mineral phase. |
| As | C realgar, orpiment, arsenopyrite and other As phases | Common geochemical association | Usually a contaminant/pathfinder rather than a desirable coproduct. |
| Au | B/C native gold/electrum; D deeper Au mineralized zone | Highly deposit-specific | **Excellent separate-body candidate** in a hot-spring/epithermal profile. |
| Ag | B/C Ag minerals or electrum in polymetallic epithermal systems | Occasional | Possible second trace in an Au-Ag epithermal subtype. |
| Se | A substitution or C Hg-selenide minerals | Rare to Highly deposit-specific | Scientific interest, weak general gameplay candidate. |

### 4. Typical deposit environments

Cinnabar is characteristic of **low-temperature hydrothermal and epithermal mercury systems**, including hot-spring deposits, fault-controlled veins and breccias, volcanic-hosted Hg-Sb systems, and sediment-hosted mercury deposits. The USGS hot-spring Hg model describes cinnabar plus native Hg and minor marcasite, with pyrite and silica alteration below the paleowater table and a geochemical signature of Hg-As-Sb-Au. It explicitly lists hot-spring Au as an associated deposit type. [S15]

This makes Hg-Au a valid **system-scale** relationship, but it does not mean gold is contained in every cinnabar crystal or every cinnabar ore body.

### 5. Best candidates for Thelian Industries

- **Primary trace candidate:** **Antimony**, represented by disseminated stibnite or Sb sulfosalts rather than forced lattice substitution.
- **Secondary trace candidate:** **Gold**, but only in a hot-spring/epithermal specialized profile and preferably as fine native gold/electrum or a separate deeper gold zone.
- **Possible separate associated underground mineral:** **Gold-Bearing Quartz / epithermal Au body** beneath or adjacent to an Hg-rich near-surface zone.
- **Associations that should probably NOT be represented:** routine Pb-Zn-Cu from cinnabar; universal Au; generic uranium; arsenic as a high-value reward unless TI has a real chemical use for it.

**Source basis:** USGS hot-spring mercury model [S15], USGS epithermal Au-Ag model [S16].

---

## Uraninite -> Uranium (U)

### 1. Mineral composition

- **Formula:** `UO2` (ideal uraninite; natural uraninite may be nonstoichiometric).
- **Main elements:** U and O.
- **Common substitutions/impurities:** Th can substitute extensively in some igneous and pegmatitic uraninite; Y and REE can also be present. Ca and other cations may enter defect structures. Pb is extremely important in old uraninite because radiogenic Pb accumulates from U and Th decay and can eventually exsolve into microscopic Pb-rich phases. USGS describes uraninite as essentially UO2, commonly partly oxidized, with possible Th, Pb, rare-earth and Y-group impurities. [S14]
- **Important trace distinction:** vanadium is a famous companion of some uranium deposits, especially sandstone-hosted U-V systems, but V is **not a characteristic uraninite-lattice element**. It commonly occurs in separate vanadium minerals or U-V minerals.

### 2. Commonly associated minerals

| Associated mineral / common ore-mineral name | Chemical formula(s) | Main useful element(s) | Relationship | Typical frequency | Notes |
| --- | --- | --- | --- | --- | --- |
| Coffinite | `USiO4·nH2O` | U, Si | C | Common in sandstone and hydrothermal U ores | Major uranium silicate phase. |
| Carnotite/tyuyamunite and other U-V minerals | Carnotite `K2(UO2)2(VO4)2·3H2O`; tyuyamunite `Ca(UO2)2(VO4)2·5-8H2O`; other U-V minerals vary | U, V | C/D | Common in specific sandstone U-V districts | Strong U-V system link, not generic uraninite. |
| Pyrite | `FeS2` | Fe, S | C | Common in reduced sedimentary U deposits | Important reductant and redox indicator. |
| Organic/carbonaceous matter | No fixed mineral formula; carbon-rich organic matter is compositionally variable | C | C | Common in some sandstone/conglomerate systems | Helps reduce mobile U(VI) to insoluble U(IV). |
| Quartz/feldspar/mica | Quartz `SiO2`; K-feldspar `KAlSi3O8`; albite `NaAlSi3O8`; representative mica muscovite `KAl2(AlSi3O10)(OH)2` | Si, Al, K | C | Common | Gangue in vein, granite and pegmatite settings. |
| Thorianite/thorite | Thorianite `ThO2`; thorite `ThSiO4` | Th | C | Highly deposit-specific | More relevant in evolved igneous/pegmatitic systems. |
| REE/Y minerals | No single formula; representative monazite `(Ce,La,Nd,Th)PO4`; xenotime-(Y) `YPO4` | REE, Y | C | Highly deposit-specific | Accessory in pegmatitic or metasomatic U systems. |
| Base-metal sulfides | No single formula; representative galena `PbS`, sphalerite `ZnS`, chalcopyrite `CuFeS2` | Pb, Cu, Zn, Fe | C/D | Occasional | Hydrothermal vein systems may be polymetallic. |

### 3. Economically relevant associated elements

| Element | How it occurs | Commonness | Could plausibly be a TI trace output? |
| --- | --- | --- | --- |
| Th | A substitution in uraninite; C Th minerals | Common in pegmatitic uraninite, less so in many sedimentary ores | **Strong specialized candidate** if thorium is ever used. |
| Pb | Radiogenic daughter product, microscopic exsolution and alteration products | Common in old uraninite | Geologically important, but usually not an ore-grade Pb coproduct. |
| REE/Y | A substitution and C accessory minerals | Occasional | **Moderate specialized candidate** in granitic/pegmatitic U ore. |
| V | C/D U-V and V minerals in sandstone redox systems | Common in a major U deposit subtype | **Excellent system-scale trace/body candidate**, but do not describe as uraninite lattice V. |
| Cu | C/D sulfides in some hydrothermal or unconformity systems | Occasional | Profile-specific only. |
| Au | D in some unconformity/IOCG-related districts | Highly deposit-specific | Too weak for generic use. |

### 4. Typical deposit environments

Major uranium deposit families include **sandstone-hosted roll-front and tabular deposits**, **unconformity-related deposits**, **granite and pegmatite uranium**, hydrothermal veins, breccia-complex and IOCG-related systems, quartz-pebble conglomerates, phosphorites and other sedimentary accumulations. In many sandstone deposits, oxidized U(VI) is transported in groundwater and precipitated as reduced U(IV) minerals such as uraninite or coffinite at redox fronts. Uranium and vanadium can be strongly linked in certain sandstone systems, but the relationship is deposit-model-specific.

### 5. Best candidates for Thelian Industries

- **Primary trace candidate:** **Vanadium**, only in a dedicated sandstone U-V profile and modeled as separate/disseminated U-V or V phases.
- **Secondary trace candidate:** **Thorium** for a pegmatitic/granitic uraninite profile.
- **Possible separate associated underground mineral:** **Vanadium-rich sandstone lens** or U-V mineralized horizon in a U-V profile.
- **Associations that should probably NOT be represented:** Pb as a large routine coproduct merely because radiogenic lead is present; universal REE; universal Cu/Au.

**Source basis:** USGS uranium mineral descriptions and uranium deposit literature [S14], USGS phosphate uranium study for U substitution behavior [S13].

---

## Argentite -> Silver (Ag)

### Critical nomenclature note

The gameplay name **Argentite** is understandable as a historical ore-family label, but mineralogically it needs a caveat. Both argentite and acanthite have formula Ag2S. **Argentite is the high-temperature cubic phase stable above about 177 C; below that temperature it transforms to monoclinic acanthite.** Natural room-temperature specimens with an argentite-like cubic form are normally acanthite that retained the external form of the high-temperature phase. [S29]

For TI, the cleanest scientific wording is therefore: **"Argentite ore family (Ag2S; commonly preserved/occurring as acanthite at low temperature)."** You can retain the gameplay name without pretending that cubic argentite is the stable ordinary surface mineral.

### 1. Mineral composition

- **Formula:** `Ag2S`.
- **Main elements:** Ag and S.
- **Common substitutions/impurities:** Se is an important substitution/related chalcogen in Ag2S systems. Cu, Au, Te and other metals are more often represented by separate silver minerals, sulfosalts, tellurides or alloys rather than by simple substitution in acanthite/argentite.
- **Important trace behavior:** silver ores are mineralogically diverse. Ag may occur as Ag2S, native silver, electrum, Ag-Cu sulfides, sulfosalts, tellurides and selenides. Therefore, an "Argentite deposit" can realistically stand for an Ag-sulfide-rich ore family containing multiple silver phases.

### 2. Commonly associated minerals

| Associated mineral / common ore-mineral name | Chemical formula(s) | Main useful element(s) | Relationship | Typical frequency | Notes |
| --- | --- | --- | --- | --- | --- |
| Native silver | `Ag` | Ag | B/C | Common | Common in many Ag-rich hydrothermal veins. |
| Electrum/native gold | Electrum `(Au,Ag)`; native gold `Au` | Au, Ag | B/C | Common in Au-Ag epithermal systems | Strong silver-gold relationship in the correct deposit type. |
| Silver sulfosalts | Pyrargyrite `Ag3SbS3`; proustite `Ag3AsS3` (representative) | Ag, Sb, As | B/C | Common | Includes pyrargyrite/proustite/polybasite-type assemblages depending system. |
| Galena | `PbS` | Pb, Ag | C/D | Common | Strong in polymetallic Ag-Pb-Zn veins, SEDEX and some VMS systems. |
| Sphalerite | `ZnS` | Zn | C/D | Common | Common companion in polymetallic silver deposits. |
| Chalcopyrite | `CuFeS2` | Cu | C | Common in many polymetallic systems | Especially VMS and some epithermal veins. |
| Pyrite/arsenopyrite | Pyrite `FeS2`; arsenopyrite `FeAsS` | Fe, As, S | C | Common | Common sulfide gangue/accessory phases. |
| Quartz | `SiO2` | Si | C | Very Common | Typical hydrothermal gangue. |
| Calcite/adularia/barite | Calcite `CaCO3`; adularia/K-feldspar `KAlSi3O8`; barite `BaSO4` | Ca, K, Ba | C | Common | Common epithermal gangue assemblage. |
| Ag tellurides/selenides | Hessite `Ag2Te`; naumannite `Ag2Se` (representative) | Ag, Te, Se | B/C | Highly deposit-specific | Important in some precious-metal districts. |

### 3. Economically relevant associated elements

| Element | How it occurs | Commonness | Could plausibly be a TI trace output? |
| --- | --- | --- | --- |
| Au | B/C electrum/native gold; D Au-rich vein zones | Common in Au-Ag epithermal subtype | **Excellent specialized trace/coproduct.** |
| Pb | C galena; D Pb-rich polymetallic zones | Common | **Better as Galena associated body** than as Ag2S trace. |
| Zn | C sphalerite; D Zn-rich zones | Common | **Better as Sphalerite associated body** than as Ag2S trace. |
| Cu | C chalcopyrite/Cu-Ag sulfides | Occasional to Common | Good in VMS/polymetallic profile. |
| Se | A substitution and C silver selenides | Occasional | Scientifically defensible additional-element trace. |
| Te | C Ag/Au tellurides | Highly deposit-specific | Excellent specialized precious-metal chemistry, not default. |
| Sb/As | C sulfosalts | Common in some Ag veins | Geologically strong; gameplay value depends on chemistry system. |

### 4. Typical deposit environments

Ag2S occurs in **epithermal Au-Ag veins**, polymetallic base-metal veins, replacement systems and as a silver phase in some VMS and sediment-hosted Pb-Zn-Ag deposits. USGS epithermal models describe shallow hydrothermal systems below about 300 C that can also contain Pb, Zn, Cu and Hg. Historic USGS models for Comstock-style veins list Ag2S-type silver mineralization with gold/electrum, galena, sphalerite, chalcopyrite, tellurides and quartz-rich gangue. [S16]

### 5. Best candidates for Thelian Industries

- **Primary trace candidate:** **Gold**, represented mainly by electrum/native gold or separate precious-metal phases.
- **Secondary trace candidate:** **Copper** in a polymetallic/VMS profile, or **Se/Te** if TI adds chalcogen byproducts.
- **Possible separate associated underground mineral:** **Galena** and/or **Sphalerite** bodies in a polymetallic Ag-Pb-Zn system.
- **Associations that should probably NOT be represented:** Pb and Zn as Ag2S lattice substitutions; universal Au; treating "argentite" as the stable room-temperature Ag2S structure without the acanthite caveat.

**Source basis:** Mindat argentite/acanthite phase relations [S29], USGS epithermal and polymetallic models [S16, S03].

---

## Ice Fields -> Water (H2O)

### 1. Composition and useful impurities

Ice fields are not an ore mineral in the same sense as the metallic resources above. Their primary phase is crystalline H2O ice, potentially mixed with regolith, dust and volatile-bearing frost.

- **Formula:** `H2O` for the ice phase. The bulk ice-field resource has no single formula because regolith, salts, and trapped volatiles may be mixed with the water ice.

If **Luna is intended to be Moon-like**, the safest real-world analogue is polar cold-trap ice mixed with regolith rather than terrestrial glacier ice. Plausible non-water components include:

- silicate/regolith dust;
- chloride, sulfate or other salts if the ice has interacted with brines or evaporitic material;
- CO2, CO, NH3, CH4, SO2 or other volatile species in extraterrestrial cold-trap analogues, depending on planetary history;
- impact-delivered or volcanically delivered volatiles.

These should be treated as **environmental impurities or volatile chemistry**, not as metal-ore traces.

### 2. TI recommendation

- **Primary trace candidate:** none required.
- **Secondary trace candidate:** none required.
- **Possible associated body:** a **salt/brine lens** only if Luna's worldbuilding includes ancient brines or evaporites.
- **Do not represent:** arbitrary metal ores dissolved in ice without a specific geochemical mechanism.

For gameplay, a default clean-ice profile plus an optional **Volatile-Rich Ice** or **Saline Ice** profile would be more defensible than turning ice into a general trace-metal source.

---

# Part III. Vulcanus mineral families

## Pyrolusite -> Manganese (Mn)

### 1. Mineral composition

- **Formula:** `MnO2`.
- **Main elements:** Mn4+ and O.
- **Common substitutions/impurities:** natural manganese-oxide ores are often extremely fine-grained and mineralogically mixed. Fe, Ba, K, Na, Ca, Co, Ni, Cu and other metals may occur in associated Mn oxides, tunnel-structure minerals, oxyhydroxides or adsorbed forms. It is unsafe to attribute the entire bulk chemistry of a manganese-oxide ore to pyrolusite itself.
- **Important qualification:** many field occurrences historically labeled "pyrolusite" contain cryptomelane, birnessite, todorokite, manganite, ramsdellite and related Mn phases. A TI "Pyrolusite" resource can reasonably represent a pyrolusite-dominant Mn-oxide ore family, but the beneficiation system should allow other Mn oxides as separate phases.

### 2. Commonly associated minerals

| Associated mineral / common ore-mineral name | Chemical formula(s) | Main useful element(s) | Relationship | Typical frequency | Notes |
| --- | --- | --- | --- | --- | --- |
| Manganite | `MnO(OH)` | Mn | C | Common | Common manganese oxyhydroxide companion. |
| Cryptomelane/hollandite-group Mn oxides | Cryptomelane, idealized `KMn8O16`; hollandite-group Mn oxides are variable tunnel oxides (representative hollandite `BaMn8O16`) | Mn, K/Ba; can host trace metals | C | Common | Important in supergene and hydrothermal Mn ores. |
| Birnessite/todorokite-type phases | Birnessite, generalized `(Na,Ca)0.5Mn2O4·1.5H2O`; todorokite, generalized `(Na,Ca,K,Ba,Sr)1-x(Mn,Mg,Al)6O12·3-4H2O` | Mn; can sorb Ni, Co, Cu | C | Common in sedimentary/marine Mn systems | Major trace-metal hosts in nodules/crusts, even when pyrolusite is not dominant. |
| Goethite/hematite | Goethite `FeO(OH)`; hematite `Fe2O3` | Fe | C | Common | Fe-Mn oxide association in weathered deposits. |
| Quartz/chalcedony | `SiO2` | Si | C | Common | Gangue in veins and sedimentary deposits. |
| Calcite/dolomite | Calcite `CaCO3`; dolomite `CaMg(CO3)2` | Ca, Mg | C | Occasional to Common | Carbonate gangue. |
| Barite | `BaSO4` | Ba | C | Occasional | Hydrothermal/sedimentary association. |
| Rhodochrosite | `MnCO3` | Mn | C/D | Occasional | Carbonate precursor or deeper Mn zone in some deposits. |

### 3. Economically relevant associated elements

| Element | How it occurs | Commonness | Could plausibly be a TI trace output? |
| --- | --- | --- | --- |
| Co | B/C adsorbed/substituted in Mn oxides or discrete Co-rich Mn phases | Occasional; strong in some nodules/crusts and supergene ores | **Moderate specialized candidate.** Do not imply generic pyrolusite-Co solid solution. |
| Ni | B/C adsorbed/substituted in poorly crystalline Mn oxides | Occasional | **Moderate specialized candidate**, especially marine/nodule-like profile. |
| Cu | B/C adsorbed or sulfide association in polymetallic Mn deposits | Occasional | Specialized only. |
| Mo | Surface sorption in marine Fe-Mn oxides | Highly deposit-specific | Geologically real, weak default gameplay candidate. |
| Fe | C Fe oxides | Common | Usually gangue or grade dilution. |
| Ba/K | A/B/C in tunnel Mn oxides such as cryptomelane/hollandite | Common in those mineral subtypes | Mineralogical indicator, not normally a desired metal coproduct. |

### 4. Typical deposit environments

Pyrolusite and related manganese oxides occur in **supergene weathering zones**, residual/lateritic Mn accumulations, hydrothermal veins and hot-spring deposits, sedimentary Mn beds, and marine ferromanganese nodules/crusts. USGS work documents pyrolusite as a mineral that can form by both supergene and hypogene processes, and recognizes linked volcanic/hot-spring manganese oxide systems. [S28]

Polymetallic marine nodules can be rich in Mn together with Ni, Cu and Co, but their dominant Mn mineralogy is commonly poorly crystalline birnessite/vernadite/todorokite rather than pure pyrolusite. Therefore, a "Co-Ni pyrolusite" profile should be presented as a **Mn-oxide ore abstraction**, not as a claim that pure pyrolusite universally carries those metals.

### 5. Best candidates for Thelian Industries

- **Primary trace candidate:** **Cobalt**, in an explicitly cobaltiferous supergene or Mn-oxide profile.
- **Secondary trace candidate:** **Nickel**, especially if representing a polymetallic Mn-oxide/nodule analogue.
- **Possible separate associated underground mineral:** **Rhodochrosite or deeper Mn-carbonate zone**, if the deposit is modeled as oxidized surface Mn over reduced carbonate material. A distinct Co-rich Mn horizon is another possibility.
- **Associations that should probably NOT be represented:** routine Cu-Ni-Co-Mo all at once; those combinations are strongest in marine nodule/crust systems and should be a dedicated profile, not the standard pyrolusite rule.

**Source basis:** USGS manganese oxide geology [S28].

---

## Cobaltite -> Cobalt (Co)

### 1. Mineral composition

- **Formula:** `CoAsS`.
- **Main elements:** Co, As and S.
- **Common substitutions/solid solution:** Fe and Ni can substitute significantly for Co. Cobaltite forms solid-solution relationships toward Fe/Ni-bearing sulfarsenides in natural systems. Sb and Bi may occur as minor impurities in some material.
- **Important trace elements within cobaltite:** **Ni and Fe** are the most structurally plausible major substitutions. Economically interesting Au, Cu, Ag, Bi and W are usually present as **separate minerals or deposit-scale associations**, not as simple cobaltite lattice constituents.

### 2. Commonly associated minerals

| Associated mineral / common ore-mineral name | Chemical formula(s) | Main useful element(s) | Relationship | Typical frequency | Notes |
| --- | --- | --- | --- | --- | --- |
| Arsenopyrite | `FeAsS` | As, Fe | C | Common | Major sulfarsenide companion. |
| Glaucodot | `(Co,Fe)AsS` | Co, Fe, As, S | C | Common in Co sulfarsenide systems | Closely related Co-Fe sulfarsenide. |
| Skutterudite and Ni-Co arsenides | Skutterudite `CoAs3`; Ni-Co arsenides vary by species | Co, Ni, As | C | Common in five-element and arsenide systems | Strong Co-Ni association in particular vein types. |
| Pyrite/pyrrhotite | Pyrite `FeS2`; pyrrhotite `Fe1-xS` | Fe, S | C | Common | Major sulfide gangue/ore minerals. |
| Chalcopyrite | `CuFeS2` | Cu | C/D | Common in Co-Cu-Au metasedimentary deposits | Strong deposit-scale association. |
| Native gold | `Au` | Au | B/C | Occasional | Locally important in Co-Cu-Au deposits. |
| Bismuth/bismuthinite | Native bismuth `Bi`; bismuthinite `Bi2S3` | Bi | C | Occasional | Strong in some Co-Au-Bi systems. |
| Scheelite | `CaWO4` | W | C | Occasional | Present in some metasedimentary Co-Cu-Au systems. |
| Monazite/allanite/xenotime | Monazite `(Ce,La,Nd,Th)PO4`; allanite-(Ce) `CaCeAl2Fe(Si2O7)(SiO4)O(OH)`; xenotime-(Y) `YPO4` | REE, Y | C | Highly deposit-specific | Locally important in complex Co-REE systems. |
| Quartz, biotite, albite, K-feldspar, chlorite | Quartz `SiO2`; biotite approx. `K(Mg,Fe)3AlSi3O10(F,OH)2`; albite `NaAlSi3O8`; K-feldspar `KAlSi3O8`; representative chlorite/clinochlore `Mg5Al(AlSi3O10)(OH)8` | Si, Al, K, Na, Mg | C | Common | Typical gangue/alteration assemblages. |

### 3. Economically relevant associated elements

| Element | How it occurs | Commonness | Could plausibly be a TI trace output? |
| --- | --- | --- | --- |
| Ni | A substitution in cobaltite; C Ni arsenides | Common | **Excellent.** Best true mineral-level TI-roster trace candidate. |
| Cu | C chalcopyrite and D Cu-rich zones | Common in Co-Cu-Au subtype | **Excellent specialized coproduct**, but a separate mineral phase. |
| Au | B/C native gold, telluride association, sulfide-related Au | Occasional to Common in Co-Cu-Au subtype | **Strong specialized trace** if that deposit model is chosen. |
| Ag | C native silver/sulfarsenide/arsenide assemblages | Occasional | Good for a five-element vein profile. |
| Bi | C native Bi/bismuthinite | Occasional | Strong additional-element candidate. |
| W | C scheelite | Occasional | Good in a complex metasedimentary profile; not generic cobaltite. |
| REE/Y/U | C accessory monazite, allanite, xenotime, uraninite | Highly deposit-specific | Better as special system-scale association than cobaltite trace. |

### 4. Typical deposit environments

Cobaltite occurs in several hydrothermal settings, including **metasedimentary Co-Cu-Au deposits**, five-element Co-Ni-Ag-Bi-As veins, contact-metamorphic and skarn systems, and other sulfarsenide-rich hydrothermal ores. USGS describes metasedimentary Co-Cu-Au deposits as disseminated to semi-massive Co sulfarsenides/sulfides with Fe and Cu sulfides and local gold; cobaltite is a principal ore mineral. Some deposits also contain appreciable Ag, Bi, W, Ni, Y, REE and U. [S10] More broadly, much world cobalt is actually produced as a byproduct from Cu and Ni deposits rather than from cobaltite-dominant ore. [S11]

### 5. Best candidates for Thelian Industries

- **Primary trace candidate:** **Nickel**, because it can genuinely substitute for Co in cobaltite and also occurs in associated arsenides.
- **Secondary trace candidate:** **Gold or copper** depending deposit profile. These are separate phases, not cobaltite-lattice substitutions.
- **Possible separate associated underground mineral:** **Chalcopyrite-rich Cu body** or, for a five-element vein profile, a **Ni-arsenide zone**.
- **Associations that should probably NOT be represented:** universal Au, REE, U or W. These are strong only in particular cobalt districts.

**Source basis:** USGS Co-Cu-Au model and cobalt deposit synthesis [S10, S11].

---

## Chromite -> Chromium (Cr)

### 1. Mineral composition

- **Formula:** `FeCr2O4` for ideal chromite; natural chromite belongs to a variable spinel solid solution that can be represented approximately as `(Fe,Mg)(Cr,Al,Fe)2O4`.
- **Main elements:** Cr, Fe, O, commonly significant Mg and Al in natural chromite/spinel solid solutions.
- **Common substitutions:** Mg for Fe2+; Al and Fe3+ for Cr3+; Ti and Mn can occur at lesser levels. Natural chromite composition varies strongly with parent magma and tectonic environment.
- **Important trace distinction:** PGEs are commonly concentrated in **discrete platinum-group minerals and sulfide phases** associated with chromitite layers. They should not be described as though platinum normally substitutes into chromite at economic levels.

### 2. Commonly associated minerals

| Associated mineral / common ore-mineral name | Chemical formula(s) | Main useful element(s) | Relationship | Typical frequency | Notes |
| --- | --- | --- | --- | --- | --- |
| Olivine | `(Mg,Fe)2SiO4` | Mg, Fe | C | Very Common | Characteristic ultramafic host mineral. |
| Orthopyroxene/clinopyroxene | Orthopyroxene approx. `(Mg,Fe)SiO3`; representative clinopyroxene diopside `CaMgSi2O6` | Mg, Fe, Ca | C | Very Common | Major layered-intrusion gangue/host minerals. |
| Plagioclase | Series `(Na,Ca)(Si,Al)4O8`; albite `NaAlSi3O8`; anorthite `CaAl2Si2O8` | Al, Ca, Na | C | Common in layered intrusions | More abundant in gabbroic/anorthositic units. |
| Magnetite | `Fe3O4` | Fe | C | Common | Fe oxide association. |
| Pentlandite | `(Fe,Ni)9S8` | Ni, Co | C/D | Occasional | Sulfide-bearing layers in large mafic-ultramafic complexes. |
| Chalcopyrite | `CuFeS2` | Cu | C/D | Occasional | Accompanies magmatic sulfide mineralization. |
| Pyrrhotite | `Fe1-xS` | Fe, S | C | Occasional | Magmatic sulfide assemblage. |
| PGM such as laurite, cooperite, braggite, sperrylite | Laurite `RuS2`; cooperite `PtS`; braggite `PdPt3S4`; sperrylite `PtAs2` | PGE | B/C/D | Common in PGE-rich chromitite subtype | Strongest economic association. |
| Ilmenite/rutile | Ilmenite `FeTiO3`; rutile `TiO2` | Ti | C | Occasional | Present in some stratiform chromite deposits. |
| Serpentine/talc/chlorite | Representative serpentine `Mg3Si2O5(OH)4`; talc `Mg3Si4O10(OH)2`; representative chlorite/clinochlore `Mg5Al(AlSi3O10)(OH)8` | Mg, Si | C | Common in altered ultramafic rocks | Secondary alteration phases. |

### 3. Economically relevant associated elements

| Element | How it occurs | Commonness | Could plausibly be a TI trace output? |
| --- | --- | --- | --- |
| Pt and other PGE | B/C discrete PGM; D PGE-rich reef/chromitite horizon | Common in certain stratiform chromitite systems | **Excellent specialized association.** One of the strongest Cr-PGE links. |
| Ni | C pentlandite; D sulfide lenses | Occasional | **Good associated-body candidate**, not chromite trace. |
| Cu | C chalcopyrite; D sulfide lenses | Occasional | Good in sulfide-bearing layered-intrusion profile. |
| Ti | A minor substitution; C ilmenite/rutile | Occasional | Plausible, but not generally an economic chromite coproduct. |
| Mg/Al | A major solid-solution components | Very Common | Important ore chemistry, but not normally separate valuable coproducts. |

### 4. Typical deposit environments

Two major chromium ore models dominate:

1. **Stratiform chromite deposits** in large layered mafic-ultramafic intrusions. Chromitite seams can extend laterally for great distances and may carry significant PGE mineralization. USGS identifies olivine, pyroxenes, plagioclase, sulfides and PGM as associated phases. [S05]
2. **Podiform chromite deposits** in ophiolitic mantle peridotite, especially dunite and harzburgite. These can locally carry PGE, but PGE enrichment is more variable than in world-class stratiform PGE-bearing complexes.

### 5. Best candidates for Thelian Industries

- **Primary trace candidate:** **Platinum/PGE**, but as separate microscopic PGM phases within a **PGE-bearing stratiform chromitite** profile.
- **Secondary trace candidate:** **Nickel**, if a sulfide-bearing layered-intrusion profile is implemented.
- **Possible separate associated underground mineral:** **Sperrylite/PGE reef** or **Pentlandite-rich Ni sulfide lens** in the same layered intrusion.
- **Associations that should probably NOT be represented:** universal PGE in all chromite, or universal Ni/Cu in podiform chromite. The PGE relationship is strong but deposit-type dependent.

**Source basis:** USGS stratiform chromite model [S05], layered-intrusion PGE model [S25].

---

# Part IV. Fulgora mineral families

## Zircon -> Zirconium (Zr)

### 1. Mineral composition

- **Formula:** `ZrSiO4`.
- **Main elements:** Zr, Si and O.
- **Common substitutions/impurities:** Hf4+ substitutes extremely readily for Zr4+ because of their nearly identical ionic behavior. U, Th, Y, REE and P are common trace constituents in natural zircon; radiation damage can make old U-Th-rich zircon metamict.
- **Most important economic trace:** **Hafnium.** USGS notes that zircon is the primary source of essentially all Hf and that natural zircon commonly has a Zr:Hf ratio around 50:1. [S07]

### 2. Commonly associated minerals

| Associated mineral / common ore-mineral name | Chemical formula(s) | Main useful element(s) | Relationship | Typical frequency | Notes |
| --- | --- | --- | --- | --- | --- |
| Ilmenite | `FeTiO3` | Ti | C | Very Common in economic heavy-mineral sands | One of the strongest roster cross-links. |
| Rutile/leucoxene | Rutile `TiO2`; leucoxene has no fixed formula and is a TiO2-rich alteration aggregate | Ti | C | Very Common in heavy-mineral sands | Major Ti feedstocks. |
| Monazite | General `(Ce,La,Nd,Th)PO4`; monazite-(Ce) `CePO4` | LREE, Th | C | Common | Important REE-bearing heavy mineral. |
| Xenotime | `YPO4` | Y, HREE | C | Occasional | Heavy-mineral-sand REE accessory. |
| Garnet | Garnet group `X3Y2(SiO4)3`; representative almandine `Fe3Al2(SiO4)3` | Fe, Mg, Mn, Ca | C | Common | Industrial heavy-mineral coproduct in some sands. |
| Staurolite/kyanite/sillimanite | Staurolite approx. `Fe2Al9Si4O23(OH)`; kyanite `Al2SiO5`; sillimanite `Al2SiO5` | Al, Si | C | Common in some placers | Industrial mineral coproducts. |
| Chromite | Ideal `FeCr2O4`; natural spinel solid solution variable | Cr | C | Occasional | Depends strongly on source terrane. |
| Cassiterite | `SnO2` | Sn | C | Occasional | More important in placer systems derived from tin granites. |

### 3. Economically relevant associated elements

| Element | How it occurs | Commonness | Could plausibly be a TI trace output? |
| --- | --- | --- | --- |
| Hf | A direct lattice substitution for Zr | Very Common | **Excellent.** Strongest genuine zircon-level trace candidate. |
| U | A substitution | Common at trace levels | Possible radiological impurity, usually not an economic coproduct from ordinary zircon. |
| Th | A substitution | Common at trace levels | Same caution as U. |
| REE/Y | A trace substitution; C monazite/xenotime in placers | Common trace, stronger as separate minerals | Better modeled through monazite/xenotime concentrate than as zircon REE recovery. |
| Ti | C ilmenite/rutile/leucoxene | Very Common in economic placers | **Excellent beneficiation coproduct**, but not inside zircon. |
| Nd/LREE | C monazite | Common in some placers | **Excellent separate mineral-phase coproduct**, not zircon lattice Nd. |

### 4. Typical deposit environments

Zircon is a common accessory mineral in felsic and alkaline igneous rocks and survives weathering exceptionally well. The world's principal economic zircon supply comes from **heavy-mineral sand placers and paleoplacers**, especially coastal and fluvial systems where hydraulic and aeolian sorting concentrate dense resistant grains. USGS heavy-mineral-sand models identify zircon together with ilmenite, rutile/leucoxene and, in some deposits, monazite, garnet, staurolite and aluminosilicate minerals. [S06, S07]

Primary zirconium deposits also occur in alkaline igneous complexes, but they are much less important globally than heavy-mineral sands.

### 5. Best candidates for Thelian Industries

- **Primary trace candidate:** **Hafnium**, as a true lattice coproduct.
- **Secondary trace candidate:** **Titanium**, but only in a heavy-mineral-sand profile and explicitly from separate ilmenite/rutile grains.
- **Possible separate associated underground mineral:** none is necessary for a placer model because ilmenite and monazite are **co-mingled mineral grains in the same sediment body**, not deeper ore bodies. If TI needs the reserve-pool mechanic, a nearby **Ilmenite-rich strandline lens** is geologically defensible.
- **Associations that should probably NOT be represented:** uranium or thorium as large routine zircon outputs; REE as though monazite were part of the zircon lattice.

**Source basis:** USGS zirconium-hafnium synthesis and heavy-mineral-sand model [S06, S07].

---

## Pentlandite -> Nickel (Ni)

### 1. Mineral composition

- **Formula:** `(Fe,Ni)9S8`.
- **Main elements:** Ni, Fe and S.
- **Common substitutions/impurities:** Co commonly substitutes into pentlandite and related pentlandite-group compositions. Minor Cu and precious-metal-group elements can occur, but much of the Cu and PGE inventory of magmatic sulfide ores resides in **other sulfides or discrete PGM** rather than uniformly in pentlandite.
- **Important trace behavior:** pentlandite is one of the strongest geological hosts for **cobalt associated with nickel**, and magmatic Ni-Cu sulfide deposits are major sources of Co and PGE byproducts. [S04]

### 2. Commonly associated minerals

| Associated mineral / common ore-mineral name | Chemical formula(s) | Main useful element(s) | Relationship | Typical frequency | Notes |
| --- | --- | --- | --- | --- | --- |
| Pyrrhotite | `Fe1-xS` | Fe, S | C | Very Common | Major Fe sulfide in magmatic Ni-Cu ores. |
| Chalcopyrite | `CuFeS2` | Cu | C/D | Very Common | Principal Cu sulfide companion. |
| Cubanite | `CuFe2S3` | Cu, Fe | C | Common | Common in some magmatic sulfide assemblages. |
| Magnetite | `Fe3O4` | Fe | C | Common | USGS notes 1-15% magnetite in some Ni-Cu sulfide ores. |
| PGM including sperrylite and Pt/Pd sulfides/tellurides | Sperrylite `PtAs2`; cooperite `PtS`; braggite `PdPt3S4`; PGE tellurides vary by species | Pt, Pd, Rh, etc. | B/C/D | Common in PGE-bearing subtype | Economic byproducts or primary commodities in some systems. |
| Chromite | Ideal `FeCr2O4`; natural spinel solid solution variable | Cr | C/D | Occasional | Layered intrusion association; spatial relation can vary. |
| Olivine/pyroxene/plagioclase | Olivine `(Mg,Fe)2SiO4`; representative pyroxenes `(Mg,Fe)SiO3` and `CaMgSi2O6`; plagioclase `(Na,Ca)(Si,Al)4O8` | Mg, Fe, Ca, Al | C | Very Common | Mafic-ultramafic host minerals. |

### 3. Economically relevant associated elements

| Element | How it occurs | Commonness | Could plausibly be a TI trace output? |
| --- | --- | --- | --- |
| Co | A substitution in pentlandite and other sulfides | Very Common in magmatic Ni sulfide ore | **Excellent.** Strongest Ni trace candidate. |
| Cu | C chalcopyrite/cubanite; D Cu-rich sulfide zones | Very Common | **Excellent beneficiation coproduct**, but separate phase. |
| Pt/PGE | B/C discrete PGM and partial sulfide-hosted PGE | Common in magmatic Ni-Cu-PGE systems | **Excellent specialized coproduct.** |
| Au | B/C precious-metal phases and sulfides | Common as byproduct in many magmatic Ni-Cu deposits | Good specialized second trace. |
| Cr | C chromite; D chromitite layers | Occasional | Better as an associated body in a layered-intrusion profile. |

USGS explicitly states that magmatic Ni-Cu sulfide mineralization is typically an intergrowth of pyrrhotite, pentlandite and chalcopyrite, and that Co, PGE and Au are extracted as byproducts from many such ores. [S04]

### 4. Typical deposit environments

Pentlandite is characteristic of **magmatic Ni-Cu sulfide deposits** hosted by mafic and ultramafic intrusions, conduits, dikes, sills and layered complexes. Sulfide liquid segregates from silicate magma and concentrates chalcophile metals. Ore can be disseminated, net-textured or massive and is commonly localized near the base of intrusions or in magma conduits. Related layered-intrusion systems may also contain stratiform chromitite and PGE reefs.

### 5. Best candidates for Thelian Industries

- **Primary trace candidate:** **Cobalt**, including true lattice/sulfide-hosted Co.
- **Secondary trace candidate:** **Platinum/PGE**, as discrete microscopic PGM and sulfide-hosted precious metals.
- **Possible separate associated underground mineral:** **Chalcopyrite-rich copper sulfide zone**, **Sperrylite/PGE reef**, or, more selectively, a **Chromite layer** in a layered intrusion.
- **Associations that should probably NOT be represented:** treating all Ni deposits as PGE-rich; treating Cu as a pentlandite lattice element rather than a chalcopyrite-rich co-ore.

**Source basis:** USGS magmatic Ni-Cu-PGE occurrence model [S04], USGS layered-intrusion PGE model [S25].

---

# Part V. Gleba mineral families

## Sphalerite -> Zinc (Zn)

### 1. Mineral composition

- **Formula:** `ZnS`.
- **Main elements:** Zn and S.
- **Major solid solution:** Fe commonly substitutes for Zn and can range from minor levels to very Fe-rich sphalerite. Mn, Cd, Hg and Co can also substitute.
- **Critical trace elements:** **Cd, Ga, Ge and In** are among the most economically important trace elements associated with sphalerite. Cu can participate in coupled substitution mechanisms, particularly with In and other multivalent trace elements.
- **Important distinction:** Pb and Ag in a Zn ore are commonly hosted by **galena, silver minerals, sulfosalts or other phases**, not by sphalerite lattice substitution. [S02, S22]

### 2. Commonly associated minerals

| Associated mineral / common ore-mineral name | Chemical formula(s) | Main useful element(s) | Relationship | Typical frequency | Notes |
| --- | --- | --- | --- | --- | --- |
| Galena | `PbS` | Pb, Ag | C/D | Very Common | Characteristic Pb-Zn association in MVT, SEDEX and many polymetallic veins. |
| Pyrite/marcasite | Pyrite `FeS2`; marcasite `FeS2` | Fe, S | C | Common | Iron sulfide gangue/ore phases. |
| Chalcopyrite | `CuFeS2` | Cu | C/D | Common in VMS, less in many MVT ores | Important Cu-bearing companion. |
| Barite | `BaSO4` | Ba | C | Common in sediment-hosted Zn-Pb systems | Common gangue or stratiform companion. |
| Calcite/dolomite | Calcite `CaCO3`; dolomite `CaMg(CO3)2` | Ca, Mg | C | Very Common in MVT | Host and gangue carbonates. |
| Quartz | `SiO2` | Si | C | Common | More important in veins and VMS/SEDEX alteration zones than in many MVT deposits. |
| Greenockite | `CdS` | Cd | B/C | Occasional, commonly microscopic or supergene | CdS associated with sphalerite weathering. |
| Silver sulfides/sulfosalts | Acanthite/argentite `Ag2S`; pyrargyrite `Ag3SbS3`; proustite `Ag3AsS3` | Ag, Sb, As | B/C | Occasional | Important in Ag-rich Pb-Zn systems. |

### 3. Economically relevant associated elements

| Element | How it occurs | Commonness | Could plausibly be a TI trace output? |
| --- | --- | --- | --- |
| Cd | A substitutes directly for Zn; B/C microscopic greenockite locally | Very Common as minor sphalerite constituent | **Excellent.** The strongest additional-element trace candidate. [S22] |
| Ge | A substitution and nanoscale/defect-controlled incorporation in sphalerite | Occasional to Common in Ge-rich Zn districts | **Excellent specialized candidate.** Sphalerite is the principal Ge host in many Zn ores. [S22] |
| Ga | A substitution for Zn and defect-coupled mechanisms | Occasional | **Strong specialized candidate.** Also geologically linked to bauxite. [S20] |
| In | A coupled substitution, commonly involving Cu | Occasional | **Strong specialized candidate** in particular VMS/SEDEX and polymetallic Zn ores. |
| Fe | A major solid-solution component | Very Common | Mineral chemistry, but not usually a valuable zinc coproduct. |
| Pb | C galena; D Pb-rich zones | Very Common at deposit scale | **Excellent associated Galena body**, not a sphalerite trace. |
| Ag | C galena/silver minerals/sulfosalts | Common in some Pb-Zn districts | Good specialized beneficiation output, but host phase must be specified. |
| Cu | C chalcopyrite; D Cu-rich VMS zone | Common in VMS subtype | Good associated body in a VMS profile. |

### 4. Typical deposit environments

Sphalerite occurs in **MVT**, **SEDEX**, **VMS**, carbonate replacement, skarn and polymetallic hydrothermal vein deposits. These environments strongly influence trace chemistry. MVT ores are typically sphalerite-galena dominated in carbonate hosts. SEDEX can produce giant stratiform Zn-Pb-Ag systems. VMS deposits are hydrothermal seafloor systems where Zn-Pb may occur with Cu-Au-Ag. [S02, S03]

The distribution of critical elements is highly deposit-dependent. A Cd-bearing sphalerite profile can be broadly defensible; Ge-Ga-In enrichment should be reserved for explicitly specialized zinc districts.

### 5. Best candidates for Thelian Industries

- **Primary trace candidate:** **Cadmium**, because it directly substitutes for Zn and is commonly recovered as a Zn-smelting byproduct.
- **Secondary trace candidate:** **Germanium** or **Gallium**, depending which additional element is more useful to TI. Ge is especially attractive because sphalerite is a recognized primary host in recoverable Ge-bearing Zn deposits.
- **Possible separate associated underground mineral:** **Galena**. In a VMS subtype, a **Chalcopyrite-rich Cu lens** is also strongly defensible.
- **Associations that should probably NOT be represented:** Pb as sphalerite lattice trace; universal Ag; universal Ge-Ga-In in every zinc deposit.

**Source basis:** USGS MVT and VMS models [S02, S03], USGS cadmium and germanium/sphalerite studies [S22], USGS gallium synthesis [S20].

---

## Calcite / Limestone -> Calcium / Calcium-bearing industrial feed

### 1. Mineral composition

**Calcite** is a mineral; **limestone** is a carbonate rock.

- **Formula:** Calcite is `CaCO3`. Limestone has no single chemical formula; it is commonly dominated by calcite `CaCO3`, with variable dolomite `CaMg(CO3)2` and other minerals.
- **Calcite formula:** CaCO3.
- **Main elements:** Ca, C, O.
- **Common substitutions in calcite:** Mg, Fe, Mn and Sr can substitute for Ca to varying degrees. Extensive Mg enrichment is generally represented by **dolomite, CaMg(CO3)2**, rather than arbitrary unlimited Mg in calcite.
- **Common limestone constituents:** calcite, dolomite, fossils/bioclasts, quartz/chert, clay minerals, pyrite, organic matter and locally apatite/phosphatic material.
- **Important distinction:** limestone can be the **host rock** for Pb-Zn, fluorite, barite, skarn and replacement deposits. These metals are not inherent trace constituents of ordinary limestone.

### 2. Commonly associated minerals

| Associated mineral / common ore-mineral name | Chemical formula(s) | Main useful element(s) | Relationship | Typical frequency | Notes |
| --- | --- | --- | --- | --- | --- |
| Dolomite | `CaMg(CO3)2` | Mg, Ca | C | Very Common in carbonate successions | Strongest useful Ca-resource coproduct relationship. |
| Quartz/chert | Quartz/chert `SiO2` | Si | C | Common | Detrital, biogenic or diagenetic silica. |
| Clay minerals | No single formula; representative kaolinite `Al2Si2O5(OH)4` and illite `K0.6-0.85Al2(Si,Al)4O10(OH)2` | Al, Si, K | C | Common | Common impurities. |
| Pyrite | `FeS2` | Fe, S | C | Common in reducing limestones | Usually impurity. |
| Apatite/phosphate grains | General apatite `Ca5(PO4)3(F,Cl,OH)`; fluorapatite `Ca5(PO4)3F` | P, Ca | B/C | Occasional | More important in phosphatic limestone and phosphorite transitions. |
| Galena | `PbS` | Pb | D | Highly deposit-specific at limestone-resource scale | MVT/CRD mineralization overprint. |
| Sphalerite | `ZnS` | Zn | D | Highly deposit-specific at limestone-resource scale | Same distinction as galena. |
| Fluorite/barite | Fluorite `CaF2`; barite `BaSO4` | F/Ba | C/D | Occasional in mineralized carbonate districts | Hydrothermal overprint. |
| Skarn silicates and sulfides | No single formula; representative grossular `Ca3Al2(SiO4)3`, andradite `Ca3Fe2(SiO4)3`, diopside `CaMgSi2O6`; sulfides commonly chalcopyrite `CuFeS2`, sphalerite `ZnS`, galena `PbS` | Fe, Cu, Zn, W, Sn, etc. | D | Highly deposit-specific | Contact-metasomatic replacement near intrusions. |

### 3. Economically relevant associated elements

| Element | How it occurs | Commonness | Could plausibly be a TI trace output? |
| --- | --- | --- | --- |
| Mg | A minor calcite substitution and, more importantly, C dolomite | Very Common at carbonate-rock scale | **Excellent specialized coproduct** in dolomitic limestone. |
| Sr | A substitution in calcite/aragonite and C celestite locally | Common at trace levels | Weak gameplay output unless Sr is needed. |
| Mn | A substitution and C rhodochrosite/ankerite-type carbonate | Occasional | Possible specialized carbonate chemistry, not routine. |
| P | B/C apatite or phosphatic fossils | Occasional | **Good in a phosphatic-limestone profile**, especially as transition toward phosphorite. |
| Pb | D galena mineralization hosted by carbonate rocks | Highly deposit-specific | **Use as associated ore body, never default limestone trace.** |
| Zn | D sphalerite mineralization hosted by carbonate rocks | Highly deposit-specific | **Use as associated ore body, never default limestone trace.** |

### 4. Typical deposit environments

Limestone forms mainly in **marine carbonate platforms, shelves, reefs, ramps and basins**, with some lacustrine carbonates. It can undergo dolomitization, burial diagenesis and metamorphism to marble. Carbonate platforms are also major hosts for **MVT Pb-Zn deposits**, but the mineralizing fluids arrive later and precipitate galena and sphalerite in fractures, breccias, dissolution cavities and replacement bodies. USGS MVT models stress that the deposits are hosted mainly by dolostone and limestone and contain sphalerite and galena, but are separate ore mineralization rather than intrinsic limestone chemistry. [S02]

### 5. Best candidates for Thelian Industries

- **Primary trace candidate:** **Magnesium**, best implemented as a **Dolomitic Limestone** profile where dolomite is a major associated carbonate phase.
- **Secondary trace candidate:** **Phosphorus**, in a phosphatic limestone subtype, if this does not conflict with the separate phosphorite progression.
- **Possible separate associated underground mineral:** **Galena and/or Sphalerite MVT body** beneath or within carbonate terrain. This is an excellent use of category D.
- **Associations that should probably NOT be represented:** routine Pb, Zn, Ag, Cu or fluorite from all limestone; those require a mineralizing hydrothermal event.

**Source basis:** USGS MVT model [S02], standard carbonate mineralogy.

---

## Gold-Bearing Quartz -> Gold (Au)

### Geological interpretation

This TI resource is correctly treated as a **gameplay abstraction for primary hard-rock/lode gold mineralization in quartz-rich veins, shear zones, stockworks and alteration zones**, not as a mineral species called "gold-bearing quartz."

### 1. Mineral composition

- **Formula:** No single chemical formula exists for the **gold-bearing quartz ore assemblage**. The quartz host is `SiO2`; native gold is `Au`; electrum is `(Au,Ag)`. Other gold-bearing phases have their own formulas and are listed below.
- **Quartz formula:** `SiO2`.
- **Gold host phases:** native gold, electrum (Au-Ag alloy), tellurides in some deposits, and submicroscopic or inclusion-hosted Au in sulfides such as pyrite and arsenopyrite.
- **Main gangue:** quartz, with carbonate, mica, chlorite and feldspar varying by deposit type.
- **Important trace distinction:** Au is usually **not structurally dissolved in quartz at ore-forming concentrations**. The gold is a separate mineral phase or is hosted by sulfides within the quartz vein/alteration system.

### 2. Commonly associated minerals

| Associated mineral / common ore-mineral name | Chemical formula(s) | Main useful element(s) | Relationship | Typical frequency | Notes |
| --- | --- | --- | --- | --- | --- |
| Native gold | `Au` | Au | B/C | Very Common | Primary target phase. |
| Electrum | `(Au,Ag)` | Au, Ag | B/C | Common | Strong Au-Ag linkage. |
| Pyrite | `FeS2` | Fe, S; may host invisible Au | B/C | Very Common | One of the most characteristic lode-gold sulfides. |
| Arsenopyrite | `FeAsS` | As; may host Au | B/C | Common | Especially important in many orogenic and intrusion-related gold systems. |
| Pyrrhotite | `Fe1-xS` | Fe, S | C | Occasional to Common | Common in reduced metamorphic systems. |
| Chalcopyrite | `CuFeS2` | Cu | C | Occasional | Common enough in polymetallic lodes but not universal. |
| Galena | `PbS` | Pb, Ag | C/D | Occasional | Stronger in polymetallic veins. |
| Sphalerite | `ZnS` | Zn | C/D | Occasional | Stronger in polymetallic veins. |
| Scheelite | `CaWO4` | W | C | Occasional | Characteristic accessory in some orogenic/intrusion-related Au systems. |
| Tellurides | No single formula; representative calaverite `AuTe2`, hessite `Ag2Te`, petzite `Ag3AuTe2` | Te, Au, Ag, Bi | B/C | Highly deposit-specific | Can dominate precious-metal mineralogy in special districts. |
| Stibnite | `Sb2S3` | Sb | C | Occasional | Important in some orogenic/epizonal Au-Sb systems. |
| Carbonates | No single formula; representative calcite `CaCO3`, dolomite `CaMg(CO3)2`, ankerite `Ca(Fe,Mg)(CO3)2` | Ca, Mg, Fe | C | Common | Common vein gangue in orogenic systems. |

### 3. Economically relevant associated elements

| Element | How it occurs | Commonness | Could plausibly be a TI trace output? |
| --- | --- | --- | --- |
| Ag | B/C electrum, native silver, Ag minerals | Common | **Excellent.** Strongest general gold-lode trace candidate. |
| Cu | C chalcopyrite and other Cu sulfides | Occasional | Good polymetallic profile trace. |
| Pb | C/D galena | Occasional | Better as Galena body in a polymetallic profile. |
| Zn | C/D sphalerite | Occasional | Better as Sphalerite body in a polymetallic profile. |
| W | C scheelite | Occasional, district-dependent | Good specialized lode association. |
| Sb | C stibnite, sulfosalts; can be recovered from some Au deposits | Occasional | Strong non-roster specialized byproduct. |
| Bi | C native Bi, bismuthinite, Bi tellurides | Occasional | Strong intrusion-related/orogenic specialized candidate. |
| Te | C tellurides | Highly deposit-specific | Excellent for a telluride-gold profile if TI ever needs Te. |
| As | C arsenopyrite, pyrite | Common | Strong pathfinder/processing issue, usually poor desirable output. |

### 4. Typical deposit environments

The most relevant real-world models are:

- **Orogenic/low-sulfide Au-quartz veins:** persistent quartz veins in regionally metamorphosed volcanic and sedimentary rocks, commonly with native gold, pyrite, arsenopyrite, galena, sphalerite and chalcopyrite. [S17]
- **Epithermal Au-Ag veins and stockworks:** shallow hydrothermal systems below about 300 C, commonly quartz-rich and locally containing Pb, Zn, Cu or Hg. [S16]
- **Intrusion-related gold systems:** quartz veins, sheeted vein arrays and disseminated mineralization around reduced felsic intrusions, locally with Bi, W, Te and As.
- **Polymetallic quartz veins:** Au-Ag with variable Pb-Zn-Cu sulfides.

### 5. Best candidates for Thelian Industries

- **Primary trace candidate:** **Silver**, chiefly as electrum or separate Ag-bearing phases.
- **Secondary trace candidate:** **Copper** for a polymetallic lode profile, or **W/Bi/Te** if TI expands the element set.
- **Possible separate associated underground mineral:** **Galena** and/or **Sphalerite** body in a polymetallic vein system. A **Wolframite/Scheelite zone** is valid in specific intrusion-related gold districts but should remain specialized.
- **Associations that should probably NOT be represented:** universal Pb-Zn-Cu-W-Sb-Te all together; treating Au as lattice-bound in quartz; treating all quartz veins as gold-bearing.

**Source basis:** USGS low-sulfide Au-quartz vein model [S17], USGS epithermal Au-Ag model [S16].

---

# Part VI. Pyrosauria mineral families

## Carnallite -> Magnesium (Mg) + Potassium (K)

### 1. Mineral composition

- **Formula:** `KMgCl3·6H2O` (also written `KCl·MgCl2·6H2O`).
- **Main elements:** K, Mg, Cl, H and O.
- **Common substitutions/impurities:** bromide can substitute for chloride in evaporite halides to some degree, but carnallite is not normally a major ore host for valuable trace metals. Rb and Cs can occur in evolved brines and K salts, but economic enrichment is highly basin-specific.
- **Key gameplay point:** carnallite already contains **two economically useful primary cations, K and Mg**. It does not need a forced trace-metal layer to be geologically interesting.

### 2. Commonly associated minerals

| Associated mineral / common ore-mineral name | Chemical formula(s) | Main useful element(s) | Relationship | Typical frequency | Notes |
| --- | --- | --- | --- | --- | --- |
| Halite | `NaCl` | Na, Cl | C | Very Common | Dominant host/interbedded evaporite. |
| Sylvite | `KCl` | K | C/D | Very Common in potash basins | Principal potash mineral in many deposits. |
| Kieserite | `MgSO4·H2O` | Mg, S | C | Common | Mg sulfate monohydrate, common in evolved evaporites. |
| Anhydrite/gypsum | Anhydrite `CaSO4`; gypsum `CaSO4·2H2O` | Ca, S | C | Very Common | Earlier sulfate evaporite phases and interbeds. |
| Bischofite | `MgCl2·6H2O` | Mg, Cl | C | Occasional | Late-stage Mg chloride evaporite. |
| Polyhalite/langbeinite/kainite | Polyhalite `K2Ca2Mg(SO4)4·2H2O`; langbeinite `K2Mg2(SO4)3`; kainite `KMg(SO4)Cl·3H2O` | K, Mg, Ca, S | C | Occasional to Common | Complex potash evaporite minerals. |
| Borate minerals | No single formula; representative borax `Na2B4O7·10H2O`, colemanite `Ca2B6O11·5H2O` | B | C/D | Highly deposit-specific | Evolved continental/lacustrine brines can concentrate B. |
| Clay/dolomite | Representative clay kaolinite `Al2Si2O5(OH)4`; dolomite `CaMg(CO3)2` | Al-Si / Ca-Mg | C | Common minor impurities | Basin sediment input and carbonate interbeds. |

### 3. Economically relevant associated elements

| Element | How it occurs | Commonness | Could plausibly be a TI trace output? |
| --- | --- | --- | --- |
| Na | C halite | Very Common | Strong bulk coproduct if salt chemistry matters, but not a trace. |
| S | C sulfate minerals such as kieserite, anhydrite, polyhalite | Common | **Plausible beneficiation coproduct** if sulfur chemistry is useful. |
| Br | A halide substitution and brine impurity | Common at trace levels | Geochemically defensible but weak gameplay value unless bromine exists. |
| B | C/D borate minerals in evolved brines | Highly deposit-specific | Good specialized profile if boron is ever introduced. |
| Rb/Cs | A/B in evolved K-rich brines and salts | Rare to Highly deposit-specific | Better reserved for special brine systems, not ordinary carnallite. |

### 4. Typical deposit environments

Carnallite forms in **highly evolved evaporitic brines**, principally marine or saline-lake basins where progressive evaporation precipitates carbonates and sulfates first, then halite, then K-Mg salts. USGS potash assessments describe stratabound evaporite deposits containing intergrowths of halite, sylvite, carnallite, kieserite and other K-Mg salts. [S27]

Carnallite therefore belongs to a **sedimentary evaporite** geological system, not a magmatic ore system.

### 5. Best candidates for Thelian Industries

- **Primary trace candidate:** **None required.** K and Mg are already co-primary products.
- **Secondary trace candidate:** **Sulfur** from associated sulfate minerals if TI wants an evaporite-beneficiation coproduct.
- **Possible separate associated underground mineral:** **Sylvite-rich potash bed**, **kieserite-rich Mg sulfate bed**, or halite layer. These are stratigraphically distinct evaporite facies and fit the reserve-pool mechanic well.
- **Associations that should probably NOT be represented:** routine Li, U, REE or metal sulfides in carnallite; universal boron or cesium.

**Source basis:** USGS Prairie Evaporite and potash mineralogy [S27].

---

## Phosphorite -> Phosphorus (P)

### 1. Mineral composition

Phosphorite is **a phosphate-rich sedimentary rock**, not a single mineral. Its main ore mineral is generally carbonate-rich fluorapatite, often called francolite in sedimentary phosphorite.

- **Formula:** No single chemical formula exists for phosphorite rock. The principal ore mineral is carbonate-fluorapatite/francolite, represented approximately as `Ca5(PO4,CO3)3(F,OH)`; the fluorapatite endmember is `Ca5(PO4)3F`.
- **Idealized apatite formula:** Ca5(PO4)3(F,Cl,OH), with marine phosphorite commonly dominated by F- and carbonate-bearing apatite.
- **Main elements:** Ca, P, O, F plus variable carbonate and Na.
- **Common substitutions:** Na, Sr, U and Th can substitute for Ca; carbonate and sulfate can substitute for phosphate groups. [S12]
- **Important associated material:** quartz, illite/muscovite, organic matter, dolomite/calcite and Fe oxides can form a significant fraction of the rock. USGS analysis of Phosphoria Formation phosphorite found an average assemblage near 80% apatite, 10% quartz, 5% muscovite-illite, 2% organic matter, 1% dolomite-calcite and 1% iron oxide. [S12]

### 2. Commonly associated minerals

| Associated mineral / common ore-mineral name | Chemical formula(s) | Main useful element(s) | Relationship | Typical frequency | Notes |
| --- | --- | --- | --- | --- | --- |
| Carbonate fluorapatite/francolite | Variable carbonate-fluorapatite; simplified `Ca5(PO4,CO3)3(F,OH)`; fluorapatite endmember `Ca5(PO4)3F` | P, Ca, F | Primary | Very Common | Main phosphate mineral. |
| Quartz | `SiO2` | Si | C | Very Common | Major gangue. |
| Illite/muscovite/clays | Illite variable `K0.6-0.85Al2(Si,Al)4O10(OH)2`; muscovite `KAl2(AlSi3O10)(OH)2`; representative kaolinite `Al2Si2O5(OH)4` | K, Al, Si | C | Common | Common fine-grained gangue. |
| Calcite/dolomite | Calcite `CaCO3`; dolomite `CaMg(CO3)2` | Ca, Mg | C | Common | Carbonate gangue. |
| Organic matter | No fixed mineral formula; compositionally variable carbonaceous matter | C; hosts V, Mo, Se and other trace elements | B/C | Common in black phosphorites | Important trace-metal control. |
| Fe oxides/pyrite | Representative hematite `Fe2O3`, goethite `FeO(OH)`, pyrite `FeS2` | Fe, S | C | Common | Depends on redox conditions. |
| REE-bearing apatite/minor phosphates | Apatite `Ca5(PO4)3(F,Cl,OH)`; minor REE phosphates vary, e.g. monazite `(Ce,La,Nd,Th)PO4` | REE | A/B | Occasional | REE can be incorporated in apatite and accessory phases. |

### 3. Economically relevant associated elements

| Element | How it occurs | Commonness | Could plausibly be a TI trace output? |
| --- | --- | --- | --- |
| U | A substitutes for Ca in apatite; can be recovered from phosphoric acid | Common trace in marine phosphorite | **Excellent.** One of the strongest cross-roster byproduct candidates. [S13] |
| REE | A substitution in apatite and B accessory phosphate phases | Common trace, locally enriched | **Strong specialized candidate.** |
| Sr | A substitution for Ca | Common | Scientifically strong, less compelling gameplay output. |
| V | Mainly B/C organic matter and other phases, not apatite | Occasional to Common in organic-rich phosphorite | **Good specialized profile**, especially if vanadium is added. |
| Cd | Mainly B/C organic/mineral association and apatite impurities depending deposit | Occasional | Important environmental/byproduct issue; deposit-specific. |
| Mo/Se/Ni/Zn/Cr | Principally organic matter or separate phases in black phosphorites | Occasional | Good geochemical suite, but not all should become gameplay outputs. |
| Th | A substitution in apatite and accessory minerals | Trace | Usually weaker than U and REE. |

USGS reports marine phosphorite U typically around 0.005 to 0.030 wt% and notes that U(IV) can replace Ca in apatite; uranium has historically been considered/recovered as a phosphate-processing byproduct. [S13]

### 4. Typical deposit environments

Most large phosphorites form in **marine sedimentary settings**, particularly continental shelves and upwelling systems where high biological productivity, sedimentary reworking and favorable redox conditions concentrate phosphorus. Other phosphate resources include igneous apatite deposits, guano-derived phosphate and weathered residual deposits, but the term "phosphorite" most naturally implies sedimentary phosphate rock.

Organic-rich black phosphorites can concentrate U, V, Mo, Se and other redox-sensitive elements, while weathering and reworking can further modify grade and trace chemistry.

### 5. Best candidates for Thelian Industries

- **Primary trace candidate:** **Uranium**, a particularly strong and historically meaningful phosphate byproduct.
- **Secondary trace candidate:** **REE**, as apatite-hosted and accessory-phosphate rare-earth content.
- **Possible separate associated underground mineral:** usually **none required**; the valuable trace inventory is commonly disseminated within the phosphatic bed. A separate organic-rich V-bearing shale/black-phosphate horizon is possible if the stratigraphy is modeled in detail.
- **Associations that should probably NOT be represented:** all As-Ag-Cd-Cr-Cu-Mo-Ni-Sb-Se-V-Zn as simultaneous outputs. USGS shows many are principally associated with organic matter rather than apatite and their enrichment is variable. [S12]

**Source basis:** USGS phosphorite chemistry [S12], USGS uranium in phosphate rock [S13].

---

# Part VII. Tectara mineral families

## Wolframite -> Tungsten (W)

### 1. Mineral composition

"Wolframite" is a mineral-series name for the continuous solid solution between:

- **Ferberite:** FeWO4.
- **Huebnerite:** MnWO4.

The generalized formula is **(Fe,Mn)WO4**.

- **Formula:** `(Fe,Mn)WO4`; ferberite endmember `FeWO4`; huebnerite endmember `MnWO4`.

- **Main elements:** W, O, Fe and/or Mn.
- **Important point:** Fe and Mn are not merely impurities. They are major structural constituents of the wolframite series. A Mn-rich wolframite is huebneritic; an Fe-rich one is ferberitic.
- **Common trace elements:** Nb, Ta, Sc, Sn, Ti, Zr and other high-field-strength elements can occur at trace levels depending on granitic source and fluid evolution. Their concentrations are highly deposit-dependent.
- **Gameplay implication:** if TI ever recovers Mn from wolframite, it should be described as a **major constituent coproduct**, not a trace mineral. Industrial tungsten metallurgy does not normally treat Mn/Fe as the economically desired product, so this is optional gameplay rather than a necessary consequence.

### 2. Commonly associated minerals

| Associated mineral / common ore-mineral name | Chemical formula(s) | Main useful element(s) | Relationship | Typical frequency | Notes |
| --- | --- | --- | --- | --- | --- |
| Quartz | `SiO2` | Si | C | Very Common | Dominant gangue in many wolframite veins. |
| Cassiterite | `SnO2` | Sn | B/C/D | Common in granite-related W-Sn systems | Strongest TI roster cross-link. |
| Scheelite | `CaWO4` | W | C | Common in some W districts | Can coexist with or replace wolframite. |
| Muscovite | `KAl2(AlSi3O10)(OH)2` | K, Al | C | Common | Greisen alteration mineral. |
| Topaz | `Al2SiO4(F,OH)2` | Al, F | C | Common in F-rich greisens | Evolved granite indicator. |
| Fluorite | `CaF2` | Ca, F | C | Common | Common hydrothermal accessory/gangue. |
| Tourmaline | Tourmaline group has no single formula; representative schorl `NaFe3Al6(BO3)3Si6O18(OH)4` | B | C | Common | Granitic-hydrothermal accessory. |
| Arsenopyrite/pyrite/pyrrhotite | Arsenopyrite `FeAsS`; pyrite `FeS2`; pyrrhotite `Fe1-xS` | As, Fe, S | C | Common | Sulfide accessories. |
| Molybdenite | `MoS2` | Mo | C | Occasional | Strong in some granite-related W systems. |
| Bismuth/bismuthinite | Native bismuth `Bi`; bismuthinite `Bi2S3` | Bi | C | Occasional | Common specialized association in evolved granitic ores. |
| Chalcopyrite | `CuFeS2` | Cu | C | Occasional | Polymetallic vein/skarn association. |
| Sphalerite/galena | Sphalerite `ZnS`; galena `PbS` | Zn, Pb | C/D | Occasional | More typical of polymetallic or skarn overprints. |

### 3. Economically relevant associated elements

| Element | How it occurs | Commonness | Could plausibly be a TI trace output? |
| --- | --- | --- | --- |
| Sn | B/C cassiterite and locally trace substitution | Common in granite-related W-Sn provinces | **Excellent.** Strongest trace/coproduct relationship. |
| Mn | Major A constituent of huebneritic wolframite | Very Common across wolframite series | Geologically inherent, but optional as an economic coproduct. |
| Mo | C molybdenite | Occasional | Good specialized trace/byproduct. |
| Bi | C native Bi/bismuthinite | Occasional | Good specialized additional-element candidate. |
| Cu | C chalcopyrite | Occasional | Good only in polymetallic/skarn subtype. |
| Nb/Ta | A trace substitution and C rare-metal oxides | Occasional | Strong additional-element candidates in evolved granitic systems. |
| Zn/Pb | C/D sphalerite/galena in skarn or polymetallic veins | Highly deposit-specific | Better as associated bodies than W-ore trace. |

### 4. Typical deposit environments

Wolframite is characteristic of **granite-related hydrothermal veins, sheeted vein systems, greisens and some pegmatites**. It can also occur with tungsten skarn systems, although scheelite is commonly more important in many skarns. Weathering can concentrate resistant wolframite in eluvial/alluvial placers.

USGS tin-tungsten synthesis emphasizes the shared evolved-granite setting of Sn and W systems. The British Geological Survey's Carrock and Cornubian examples likewise document quartz-wolframite-scheelite with arsenopyrite, pyrite, sphalerite, galena, molybdenite, bismuth and other accessory minerals in specific districts. The association is real, but the full polymetallic suite is not universal.

### 5. Best candidates for Thelian Industries

- **Primary trace candidate:** **Tin**, chiefly as disseminated cassiterite.
- **Secondary trace candidate:** **Molybdenum or bismuth** if TI adds either element.
- **Possible separate associated underground mineral:** **Cassiterite body** in an Sn-W greisen/vein system. This is one of the strongest mutual underground-body links in the roster.
- **Associations that should probably NOT be represented:** universal Pb-Zn-Cu; treating Mn as a minor trace when it is actually a major wolframite end-member component; universal lithium.

**Source basis:** USGS tin synthesis [S09], granite-related W-Sn mineral assemblage literature [S09, S23].

---

## Ilmenite -> Titanium (Ti)

### 1. Mineral composition

- **Formula:** `FeTiO3`.
- **Main elements:** Fe2+, Ti4+ and O.
- **Common solid solutions/substitutions:** Mg2+ and Mn2+ can replace Fe2+, trending toward geikielite (MgTiO3) and pyrophanite (MnTiO3). Fe3+ can enter through ilmenite-hematite solid solution at high temperature, followed by exsolution during cooling. Al and Cr can occur in minor amounts.
- **Important trace elements:** V, Nb, Sc, Zr, Hf, Co and Ni can occur at trace to minor levels in particular ilmenites. Peer-reviewed analyses of Fe-Ti-V ore ilmenite document Mg and Mn as major/minor components and V, Nb, Sc, Cr, Co, Ni, Zr, Hf and Ta at trace levels. [S31]
- **Critical caveat:** in many Fe-Ti-V deposits, **magnetite/titanomagnetite is the more important vanadium host**. A vanadiferous ilmenite deposit profile should therefore model V partly as an associated Fe-Ti oxide phase rather than assuming it all resides in ilmenite.

### 2. Commonly associated minerals

| Associated mineral / common ore-mineral name | Chemical formula(s) | Main useful element(s) | Relationship | Typical frequency | Notes |
| --- | --- | --- | --- | --- | --- |
| Rutile/leucoxene | Rutile `TiO2`; leucoxene has no fixed formula and is a TiO2-rich alteration aggregate | Ti | C | Very Common in heavy-mineral sands | Alternative Ti feedstocks and alteration products. |
| Zircon | `ZrSiO4` | Zr, Hf | C | Very Common in heavy-mineral sands | Strong TI cross-link. |
| Monazite | General `(Ce,La,Nd,Th)PO4`; monazite-(Ce) `CePO4` | LREE, Th | C | Common in heavy-mineral sands | Strong TI cross-link. |
| Magnetite/titanomagnetite | Magnetite `Fe3O4`; titanomagnetite has no single formula and is a magnetite-ulvospinel solid solution between `Fe3O4` and ulvospinel `Fe2TiO4` | Fe, Ti, V | C/D | Very Common in magmatic Fe-Ti oxide deposits | Principal V host in many systems. |
| Apatite | General apatite `Ca5(PO4)3(F,Cl,OH)` | P, REE | C | Common in some magmatic Fe-Ti-P systems | Can be an important phosphate/REE accessory. |
| Hematite | `Fe2O3` | Fe | C | Common | Exsolution/oxidation and Fe-Ti oxide assemblage. |
| Garnet/staurolite/kyanite/sillimanite | Representative garnet almandine `Fe3Al2(SiO4)3`; staurolite approx. `Fe2Al9Si4O23(OH)`; kyanite `Al2SiO5`; sillimanite `Al2SiO5` | industrial minerals | C | Common in some placers | Detrital heavy-mineral assemblage. |
| Chromite | Ideal `FeCr2O4`; natural spinel solid solution variable | Cr | C | Occasional | Depends on ultramafic source contribution. |

### 3. Economically relevant associated elements

| Element | How it occurs | Commonness | Could plausibly be a TI trace output? |
| --- | --- | --- | --- |
| V | A trace in ilmenite and especially C/D titanomagnetite | Common in Fe-Ti-V magmatic subtype | **Excellent specialized candidate**, but host-phase attribution matters. |
| Sc | A trace substitution | Occasional | **Good specialized additional-element candidate.** Some ilmenites are Sc-enriched, but not universally. |
| Zr | C zircon in heavy-mineral sand | Very Common in placer subtype | **Excellent beneficiation coproduct**, not ilmenite lattice Zr. |
| REE/Nd | C monazite in heavy-mineral sand | Common in some placers | **Excellent separate-phase coproduct** in a monazite-bearing sand profile. |
| Fe | Major A constituent and C magnetite/hematite | Very Common | Already intrinsic; possible iron coproduct but usually not the reason ilmenite is mined. |
| Nb | A trace substitution | Occasional | Potential additional-element byproduct in enriched deposits. |

### 4. Typical deposit environments

Two major economic environments dominate:

1. **Heavy-mineral sands:** weathering liberates ilmenite, zircon, rutile, monazite and other dense resistant minerals, which are concentrated by rivers, waves, tides, wind and coastal currents. This is one of the strongest multi-resource systems in the TI roster. [S06]
2. **Magmatic Fe-Ti(-V) oxide deposits:** layered or differentiated mafic intrusions concentrate ilmenite and titanomagnetite, locally with apatite. Vanadium commonly follows magnetite/titanomagnetite.

Ilmenite also occurs widely as an accessory mineral in igneous and metamorphic rocks, but these occurrences are not automatically ore-grade.

### 5. Best candidates for Thelian Industries

- **Primary trace candidate:** **Vanadium**, in a magmatic Fe-Ti-V profile, with explicit titanomagnetite contribution.
- **Secondary trace candidate:** **Scandium** if TI adds it; for current roster, **Zirconium** through separate zircon grains is the stronger gameplay link.
- **Possible separate associated underground mineral:** **Vanadiferous titanomagnetite/hematite-rich Fe body** in a magmatic profile. In placer terrain, use co-mingled **Zircon** and **Monazite** phases rather than forcing them into underground bodies.
- **Associations that should probably NOT be represented:** universal V in all ilmenite; treating zircon/monazite as ilmenite lattice traces; universal Cr/Ni/Co.

**Source basis:** USGS heavy-mineral-sand model [S06], peer-reviewed ilmenite trace-element studies [S31].

---

# Part VIII. Voltaris mineral families

## Monazite -> Neodymium / Rare-Earth feed

### 1. Mineral composition

"Monazite" is a **mineral group**, not a mineral composed exclusively of Nd. The common species **monazite-(Ce)** has idealized formula CePO4, but natural monazite commonly contains a mixture of light rare-earth elements.

A useful generalized ore formula is approximately **(Ce,La,Nd,Pr,Sm,Th,Ca,U)PO4**, with the exact dominant REE controlling species nomenclature.

- **Formula:** Monazite-group ore can be represented as `(Ce,La,Nd,Pr,Sm,Th,Ca,U)PO4`; monazite-(Ce), the common species, has ideal formula `CePO4`.

- **Main economic elements:** Ce, La, Nd, Pr and commonly Sm, with smaller amounts of other REE depending on source.
- **Phosphorus:** P is a major structural element of the mineral, not an impurity.
- **Common substitutions:** Th4+ and U4+ can substitute through coupled mechanisms, commonly involving Ca2+ replacing part of the trivalent REE population to maintain charge balance. Y and HREE can occur but are generally less dominant than in xenotime.
- **Critical gameplay implication:** if TI mines monazite primarily for Nd, the raw feed should scientifically be understood as a **mixed LREE phosphate concentrate**, not a neodymium-only mineral. Ce, La and Pr are co-primary constituents, even if they are not exposed as separate gameplay items.

### 2. Commonly associated minerals

| Associated mineral / common ore-mineral name | Chemical formula(s) | Main useful element(s) | Relationship | Typical frequency | Notes |
| --- | --- | --- | --- | --- | --- |
| Zircon | `ZrSiO4` | Zr, Hf | C | Very Common in placer monazite deposits | Strong TI cross-link. |
| Ilmenite | `FeTiO3` | Ti | C | Very Common in heavy-mineral sands | Strong TI cross-link. |
| Rutile/leucoxene | Rutile `TiO2`; leucoxene has no fixed formula and is a TiO2-rich alteration aggregate | Ti | C | Very Common in heavy-mineral sands | Major Ti minerals. |
| Xenotime | `YPO4` | Y, HREE | C | Occasional to Common | HREE/Y phosphate counterpart. |
| Garnet/staurolite | Representative garnet almandine `Fe3Al2(SiO4)3`; staurolite approx. `Fe2Al9Si4O23(OH)` | industrial minerals | C | Common | Common heavy-mineral sand components. |
| Bastnaesite/synchysite/parisite | Bastnasite-(Ce) `CeCO3F`; synchysite-(Ce) `CaCe(CO3)2F`; parisite-(Ce) `CaCe2(CO3)3F2` | LREE | C | Common in carbonatite/alkaline systems | Alternative REE ore phases. |
| Apatite | General apatite `Ca5(PO4)3(F,Cl,OH)` | P, Ca, REE | C | Common in carbonatites | Can contain REE and Th/U. |
| Calcite/dolomite | Calcite `CaCO3`; dolomite `CaMg(CO3)2` | Ca, Mg | C | Very Common in carbonatites | Major carbonatite gangue. |
| Barite/fluorite | Barite `BaSO4`; fluorite `CaF2` | Ba/F | C | Occasional | Common in some REE carbonatite systems. |

### 3. Economically relevant associated elements

| Element | How it occurs | Commonness | Could plausibly be a TI trace output? |
| --- | --- | --- | --- |
| Ce | Major A constituent in monazite-(Ce) | Very Common | Scientifically a **co-primary REE**, not a trace. |
| La | Major A constituent | Very Common | Co-primary LREE. |
| Pr | Major/minor A constituent | Common | Co-primary LREE. |
| Sm | A constituent | Common | Co-primary/minor LREE. |
| Th | A coupled substitution; can be substantial | Common, highly variable | **Excellent specialized trace/coproduct**, with radiological processing implications. |
| U | A coupled substitution | Occasional | **Good specialized trace**, but usually less prominent than Th. |
| Y/HREE | A minor substitution and C xenotime | Occasional | Better represented by xenotime concentrate if HREE are ever modeled. |
| Zr/Hf | C zircon in placers | Very Common in placer subtype | **Excellent separate-phase coproduct.** |
| Ti | C ilmenite/rutile | Very Common in placer subtype | **Excellent separate-phase coproduct.** |
| Nb | C pyrochlore and other carbonatite minerals | Occasional at deposit-system scale | Carbonatite-system association, not monazite trace by default. |

### 4. Typical deposit environments

Monazite occurs in several major settings:

- **Heavy-mineral placers/paleoplacers**, where monazite is physically concentrated with zircon, ilmenite, rutile and other heavy minerals. Historically these were major REE sources. [S06]
- **Carbonatites and alkaline igneous complexes**, which are major sources of LREE including La, Ce, Pr and Nd. Monazite can be an important phosphate REE phase together with bastnaesite-group minerals and apatite. [S30]
- **Granitic pegmatites and metamorphic rocks**, generally as accessory rather than large ore deposits.

USGS carbonatite models explicitly emphasize LREE enrichment in La, Ce, Pr and Nd and identify monazite among the major REE mineral phases. [S30]

### 5. Best candidates for Thelian Industries

- **Primary trace candidate:** **Thorium**, if TI wants a radiogenic byproduct from monazite.
- **Secondary trace candidate:** **Uranium**, in a uranium-bearing monazite profile.
- **Possible separate associated underground mineral:** in a placer setting, **Zircon-rich** or **Ilmenite-rich strandline lens**; in a carbonatite setting, an **apatite or bastnaesite-rich REE zone**. Do not pretend these are inside monazite.
- **Associations that should probably NOT be represented:** treating Ce, La and Pr as trace contaminants. They are ordinary primary constituents of monazite feed. Also avoid making HREE universally abundant, because monazite is typically LREE-dominant.

**Source basis:** USGS heavy-mineral sands [S06], USGS carbonatite/REE deposit models [S30], recognized monazite mineral-group chemistry [S32].

---

## Sperrylite -> Platinum (Pt)

### 1. Mineral composition

- **Formula:** `PtAs2`.
- **Main elements:** Pt and As.
- **Common substitutions/impurities:** Pd, Rh and Ir can substitute for Pt. S can substitute for As; Sb can also substitute for As at lower levels. Fe and Cu are reported impurities, and microscopic intergrowths with other PGM are common in natural ore. [S24]
- **Important consequence:** arsenic is an intrinsic major element of sperrylite. Platinum extraction from a sperrylite-rich concentrate therefore carries a realistic As-management burden.

### 2. Commonly associated minerals

| Associated mineral / common ore-mineral name | Chemical formula(s) | Main useful element(s) | Relationship | Typical frequency | Notes |
| --- | --- | --- | --- | --- | --- |
| Pentlandite | `(Fe,Ni)9S8` | Ni, Co | C/D | Common in Ni-Cu-PGE sulfide systems | Strong TI cross-link. |
| Chalcopyrite | `CuFeS2` | Cu | C/D | Common | Major Cu sulfide companion. |
| Pyrrhotite | `Fe1-xS` | Fe, S | C | Common | Major magmatic sulfide. |
| Chromite | Ideal `FeCr2O4`; natural spinel solid solution variable | Cr | C/D | Common in layered-intrusion PGE systems | Strong TI cross-link, especially PGE-bearing chromitites. |
| Cooperite/braggite/vysotskite and other Pt-Pd sulfides | Cooperite `PtS`; braggite `PdPt3S4`; vysotskite `PdS`; other Pt-Pd sulfides vary | Pt, Pd, Ni | B/C | Common in PGE reefs | Discrete PGM assemblage. |
| PGE tellurides/bismuthides/alloys | No single formula; representative michenerite `PdBiTe`, merenskyite `(Pd,Pt)(Te,Bi)2`; native PGE alloys are variable | Pt, Pd, Rh, Te, Bi | B/C | Common in specific reefs | Important precious-metal deportment. |
| Magnetite/ilmenite | Magnetite `Fe3O4`; ilmenite `FeTiO3` | Fe, Ti | C | Occasional | Layered intrusion association. |
| Olivine/pyroxene/plagioclase | Olivine `(Mg,Fe)2SiO4`; representative pyroxenes `(Mg,Fe)SiO3` and `CaMgSi2O6`; plagioclase `(Na,Ca)(Si,Al)4O8` | Mg, Fe, Ca, Al | C | Very Common | Mafic-ultramafic host minerals. |

### 3. Economically relevant associated elements

| Element | How it occurs | Commonness | Could plausibly be a TI trace output? |
| --- | --- | --- | --- |
| Pd | A substitution in sperrylite and C other PGM/sulfides | Common in PGE systems | **Excellent specialized trace/coproduct** if Pd is added. |
| Rh | A substitution and C PGM | Common at lower abundance in many PGE systems | Good additional-element candidate. |
| Ir | A substitution and C PGM | Occasional | Good specialized candidate. |
| Ni | C pentlandite and other Ni sulfides | Common in Ni-Cu-PGE subtype | **Excellent associated Pentlandite body**, not sperrylite lattice Ni. |
| Cu | C chalcopyrite | Common in sulfide-rich PGE systems | Good beneficiation coproduct. |
| Cr | C/D chromite/chromitite | Common in some layered-intrusion PGE styles | **Excellent associated Chromite body** in chromitite-related profile. |
| Au | C alloys/tellurides/sulfides | Occasional | Byproduct in some magmatic PGE systems, not universal. |
| As | Major structural constituent | Always | Processing hazard/feed chemistry, not a trace output. |

### 4. Typical deposit environments

Sperrylite is a platinum-group mineral characteristic of **magmatic PGE mineralization in mafic-ultramafic layered intrusions and Ni-Cu-PGE sulfide deposits**. USGS layered-intrusion models describe PGE reefs and contact-type Cu-Ni-PGE ores with pentlandite, chalcopyrite, pyrrhotite, chromite and multiple PGM, including sperrylite in classic assemblages. [S25] PGE may reside partly in base-metal sulfides and partly in discrete arsenides, sulfides, tellurides, antimonides, bismuthides and alloys.

Sperrylite can survive weathering and occur in placers, but the economically fundamental source is usually a magmatic mafic-ultramafic system.

### 5. Best candidates for Thelian Industries

- **Primary trace candidate:** **Palladium**, as both lattice substitution and associated PGM.
- **Secondary trace candidate:** **Rhodium** or **Iridium** if TI ever expands the PGE set.
- **Possible separate associated underground mineral:** **Pentlandite-rich Ni sulfide body** or **Chromite/chromitite layer**, depending which PGE deposit profile is used.
- **Associations that should probably NOT be represented:** universal Au; Ni or Cr as sperrylite lattice traces; treating arsenic as optional impurity rather than an intrinsic part of PtAs2.

**Source basis:** sperrylite mineral chemistry [S24], USGS layered-intrusion PGE model [S25], magmatic Ni-Cu-PGE model [S04].

---

# Part IX. Canonical but currently unassigned mineral families

## Petalite -> Lithium (Li)

### 1. Mineral composition

- **Formula:** `LiAlSi4O10`.
- **Main elements:** Li, Al, Si and O.
- **Common substitutions/impurities:** petalite is not normally valued for a rich suite of lattice-hosted trace metals. Most of the important rare-metal association of petalite deposits is expressed through **other minerals in the pegmatite**, not through substitution into petalite itself.
- **Key geological context:** petalite is a principal Li ore mineral in the **LCT pegmatite** family together with spodumene and lepidolite. [S08]

### 2. Commonly associated minerals

| Associated mineral / common ore-mineral name | Chemical formula(s) | Main useful element(s) | Relationship | Typical frequency | Notes |
| --- | --- | --- | --- | --- | --- |
| Quartz | `SiO2` | Si | C | Very Common | Major pegmatite mineral. |
| K-feldspar | `KAlSi3O8` | K, Al, Si | C | Very Common | Major pegmatite mineral. |
| Albite | `NaAlSi3O8` | Na, Al, Si | C | Very Common | Major pegmatite mineral. |
| Muscovite | `KAl2(AlSi3O10)(OH)2` | K, Al | C | Common | Major/accessory mica. |
| Spodumene | `LiAlSi2O6` | Li | C | Common in Li pegmatites | Alternative Li ore mineral. |
| Lepidolite | Variable `K(Li,Al)3(Si,Al)4O10(F,OH)2` | Li, K, Rb | C | Common in evolved Li pegmatites | Li mica, can carry Rb/Cs. |
| Cassiterite | `SnO2` | Sn | B/C/D | Common in some LCT pegmatites | Strong TI cross-link. |
| Columbite-tantalite | General `(Fe,Mn)(Nb,Ta)2O6`; representative columbite-(Fe) `FeNb2O6`, tantalite-(Fe) `FeTa2O6` | Nb, Ta | B/C | Common | Principal Ta-Nb ore mineral. |
| Pollucite | `(Cs,Na)2(Al2Si4O12)·2H2O` | Cs | C | Occasional | Major Cs ore mineral in highly evolved LCT pegmatites. |
| Beryl | `Be3Al2Si6O18` | Be | C | Common accessory | Principal Be mineral. |
| Tourmaline/garnet/apatite | Representative schorl `NaFe3Al6(BO3)3Si6O18(OH)4`; garnet group `X3Y2(SiO4)3`; apatite `Ca5(PO4)3(F,Cl,OH)` | B/Fe-Mn/P | C | Common | Typical accessory minerals. |

### 3. Economically relevant associated elements

| Element | How it occurs | Commonness | Could plausibly be a TI trace output? |
| --- | --- | --- | --- |
| Sn | C cassiterite | Common in some LCT pegmatites | **Excellent specialized trace/body candidate.** |
| Ta | C columbite-tantalite | Common in LCT subtype | **Excellent additional-element byproduct.** |
| Nb | C columbite-tantalite | Common | Strong additional-element byproduct. |
| Cs | C pollucite and A/C mica/brine partitioning | Occasional | Excellent specialized LCT byproduct. |
| Be | C beryl | Common accessory, economic only in some deposits | Good specialized additional-element candidate. |
| Rb | A in K-micas/feldspars | Common in evolved pegmatites | Geologically strong but not necessarily economic. |
| Sn/W | C cassiterite and locally W minerals | Deposit-specific | Sn much stronger than W for classic LCT petalite systems. |

### 4. Typical deposit environments

Petalite is most characteristic of **lithium-cesium-tantalum (LCT) granitic pegmatites**, which are highly fractionated felsic intrusive bodies enriched in Li, Cs, Ta, Be, Sn and other incompatible elements. USGS identifies quartz, K-feldspar, albite and muscovite as major pegmatite minerals; petalite/spodumene/lepidolite as Li minerals; pollucite as Cs ore; columbite-tantalite as Ta ore; and cassiterite plus beryl as recurring accessory/economic minerals. [S08]

### 5. Best candidates for Thelian Industries

- **Primary trace candidate:** **Tin**, from disseminated cassiterite in an LCT pegmatite profile.
- **Secondary trace candidate:** **Tantalum** if TI adds it; otherwise no second trace is required.
- **Possible separate associated underground mineral:** **Cassiterite-rich zone** within an evolved pegmatite field.
- **Associations that should probably NOT be represented:** universal W, Au, Ag, Ni, Co or REE. They are not characteristic petalite-LCT companions.

**Source basis:** USGS LCT pegmatite deposit model [S08].

---

## Quartzite / Silica-bearing resource -> Silicon / Silica feedstock

### 1. Mineral composition

Quartzite is a metamorphic rock produced mainly by recrystallization of quartz-rich sandstone. A high-grade silica resource may instead be vein quartz, quartz arenite, high-purity quartzite or other silica-rich material.

- **Formula:** Quartzite has no single bulk formula because it is a rock; its dominant mineral, quartz, is `SiO2`.
- **Quartz formula:** SiO2.
- **Main elements:** Si and O.
- **Common lattice trace elements in quartz:** Al, Ti, Li, Fe and P are among the most common measurable impurities; B, Ge, Na, K and other elements can occur at ppm levels depending on origin. USGS microanalytical work documents Al, Ti, Li, Fe, Mn, Ge, Ga and other trace elements in natural quartz. [S26]
- **Economic reality:** for metallurgical-grade and especially high-purity silica, these trace elements are generally **contaminants to be removed**, not coproduct ores. USGS defines high-purity quartz at less than 100 ppm total impurities and ultra-high-purity material at around 10 ppm or less. [S26]

### 2. Commonly associated minerals

| Associated mineral / common ore-mineral name | Chemical formula(s) | Main useful element(s) | Relationship | Typical frequency | Notes |
| --- | --- | --- | --- | --- | --- |
| Feldspar | No single formula; K-feldspar `KAlSi3O8`, albite `NaAlSi3O8`, anorthite `CaAl2Si2O8` | K/Na, Al, Si | C | Common in impure quartzite | Major impurity in lower-purity resources. |
| Mica | No single formula; representative muscovite `KAl2(AlSi3O10)(OH)2`, biotite approx. `K(Mg,Fe)3AlSi3O10(F,OH)2` | K, Al, Li | C | Common | Common metamorphic/granitic impurity. |
| Hematite/goethite/magnetite | Hematite `Fe2O3`; goethite `FeO(OH)`; magnetite `Fe3O4` | Fe | C | Common in ferruginous quartzite | Major color/quality contaminant. |
| Rutile/ilmenite | Rutile `TiO2`; ilmenite `FeTiO3` | Ti | C | Occasional | Accessory heavy minerals. |
| Zircon | `ZrSiO4` | Zr, Hf | C | Occasional | Detrital accessory in sedimentary protoliths. |
| Clay minerals | No single formula; representative kaolinite `Al2Si2O5(OH)4` and illite `K0.6-0.85Al2(Si,Al)4O10(OH)2` | Al, Si | C | Common in poorly recrystallized silica resources | Deleterious for high-purity uses. |
| Gold/sulfides | No single formula; native gold `Au`; representative sulfides pyrite `FeS2`, arsenopyrite `FeAsS`, chalcopyrite `CuFeS2` | Au, Fe, Cu, Pb, Zn | D | Highly deposit-specific | Hydrothermal mineralization may cut quartzite or quartz veins, but then it is a separate ore system. |

### 3. Economically relevant associated elements

| Element | How it occurs | Commonness | Could plausibly be a TI trace output? |
| --- | --- | --- | --- |
| Al | A trace in quartz and C feldspar/mica/clay | Common | **No as routine output.** Primarily a purity contaminant. |
| Ti | A trace in quartz and C rutile/ilmenite | Common trace | Usually a contaminant; separate Ti mineral recovery only in unusual sands. |
| Fe | A trace and C Fe oxides | Common | Usually a deleterious impurity. |
| Li | A charge-compensating trace with Al; C mica | Occasional | Ppm-level quartz Li is not a credible Li ore. |
| Ge | A trace in quartz | Occasional at ppm scale | Scientifically real but generally too low for direct silica-ore recovery. |
| Zr | C zircon | Occasional | Could be beneficiated only where accessory zircon is unusually concentrated. |

### 4. Typical deposit environments

Quartzite forms during **regional or contact metamorphism of quartz-rich sandstone**. Industrial high-purity silica also comes from exceptionally pure quartzites, quartz arenites and hydrothermal vein quartz. Quartz itself occurs in nearly every major geological environment, so the resource name must refer to **silica purity and tonnage**, not merely the presence of quartz.

### 5. Best candidates for Thelian Industries

- **Primary trace candidate:** **None recommended.** Purity itself is the meaningful variable.
- **Secondary trace candidate:** none.
- **Possible separate associated underground mineral:** none by default. A gold or sulfide vein cutting quartzite should be a **separate mineralized structure**, not a silica trace mechanic.
- **Associations that should probably NOT be represented:** Li, Ge, Al, Ti or Fe as routine valuable trace outputs from industrial silica. Their usual significance is that processors must remove them.

A very strong TI design would use specialized profiles such as **High-Purity Quartzite** and **Ferruginous/Impure Quartzite** that affect processing yield or purification cost rather than award trace metals.

**Source basis:** USGS silica statistics and quartz trace-element studies [S26].

---

# Part X. Cross-mineral synthesis

## Master trace and association table

The table below distinguishes the strongest **gameplay-useful geological association** from a claim of lattice substitution. Where the best association is not lattice-hosted, the occurrence mode is stated explicitly.

| Primary Ore | Target Material | Strongest Trace Candidate | Second Trace Candidate | Strong Associated Mineral/Body | Confidence |
| --- | --- | --- | --- | --- | --- |
| Bituminous Coal | C / coal | S, organic + pyrite | Ge, specialized seam | Pyrite-rich horizon | **High for S; Low-Moderate for Ge** |
| Hematite | Fe | Mn, mixed lattice + separate Mn phases | Ti, mostly ilmenite/Fe-Ti oxides | Magnetite/ilmenite or IOCG Cu zone | **Moderate** |
| Cuprite | Cu | Au, separate precious-metal phases in Cu-Au parent system | Ag, separate phases | Primary Cu sulfide zone beneath oxide cap | **High for sulfide body; Moderate for Au/Ag profile** |
| Cassiterite | Sn | W, lattice + wolframite/scheelite | Ta/Nb, lattice + oxide minerals | Wolframite; locally Petalite/LCT zone | **High** |
| Galena | Pb | Ag, lattice + inclusions + Ag minerals | Bi/Sb, lattice + separate phases | Sphalerite | **Very High** |
| Bauxite | Al | Ga, lattice in Al hydroxides | Sc or REE, mixed hosts | No distinct body required | **Very High for Ga; Moderate for Sc/REE** |
| Cinnabar | Hg | Sb, stibnite/sulfosalts | Au, separate precious-metal phase | Gold-bearing epithermal/quartz zone | **High for Hg-Sb; Moderate for Hg-Au** |
| Uraninite | U | V in sandstone U-V system, separate U-V/V phases | Th, lattice in pegmatitic uraninite | V-rich sandstone/mineralized horizon | **High within stated subtypes** |
| Argentite/Ag2S family | Ag | Au, electrum/native gold | Se/Te or Cu, separate phases | Galena and/or Sphalerite polymetallic zones | **High for Au-Ag epithermal and Pb-Zn-Ag systems** |
| Ice Fields | H2O | None | None | Saline/volatile lens only if worldbuilding supports it | **High** |
| Pyrolusite/Mn-oxide ore | Mn | Co, adsorbed/separate Mn-oxide hosts | Ni, same | Rhodochrosite or Co-rich Mn horizon | **Moderate; deposit-type dependent** |
| Cobaltite | Co | Ni, lattice + Ni arsenides | Cu or Au, separate phases | Chalcopyrite-rich Cu zone / Ni-arsenide zone | **High within Co-Cu-Au or five-element veins** |
| Chromite | Cr | Pt/PGE, discrete PGM | Ni, sulfide phases | Sperrylite/PGE reef or Pentlandite sulfide lens | **Very High for stratiform PGE-bearing subtype** |
| Zircon | Zr | Hf, lattice | Ti, separate ilmenite/rutile in placer | Ilmenite/Monazite-rich placer lens | **Very High** |
| Pentlandite | Ni | Co, lattice/sulfide-hosted | Pt/PGE, discrete PGM + sulfide-hosted | Chalcopyrite-rich Cu zone; Sperrylite/PGE reef | **Very High** |
| Sphalerite | Zn | Cd, lattice | Ge or Ga/In, lattice/defect-hosted | Galena; locally Chalcopyrite in VMS | **Very High** |
| Calcite/Limestone | Ca feed | Mg, mainly dolomite | P, apatite in phosphatic limestone | Galena/Sphalerite MVT body | **Very High for Mg; High for MVT body only as overprint** |
| Gold-Bearing Quartz | Au | Ag, electrum/Ag phases | Cu or W/Bi/Te by subtype | Galena/Sphalerite polymetallic body | **Very High for Ag; subtype-dependent otherwise** |
| Carnallite | K + Mg | None required; S from sulfate minerals if desired | B, separate borates, specialized | Sylvite/kieserite/halite beds | **Very High for evaporite associations** |
| Phosphorite | P | U, apatite substitution | REE, apatite/accessory phosphates | Organic-rich V-bearing horizon if modeled | **Very High for U; High for REE** |
| Wolframite | W | Sn, cassiterite | Mo or Bi, separate phases | Cassiterite-rich greisen/vein body | **Very High** |
| Ilmenite | Ti | V, partly lattice but often titanomagnetite-hosted | Sc, lattice; or Zr as placer coproduct | Vanadiferous titanomagnetite; Zircon/Monazite placer phases | **High** |
| Monazite | Nd/LREE feed | Th, lattice | U, lattice | Zircon/Ilmenite placer lens or carbonatite REE zone | **Very High** |
| Sperrylite | Pt | Pd, lattice + PGM | Rh/Ir, lattice + PGM | Pentlandite Ni sulfide or Chromite/chromitite | **Very High** |
| Petalite | Li | Sn, cassiterite | Ta, columbite-tantalite | Cassiterite-rich LCT zone | **Very High** |
| Quartzite/Silica | Si/SiO2 | None recommended | None | None by default | **Very High** |

---

## Cross-links within the supplied TI material roster

The following links are the most useful for designing a **connected geological world** using only materials already represented by the mineral families in the supplied roster.

| TI material link | Geological mechanism | Relationship category | Strength | Recommended gameplay interpretation |
| --- | --- | --- | --- | --- |
| **Pb <-> Ag** | Ag substitutes into galena and also forms microscopic Ag minerals/sulfosalts in Pb ores | A + B + C | **Very Common/Common** | Excellent galena trace relationship; Silver-Bearing Galena should be a core specialized profile. |
| **Pb <-> Zn** | Galena and sphalerite are co-principal ore minerals in MVT, SEDEX and many polymetallic veins | C + D | **Very Common** | One of the strongest associated underground-body links. Keep Zn mostly as Sphalerite body, not Pb trace. |
| **Zn <-> Ag** | Ag commonly accompanies Pb-Zn systems, chiefly in galena and separate Ag phases | B + C + D | **Common** | Silver-bearing Zn deposit profile is valid if host mineral is correctly attributed. |
| **Cu <-> Au** | Porphyry Cu and other hydrothermal Cu systems can be major Au sources; gold occurs in separate phases | B + C + D | **Common in Cu-Au subtype** | Strong specialized Cuprite parent-system profile, not universal Cuprite lattice trace. |
| **Cu <-> Ag** | Porphyry, VMS and polymetallic Cu systems can contain Ag | B + C + D | **Common by subtype** | Good second Cu profile, especially polymetallic/epithermal. |
| **Ni <-> Co** | Co substitutes into pentlandite and occurs in associated magmatic sulfides | A + B | **Very Common** | One of the best true trace-output links in the roster. |
| **Ni <-> Cu** | Pentlandite-pyrrhotite-chalcopyrite intergrowth defines many magmatic Ni-Cu ores | C + D | **Very Common** | Strong beneficiation coproduct and/or separate Cu-rich sulfide reserve. |
| **Ni <-> Pt/PGE** | Magmatic Ni-Cu sulfide systems commonly carry PGE; PGM are separate phases and some PGE reside in sulfides | B + C + D | **Common** | Strong Pentlandite specialized profile and Sperrylite associated-body relationship. |
| **Cr <-> Pt/PGE** | Stratiform chromitite seams can host significant PGE mineralization | B + C + D | **Common in stratiform subtype** | Strong Chromite <-> Sperrylite cross-link. |
| **Cr <-> Ni** | Layered mafic-ultramafic complexes may host both chromitite and Ni-Cu sulfide mineralization | C + D | **Occasional/Common at complex scale** | Better as separate reserve pools in same intrusive complex than mutual trace percentages. |
| **Zr <-> Ti** | Zircon and ilmenite/rutile are co-concentrated by hydraulic/aeolian sorting in heavy-mineral sands | C | **Very Common in placer ores** | Excellent same-resource beneficiation phases. |
| **Zr <-> REE/Nd** | Zircon and monazite commonly occur together in heavy-mineral sands | C | **Common** | Strong placer coproduct link. |
| **Ti <-> REE/Nd** | Ilmenite/rutile and monazite are common co-minerals in heavy-mineral sands | C | **Common** | Strong placer coproduct link. |
| **Sn <-> W** | Cassiterite and wolframite/scheelite recur in evolved granite, greisen and vein systems | A/B + C + D | **Common to Very Common by district** | One of the strongest reciprocal specialized-profile and underground-body links. |
| **Sn <-> Li** | Cassiterite can occur in LCT pegmatites with petalite/spodumene/lepidolite | C + D | **Common in LCT subtype** | Strong Petalite -> Cassiterite and Cassiterite -> Petalite specialized cross-link. |
| **U <-> P** | U substitutes into marine apatite and can be recovered from phosphate processing | A | **Common trace in marine phosphorite** | Excellent Phosphorite -> Uranium trace output. |
| **U <-> V** | Sandstone-hosted U-V deposits form at redox fronts with distinct U-V/V minerals | B + C + D | **Common in U-V subtype** | Excellent specialized uranium profile, but V is not a universal uraninite lattice trace. |
| **Hg <-> Au** | Hot-spring Hg systems may overlie or accompany epithermal Au mineralization | B/C + D | **Highly deposit-specific but strong where present** | Ideal example of a separate deeper body rather than universal trace output. |
| **Hg <-> Ag** | Polymetallic epithermal systems can contain Hg with Au-Ag | B/C + D | **Occasional** | Secondary specialized profile only. |
| **Au <-> Ag** | Electrum, native silver and Au-Ag epithermal/orogenic systems | B + C | **Very Common/Common** | Excellent Gold-Bearing Quartz trace relationship and Argentite Au trace relationship. |
| **Au <-> Pb/Zn** | Galena and sphalerite occur in polymetallic gold veins; Au occurs in separate phases | C + D | **Occasional** | Strong specialized polymetallic lode profile, not default gold quartz. |
| **Au <-> W** | Scheelite/wolframite can accompany some orogenic/intrusion-related gold systems | C/D | **Occasional/Highly deposit-specific** | Usable specialized profile if a W-Au district is desired. |
| **Ca/Limestone <-> Pb/Zn** | Carbonate platforms host MVT galena-sphalerite mineralization | D | **Very Common for MVT deposit host rock, but not ordinary limestone** | Excellent host-rock-to-underground-body rule. Do not turn ordinary limestone into Pb/Zn trace ore. |
| **Ca/Limestone <-> Mg** | Dolomitization produces dolomite-rich carbonate rock | C | **Very Common** | Strong dolomitic limestone profile. |
| **Mn <-> Co/Ni** | Some Mn oxides adsorb/concentrate Co and Ni; polymetallic Mn nodules/crusts carry both | B/C | **Occasional; strong in specific Mn-oxide systems** | Valid specialized Mn profile, not universal pyrolusite chemistry. |
| **Co <-> Ni** | Ni substitutes into cobaltite and occurs in associated arsenides; Co also occurs in Ni sulfides | A + C | **Common** | Reciprocal link is real, but cobaltite and pentlandite represent different deposit families. |
| **Co <-> Cu/Au** | Metasedimentary Co-Cu-Au deposits contain cobaltite/other Co sulfarsenides with chalcopyrite and local gold | C + D | **Common in that subtype** | Strong specialized Cobaltite profile. |
| **Fe <-> Ti** | Hematite/magnetite can coexist with ilmenite in magmatic Fe-Ti oxide systems | C + D | **Common in Fe-Ti subtype** | Valid Hematite-Ilmenite system link, distinct from BIF. |
| **Fe <-> Mn** | Manganiferous iron formations and mixed Fe-Mn oxide/carbonate systems exist | A/B/C | **Occasional/Common by basin** | Good specialized hematite profile. |
| **REE/Nd <-> U/Th** | Monazite commonly incorporates Th and lesser U | A | **Common** | Strong monazite trace relationship. |
| **Zr <-> Hf** | Hf directly substitutes for Zr in zircon | A | **Very Common** | Geologically strongest true trace relationship for zircon, although Hf is not currently a primary TI mineral family. |

### Strongest internal TI cross-links to prioritize

If the design goal is to start with only the most defensible relationships, these are the highest-priority links:

1. **Galena -> Silver trace; Galena <-> Sphalerite body.**
2. **Pentlandite -> Cobalt trace; Pentlandite <-> Cu sulfide/PGE association.**
3. **Chromite <-> Sperrylite/PGE.**
4. **Cassiterite <-> Wolframite.**
5. **Zircon <-> Ilmenite <-> Monazite as a heavy-mineral-sand family.**
6. **Phosphorite -> Uranium trace.**
7. **Gold-Bearing Quartz -> Silver trace.**
8. **Petalite <-> Cassiterite in LCT pegmatites.**
9. **Limestone -> MVT Galena/Sphalerite body, but only as a mineralized-carbonate profile.**
10. **Uranium <-> Vanadium**, if vanadium is introduced or represented abstractly.

---

## Potential additional byproduct elements not represented by a primary mineral family in the supplied roster

This table does **not** recommend automatically adding these elements. It identifies elements whose geological deportment is strong enough that they could support future gameplay if independently useful.

| Element | Common host/deposit | Geological importance | Gameplay usefulness possibility |
| --- | --- | --- | --- |
| **Gallium (Ga)** | Bauxite Al hydroxides; sphalerite | Bauxite is the principal global Ga source; Ga substitutes for Al and Zn. [S20] | **Very High.** Clean electronics/semiconductor byproduct candidate, especially from Bauxite. |
| **Germanium (Ge)** | Sphalerite; selected coal seams | Important critical element recovered as byproduct of Zn and coal processing. [S22] | **Very High.** Strong electronics/optics candidate; use only in specialized Zn/coal deposits. |
| **Cadmium (Cd)** | Sphalerite lattice; microscopic greenockite | Classic Zn-smelting byproduct; Cd commonly substitutes for Zn. [S22] | **Very High geologically**, though gameplay/safety theme may make it mainly a chemical byproduct. |
| **Indium (In)** | Sphalerite, commonly Cu-coupled substitution; VMS/SEDEX Zn ores | Major byproduct relationship in selected Zn deposits. | **High** for advanced electronics if needed. |
| **Scandium (Sc)** | Some bauxites/laterites; some ilmenites/Fe-Ti oxides | Enrichment is real but highly variable; potential byproduct from several ore streams. | **High** if TI needs a lightweight-alloy or advanced-material branch. |
| **Hafnium (Hf)** | Zircon lattice | Nearly inseparable geochemically from Zr; zircon is the primary Hf source. [S07] | **Very High.** Probably the single cleanest new trace element from a mineralogical standpoint. |
| **Vanadium (V)** | Sandstone U-V deposits; titanomagnetite; phosphorite/black shale | Major byproduct/coproduct element with multiple strong deposit models. | **Very High.** Connects Uranium, Ilmenite/Fe-Ti systems and Phosphorite. |
| **Tantalum (Ta)** | Columbite-tantalite in LCT pegmatites; trace cassiterite | LCT pegmatites are the major Ta geological system; cassiterite can incorporate Ta. [S08, S23] | **Very High** if advanced electronics/capacitors justify it. |
| **Niobium (Nb)** | Columbite-group minerals, carbonatites; trace cassiterite/ilmenite | Strong in rare-metal pegmatites and carbonatites. | **High** for specialty alloy/advanced material progression. |
| **Molybdenum (Mo)** | Porphyry Cu; granite Sn-W systems; black phosphorite | Major Cu-porphyry coproduct and recurring evolved-granite mineral molybdenite. [S01, S09] | **Very High** if a high-temperature alloy branch needs it. |
| **Bismuth (Bi)** | Galena substitution; bismuthinite/native Bi in Sn-W-Co-Au systems | Strong indicator/byproduct in evolved magmatic-hydrothermal and some galena ores. [S21] | **Moderate-High.** Useful if low-melting alloys, catalysts or metallurgy mechanics need it. |
| **Antimony (Sb)** | Galena substitution; stibnite in Hg and Au systems; Ag sulfosalts | Strong Hg-Sb and precious/base-metal association. | **High geologically**, especially Cinnabar; gameplay depends on chemistry demand. |
| **Tellurium (Te)** | Au-Ag tellurides; Cu-porphyry/epithermal systems; PGE ores | Important trace/byproduct element in precious-metal systems. | **High** if photovoltaics/thermoelectrics are desired; should remain deposit-specific. |
| **Selenium (Se)** | Sulfides, Ag selenides, coal pyrite, Cu refining byproduct | Common chalcogen trace in sulfide systems; Ag2S can contain Se. | **Moderate-High**, especially if chemistry/electronics need it. |
| **Thorium (Th)** | Monazite lattice; pegmatitic uraninite; zircon trace | Major radiogenic impurity/coproduct of monazite and some U minerals. | **High** if nuclear progression expands beyond uranium. |
| **Palladium (Pd)** | Sperrylite substitution, other PGM, magmatic Ni-Cu-PGE sulfides | One of the major economic PGEs in layered intrusions. [S24, S25] | **Very High** if PGE differentiation is useful. |
| **Rhodium (Rh)** | Sperrylite substitution and other PGM | Important but scarcer PGE in layered intrusions. | **High-value late-game** material if needed, but potentially too granular. |
| **Iridium (Ir)** | Sperrylite substitution and refractory PGM | Geologically robust PGE companion, generally low abundance. | **High-value late-game**, but likely too granular unless PGE system is intentionally deep. |
| **Cesium (Cs)** | Pollucite in LCT pegmatites | LCT pegmatites are the principal geologic system for pollucite. [S08] | **Moderate-High** for specialty electronics/chemistry, if justified. |
| **Beryllium (Be)** | Beryl in LCT and other granitic pegmatites | Recurring rare-metal pegmatite commodity. [S08] | **Moderate-High** for specialty alloys, but requires another element branch. |
| **Boron (B)** | Tourmaline in granitic systems; borate evaporites | Strong in evolved granite and saline-lake evaporite systems. | **Moderate-High** for glass/chemistry/advanced ceramics if needed. |
| **Arsenic (As)** | Intrinsic to Cobaltite and Sperrylite; arsenopyrite, realgar/orpiment | Geologically major, but often a penalty/hazard rather than a desired commodity. | **Low as reward, High as processing constraint.** |
| **Bromine (Br)** | Evaporite brines and chloride salts | Strong brine/evaporite trace element. | **Low-Moderate**, only if halogen chemistry needs it. |

---

## Associations that are scientifically tempting but should be resisted

These are examples where geology supports a connection somewhere, but using it generically would flatten important deposit distinctions:

- **Hematite -> Cu/Au/REE/U:** valid in IOCG or related hydrothermal iron-oxide systems, not in ordinary BIF hematite.
- **Cuprite -> Au/Ag/Mo:** valid at the parent copper-deposit scale, not as a cuprite crystal-chemistry rule.
- **Coal -> U/REE/Ge/Ga:** all can be enriched, but usually only in unusual seams or ash-processing contexts.
- **Pyrolusite -> Ni/Co/Cu/Mo:** strongest in particular Mn-oxide/nodule/crust systems, not pure pyrolusite universally.
- **Limestone -> Pb/Zn:** carbonate host rocks are excellent Pb-Zn hosts, but ordinary limestone is not lead-zinc ore.
- **Quartzite -> Au:** gold veins can cut quartzite, but that creates a gold vein, not gold-bearing industrial silica.
- **Monazite -> only Nd:** chemically wrong. Nd is one member of a mixed LREE population that commonly includes Ce, La and Pr.
- **Argentite as room-temperature cubic Ag2S:** mineralogically wrong without the acanthite qualification.

---

# Part XI. Candidate Thelian Industries deposit-profile system

## Design note

The profiles below are **candidates**, not recommendations that every listed profile must ship. Each resource has one mandatory default profile plus at most five specialized profiles. Specialized profiles use no more than two distinct contained/beneficiation trace elements. Associated underground bodies are listed separately and do not count as a trace element unless TI's implementation chooses to merge the mechanics.

A profile can encode one of four different things:

- crystal chemistry;
- fine disseminated mineralogy;
- a mixed mineral concentrate/resource body;
- a larger zoned geological system with a separate reserve pool.

Those distinctions are repeated intentionally so implementation data can preserve them.

---

## Bituminous Coal

### Pure/Default Bituminous Coal

- **Primary:** Coal / carbonaceous feed.
- **Trace outputs:** None required.
- **Associated body:** None.
- **Geological basis:** Ordinary bituminous coal with normal mineral matter.
- **Strength of evidence:** **Very High.**

### Pyritic Coal

- **Primary:** Coal.
- **Primary trace:** Sulfur, chiefly through disseminated pyrite plus organic sulfur.
- **Secondary trace:** None.
- **Associated underground body:** Optional pyrite-rich band or sulfide-rich shale parting.
- **Geological basis:** Pyrite is one of the most common minerals in bituminous coal and a major carrier of sulfur and chalcophile trace elements. [S18]
- **Strength of evidence:** **Very High.**

### Germaniferous Coal

- **Primary:** Coal.
- **Primary trace:** Germanium.
- **Secondary trace:** None, or Ga only if a specific basin model supports it.
- **Associated underground body:** None.
- **Geological basis:** Ge-enriched coal exists and can be an economic Ge source, but enrichment is seam-specific rather than universal.
- **Strength of evidence:** **Highly deposit-specific.**

### Uraniferous/Metal-Enriched Coal

- **Primary:** Coal.
- **Primary trace:** Uranium.
- **Secondary trace:** None.
- **Associated underground body:** Optional U-rich carbonaceous shale rather than U from every coal unit.
- **Geological basis:** Documented but unusual uraniferous coal and carbonaceous horizons.
- **Strength of evidence:** **Rare / Highly deposit-specific.**
- **Implementation recommendation:** Only use if TI explicitly wants a rare anomaly profile. Do not make this a routine uranium source.

---

## Hematite

### Pure/Default Hematite

- **Primary:** Fe.
- **Trace outputs:** None.
- **Associated body:** Magnetite can remain gangue/alternate Fe phase without separate reserve mechanics.
- **Geological basis:** Enriched hematite iron ore/BIF-derived ore.
- **Strength:** **Very High.**

### Manganiferous Hematite

- **Primary:** Fe.
- **Primary trace:** Mn.
- **Secondary trace:** None.
- **Occurrence mode:** Minor hematite substitution plus separate Mn oxide/carbonate grains.
- **Associated body:** Optional Mn-rich horizon.
- **Geological basis:** Mixed Fe-Mn sedimentary and supergene systems occur widely enough to support a dedicated subtype.
- **Strength:** **Common by subtype.**

### Titaniferous Iron Ore

- **Primary:** Fe.
- **Primary trace:** Ti.
- **Secondary trace:** V only if a true Fe-Ti-V intrusive profile is used.
- **Occurrence mode:** Mostly separate ilmenite/titanomagnetite, not Ti economically dissolved in hematite.
- **Associated body:** Ilmenite or vanadiferous titanomagnetite lens.
- **Geological basis:** Magmatic Fe-Ti(-V) oxide systems.
- **Strength:** **Common in that deposit family.**

### Iron-Oxide Copper-Gold Hematite

- **Primary:** Fe.
- **Primary trace:** Cu.
- **Secondary trace:** Au.
- **Occurrence mode:** Separate sulfides and native/precious-metal phases.
- **Associated body:** Cu-rich hydrothermal body.
- **Geological basis:** IOCG-style hydrothermal system, not ordinary iron formation.
- **Strength:** **Highly deposit-specific.**
- **Implementation recommendation:** Use only if TI wants a deliberately rare high-value hematite profile.

---

## Cuprite

### Pure/Default Cuprite

- **Primary:** Cu.
- **Trace outputs:** None.
- **Associated body:** Primary sulfide reserve may be omitted for default gameplay simplicity.
- **Geological basis:** Oxidized Cu ore cap.
- **Strength:** **High.**

### Supergene Cuprite Cap

- **Primary:** Cu.
- **Trace outputs:** None.
- **Associated underground body:** **Chalcocite/chalcopyrite/bornite-rich primary copper sulfide reserve.**
- **Geological basis:** Cuprite forms in the oxidized zone above primary/supergene sulfides.
- **Strength:** **Very High.**
- **Design value:** Probably the best geology-first specialized Cuprite profile because it uses the underground reserve mechanic without inventing trace elements.

### Gold-Bearing Copper System

- **Primary:** Cu.
- **Primary trace:** Au.
- **Secondary trace:** None.
- **Occurrence mode:** Fine native gold/electrum or Au-bearing sulfide assemblage, not cuprite lattice substitution.
- **Associated body:** Primary Cu sulfide body.
- **Geological basis:** Cu-Au porphyry or related hydrothermal parent system. [S01]
- **Strength:** **Common in Cu-Au subtype; not generic cuprite.**

### Silver-Bearing Polymetallic Cuprite

- **Primary:** Cu.
- **Primary trace:** Ag.
- **Secondary trace:** Au optional, but only for an explicitly precious-metal-rich profile.
- **Occurrence mode:** Separate Ag minerals/electrum.
- **Associated body:** Polymetallic sulfide vein or primary Cu sulfide zone.
- **Geological basis:** Oxidized cap above Ag-bearing hydrothermal or polymetallic Cu mineralization.
- **Strength:** **Occasional.**

---

## Cassiterite

### Pure/Default Cassiterite

- **Primary:** Sn.
- **Trace outputs:** None.
- **Associated body:** None.
- **Strength:** **Very High.**

### Tungsten-Bearing Cassiterite Greisen

- **Primary:** Sn.
- **Primary trace:** W.
- **Secondary trace:** None.
- **Occurrence mode:** W in cassiterite lattice plus fine wolframite/scheelite.
- **Associated underground body:** **Wolframite-rich vein/greisen reserve.**
- **Geological basis:** Granite-related Sn-W systems. [S09, S23]
- **Strength:** **Very High for specialized Sn-W districts.**

### Rare-Metal Cassiterite Pegmatite

- **Primary:** Sn.
- **Primary trace:** Ta.
- **Secondary trace:** Nb.
- **Occurrence mode:** Both lattice substitution in cassiterite and separate columbite-tantalite grains.
- **Associated underground body:** Optional Petalite/Li pegmatite zone.
- **Geological basis:** Evolved rare-metal pegmatites and granites.
- **Strength:** **Common in rare-metal subtype.**

### Lithium-Associated Cassiterite Pegmatite

- **Primary:** Sn.
- **Primary trace:** Ta or Nb, optional.
- **Secondary trace:** None.
- **Associated underground body:** **Petalite-rich LCT reserve.**
- **Geological basis:** LCT pegmatites can contain cassiterite together with petalite/spodumene/lepidolite and columbite-tantalite. [S08]
- **Strength:** **Common in LCT subtype.**

### Polymetallic Greisen Cassiterite

- **Primary:** Sn.
- **Primary trace:** Mo.
- **Secondary trace:** Bi.
- **Occurrence mode:** Molybdenite and bismuth minerals as separate phases.
- **Associated body:** Optional Wolframite zone.
- **Geological basis:** Evolved granite-hydrothermal systems.
- **Strength:** **Occasional.**

### Placer Cassiterite

- **Primary:** Sn.
- **Primary trace:** Zr.
- **Secondary trace:** Ti.
- **Occurrence mode:** Separate zircon and ilmenite/rutile grains in a detrital heavy-mineral concentrate.
- **Associated body:** None required.
- **Geological basis:** Resistant cassiterite can be hydraulically concentrated with other heavy minerals.
- **Strength:** **Occasional; source-terrain dependent.**

---

## Galena

### Pure/Default Galena

- **Primary:** Pb.
- **Trace outputs:** None.
- **Associated body:** None.
- **Strength:** **Very High.**

### Silver-Bearing Galena

- **Primary:** Pb.
- **Primary trace:** Ag.
- **Secondary trace:** None.
- **Occurrence mode:** True Ag-Bi/Sb coupled substitution plus microscopic/separate silver phases.
- **Associated body:** Optional Sphalerite reserve if the deposit is Pb-Zn-Ag rather than a simple Pb vein.
- **Geological basis:** Galena is an established Ag host and silver is a common important commodity in many Pb-Zn deposits. [S02, S21]
- **Strength:** **Very High.**

### Zinc-Associated Galena

- **Primary:** Pb.
- **Primary trace:** Ag optional.
- **Secondary trace:** None.
- **Associated underground body:** **Sphalerite.**
- **Geological basis:** MVT, SEDEX and many polymetallic veins contain both galena and sphalerite. [S02]
- **Strength:** **Very High.**
- **Critical distinction:** Zn is primarily a separate Sphalerite phase/body, not a galena trace.

### Polymetallic VMS Galena

- **Primary:** Pb.
- **Primary trace:** Ag.
- **Secondary trace:** Cu.
- **Occurrence mode:** Ag in galena/separate Ag minerals; Cu in chalcopyrite.
- **Associated underground body:** Sphalerite-rich or chalcopyrite-rich lens.
- **Geological basis:** VMS Cu-Zn-Pb-Au-Ag systems. [S03]
- **Strength:** **Common within polymetallic VMS subtype.**

### Bismuth-Antimony Galena

- **Primary:** Pb.
- **Primary trace:** Bi.
- **Secondary trace:** Sb.
- **Occurrence mode:** Lattice substitution plus separate sulfosalts/minerals.
- **Associated body:** None required.
- **Geological basis:** Well-established galena trace-element behavior. [S21]
- **Strength:** **Occasional.**

---

## Bauxite

### Pure/Default Bauxite

- **Primary:** Al feed.
- **Trace outputs:** None.
- **Associated body:** None.
- **Strength:** **Very High.**

### Galliferous Bauxite

- **Primary:** Al.
- **Primary trace:** Ga.
- **Secondary trace:** None.
- **Occurrence mode:** Ga substitutes for Al in gibbsite/boehmite/diaspore and is recovered during alumina processing.
- **Associated body:** None.
- **Geological basis:** Bauxite is the principal global Ga source. [S20]
- **Strength:** **Very High.**

### Scandium-Rich Bauxite

- **Primary:** Al.
- **Primary trace:** Sc.
- **Secondary trace:** None.
- **Occurrence mode:** Distributed among Al/Fe/Ti-bearing phases and residue.
- **Associated body:** None.
- **Geological basis:** Some bauxites and red-mud residues contain potentially recoverable Sc.
- **Strength:** **Occasional / deposit-specific.**

### REE-Bearing Bauxite

- **Primary:** Al.
- **Primary trace:** REE feed.
- **Secondary trace:** Sc optional.
- **Occurrence mode:** Resistant/accessory minerals, Fe/Ti phases, adsorbed/secondary phases and process residue.
- **Associated body:** None.
- **Geological basis:** Selected bauxite districts and residues show REE enrichment, but variability is large.
- **Strength:** **Highly deposit-specific.**

### Titaniferous Bauxite

- **Primary:** Al.
- **Primary trace:** Ti.
- **Secondary trace:** None.
- **Occurrence mode:** Separate anatase/rutile grains.
- **Associated body:** None.
- **Geological basis:** Ti minerals are common bauxite impurities.
- **Strength:** **Common mineralogical association; Moderate as economic coproduct.**

---

## Cinnabar

### Pure/Default Cinnabar

- **Primary:** Hg.
- **Trace outputs:** None.
- **Associated body:** None.
- **Strength:** **Very High.**

### Antimony-Bearing Cinnabar

- **Primary:** Hg.
- **Primary trace:** Sb.
- **Secondary trace:** None.
- **Occurrence mode:** Separate stibnite and Sb minerals.
- **Associated underground body:** Optional stibnite-rich vein/reserve.
- **Geological basis:** Hg-Sb districts are a major natural association. [S15]
- **Strength:** **High.**

### Hot-Spring Gold Cinnabar

- **Primary:** Hg.
- **Primary trace:** Au.
- **Secondary trace:** None.
- **Occurrence mode:** Fine native gold/electrum or deeper precious-metal mineralization.
- **Associated underground body:** **Gold-Bearing Quartz / epithermal Au zone.**
- **Geological basis:** USGS hot-spring Hg model has Hg-As-Sb-Au signature and associated hot-spring Au. [S15]
- **Strength:** **Highly deposit-specific but geologically strong.**

### Polymetallic Epithermal Cinnabar

- **Primary:** Hg.
- **Primary trace:** Ag.
- **Secondary trace:** Au.
- **Associated underground body:** Optional Pb-Zn sulfide vein.
- **Geological basis:** Some epithermal Au-Ag systems contain substantial Hg together with base metals. [S16]
- **Strength:** **Occasional.**

---

## Uraninite

### Pure/Default Uraninite

- **Primary:** U.
- **Trace outputs:** None.
- **Associated body:** None.
- **Strength:** **Very High.**

### Sandstone Uranium-Vanadium

- **Primary:** U.
- **Primary trace:** V.
- **Secondary trace:** None.
- **Occurrence mode:** Separate U-V minerals and V phases at redox fronts, not generic V substitution in uraninite.
- **Associated underground body:** **V-rich sandstone/mineralized horizon.**
- **Geological basis:** Classic sandstone U-V districts.
- **Strength:** **Very High within subtype.**

### Thoriferous Pegmatitic Uraninite

- **Primary:** U.
- **Primary trace:** Th.
- **Secondary trace:** REE feed optional.
- **Occurrence mode:** Th and REE/Y lattice substitution plus accessory minerals.
- **Associated body:** Optional rare-earth pegmatite/accessory-mineral zone.
- **Geological basis:** Igneous/pegmatitic uraninite can contain substantial Th and REE/Y. [S14]
- **Strength:** **Common in pegmatitic uraninite subtype.**

### Polymetallic Hydrothermal Uraninite

- **Primary:** U.
- **Primary trace:** Cu.
- **Secondary trace:** None.
- **Occurrence mode:** Separate Cu sulfides.
- **Associated underground body:** Cu-rich vein/breccia zone.
- **Geological basis:** Some unconformity, vein and breccia U systems contain base-metal sulfides.
- **Strength:** **Occasional / deposit-specific.**

### Phosphate-Associated Uranium

- **Primary:** U.
- **Primary trace:** P only if TI allows mineral feed cross-recovery.
- **Secondary trace:** None.
- **Associated underground body:** Phosphorite bed.
- **Geological basis:** Uranium can occur in phosphate systems, but this profile is more naturally expressed in the reverse direction, Phosphorite -> U trace.
- **Strength:** **Moderate as reverse-link design; not preferred.**

---

## Argentite / Ag2S ore family

### Pure/Default Argentite Ore

- **Primary:** Ag.
- **Trace outputs:** None.
- **Associated body:** None.
- **Mineralogical note:** ordinary low-temperature Ag2S should be understood as acanthite even if gameplay retains the name Argentite. [S29]
- **Strength:** **Very High.**

### Gold-Silver Epithermal Ore

- **Primary:** Ag.
- **Primary trace:** Au.
- **Secondary trace:** None.
- **Occurrence mode:** Electrum/native gold and separate precious-metal minerals.
- **Associated body:** Gold-Bearing Quartz vein zone optional.
- **Geological basis:** Au-Ag epithermal systems. [S16]
- **Strength:** **Very High within subtype.**

### Lead-Zinc-Silver Ore

- **Primary:** Ag.
- **Primary trace:** Pb optional as fine Galena concentrate.
- **Secondary trace:** Zn optional as fine Sphalerite concentrate.
- **Associated underground body:** **Galena and/or Sphalerite zones.**
- **Geological basis:** Polymetallic veins, SEDEX and some VMS systems.
- **Strength:** **High.**
- **Implementation preference:** If the body mechanic is available, prefer bodies over turning Pb and Zn into abstract traces.

### Copper-Silver Sulfide Ore

- **Primary:** Ag.
- **Primary trace:** Cu.
- **Secondary trace:** None.
- **Occurrence mode:** Chalcopyrite and Cu-Ag sulfide phases.
- **Associated body:** Cu-rich sulfide zone.
- **Geological basis:** VMS and polymetallic hydrothermal systems.
- **Strength:** **Occasional/Common by subtype.**

### Selenide-Telluride Silver Ore

- **Primary:** Ag.
- **Primary trace:** Se.
- **Secondary trace:** Te.
- **Occurrence mode:** Ag2S-Se solid solution/related selenides and separate tellurides.
- **Associated body:** None required.
- **Geological basis:** Real but specialized precious-metal mineralogy.
- **Strength:** **Highly deposit-specific.**

---

## Ice Fields

### Pure/Default Ice Field

- **Primary:** H2O.
- **Trace outputs:** None.
- **Associated body:** None.
- **Strength:** **Very High.**

### Regolith-Rich Ice

- **Primary:** H2O.
- **Trace outputs:** None recommended.
- **Processing effect:** Increased solids/dust separation burden.
- **Geological basis:** Extraterrestrial cold-trap or buried-ice analogue mixed with rocky debris.
- **Strength:** **Reasonable worldbuilding adaptation.**

### Volatile-Rich Ice

- **Primary:** H2O.
- **Primary trace:** Optional non-metal volatile stream, such as CO2/NH3 depending TI chemistry.
- **Secondary trace:** None.
- **Associated body:** None.
- **Geological basis:** Cold-trapped volatile mixtures are plausible on airless/cold bodies, but exact species depend on planetary history.
- **Strength:** **Planet-specific.**

### Saline Ice

- **Primary:** H2O.
- **Primary trace:** Chloride/salt brine feed, not a metal trace.
- **Associated underground body:** Optional salt/brine lens.
- **Geological basis:** Requires prior liquid-water/brine history.
- **Strength:** **Moderate fictional adaptation for a Moon-like Luna.**

---

## Pyrolusite / Mn-oxide ore

### Pure/Default Pyrolusite

- **Primary:** Mn.
- **Trace outputs:** None.
- **Associated body:** None.
- **Strength:** **Very High.**

### Cobaltiferous Manganese Oxide

- **Primary:** Mn.
- **Primary trace:** Co.
- **Secondary trace:** None.
- **Occurrence mode:** Co adsorbed/substituted in mixed Mn oxides and/or discrete Co-rich Mn phases, not assumed to reside in pure pyrolusite lattice.
- **Associated underground body:** Optional Co-rich Mn horizon.
- **Geological basis:** Supergene and some sedimentary Mn oxides can strongly scavenge cobalt.
- **Strength:** **Occasional / subtype-specific.**

### Nickel-Cobalt Manganese Oxide

- **Primary:** Mn.
- **Primary trace:** Ni.
- **Secondary trace:** Co.
- **Occurrence mode:** Adsorbed/substituted in poorly crystalline Mn oxides and associated phases.
- **Associated body:** None required.
- **Geological basis:** Polymetallic Mn nodule/crust analogue. Pure pyrolusite is not the dominant mineral in many such systems, so this profile intentionally represents a broader Mn-oxide ore family.
- **Strength:** **High for nodule/crust-style ore; low for generic pyrolusite.**

### Hydrothermal Manganese Oxide

- **Primary:** Mn.
- **Trace outputs:** None required.
- **Associated body:** Optional barite or carbonate-rich vein facies.
- **Geological basis:** Hydrothermal/hot-spring Mn oxide veins and stratified deposits. [S28]
- **Strength:** **High.**

### Oxidized Mn-over-Carbonate Deposit

- **Primary:** Mn.
- **Trace outputs:** None required.
- **Associated underground body:** **Rhodochrosite/Mn-carbonate reserve.**
- **Geological basis:** Supergene oxidation of reduced manganese carbonate or mixed Mn protore can produce oxide-rich caps.
- **Strength:** **Common in appropriate weathering systems.**

---

## Cobaltite

### Pure/Default Cobaltite

- **Primary:** Co.
- **Trace outputs:** None.
- **Associated body:** None.
- **Strength:** **Very High.**

### Nickeliferous Cobaltite

- **Primary:** Co.
- **Primary trace:** Ni.
- **Secondary trace:** None.
- **Occurrence mode:** True Co-Ni-Fe sulfarsenide solid solution plus associated Ni arsenides.
- **Associated body:** Optional Ni-arsenide zone.
- **Geological basis:** Ni substitution is one of the most defensible mineral-level cobaltite relationships.
- **Strength:** **High.**

### Copper-Gold Cobaltite

- **Primary:** Co.
- **Primary trace:** Cu.
- **Secondary trace:** Au.
- **Occurrence mode:** Chalcopyrite and native/submicroscopic gold as separate phases.
- **Associated underground body:** **Chalcopyrite-rich Cu zone.**
- **Geological basis:** USGS metasedimentary Co-Cu-Au model. [S10]
- **Strength:** **High within subtype.**

### Silver-Bismuth Five-Element Vein Cobaltite

- **Primary:** Co.
- **Primary trace:** Ag.
- **Secondary trace:** Bi.
- **Occurrence mode:** Native silver, Ag minerals, native Bi/bismuthinite and Ni-Co arsenides.
- **Associated underground body:** Optional Ni-arsenide reserve.
- **Geological basis:** Co-Ni-Ag-Bi-As five-element vein family.
- **Strength:** **Occasional / deposit-specific.**

### Tungsten-REE Complex Cobaltite

- **Primary:** Co.
- **Primary trace:** W.
- **Secondary trace:** REE feed.
- **Occurrence mode:** Scheelite plus monazite/allanite/xenotime accessory minerals.
- **Associated body:** None required.
- **Geological basis:** Documented in some complex metasedimentary Co-Cu-Au systems, but far from universal. [S10]
- **Strength:** **Highly deposit-specific.**

---

## Chromite

### Pure/Default Chromite

- **Primary:** Cr.
- **Trace outputs:** None.
- **Associated body:** None.
- **Geological basis:** Podiform or stratiform chromite without economic PGE enrichment.
- **Strength:** **Very High.**

### PGE-Bearing Stratiform Chromite

- **Primary:** Cr.
- **Primary trace:** Pt/PGE feed.
- **Secondary trace:** None.
- **Occurrence mode:** Discrete PGM within or near chromitite seams.
- **Associated underground body:** **Sperrylite/PGE reef.**
- **Geological basis:** USGS stratiform chromite model identifies significant PGE mineralization in chromite-rich seams. [S05]
- **Strength:** **Very High within subtype.**

### Nickel-Copper Sulfide-Associated Chromite

- **Primary:** Cr.
- **Primary trace:** Ni.
- **Secondary trace:** Cu.
- **Occurrence mode:** Pentlandite and chalcopyrite in distinct sulfide assemblages.
- **Associated underground body:** **Pentlandite-rich Ni-Cu sulfide lens.**
- **Geological basis:** Large mafic-ultramafic complexes can host both chromitite and Ni-Cu sulfide mineralization.
- **Strength:** **Occasional at deposit scale; strong at complex scale.**

### Titaniferous Chromite

- **Primary:** Cr.
- **Primary trace:** Ti.
- **Secondary trace:** None.
- **Occurrence mode:** Minor chromite substitution plus separate ilmenite/rutile.
- **Associated body:** Ilmenite-rich layer optional.
- **Geological basis:** Ti oxides occur in some stratiform chromite assemblages.
- **Strength:** **Occasional.**

### Podiform Ophiolite Chromite

- **Primary:** Cr.
- **Trace outputs:** None by default.
- **Associated body:** Optional small PGE-rich pod only if explicitly rolled as an anomalous subtype.
- **Geological basis:** Chromite pods in dunite/harzburgite of ophiolitic mantle sequences.
- **Strength:** **Very High.**
- **Design value:** A useful geological profile that changes deposit geometry without forcing a byproduct.

---

## Zircon

### Pure/Default Zircon

- **Primary:** Zr.
- **Trace outputs:** None.
- **Associated body:** None.
- **Strength:** **Very High.**

### Hafnian Zircon

- **Primary:** Zr.
- **Primary trace:** Hf.
- **Secondary trace:** None.
- **Occurrence mode:** Direct lattice substitution.
- **Associated body:** None.
- **Geological basis:** Zr-Hf geochemical coupling is fundamental; zircon is the principal Hf source. [S07]
- **Strength:** **Very High.**

### Titanium-Rich Heavy-Mineral Sand

- **Primary:** Zr.
- **Primary trace:** Ti.
- **Secondary trace:** None.
- **Occurrence mode:** Separate ilmenite/rutile/leucoxene grains.
- **Associated underground body:** Optional Ilmenite-rich strandline lens.
- **Geological basis:** Heavy-mineral sands are the main economic zircon source and also major Ti feedstocks. [S06]
- **Strength:** **Very High.**

### Monazite-Bearing Zircon Sand

- **Primary:** Zr.
- **Primary trace:** REE/Nd feed.
- **Secondary trace:** Ti optional if the profile is a full heavy-mineral assemblage.
- **Occurrence mode:** Separate monazite and ilmenite/rutile grains.
- **Associated underground body:** Optional Monazite-rich strandline lens.
- **Geological basis:** Monazite is a recurring heavy-mineral sand coproduct. [S06]
- **Strength:** **High.**

### Tin-Bearing Heavy-Mineral Placer

- **Primary:** Zr.
- **Primary trace:** Sn.
- **Secondary trace:** Ti.
- **Occurrence mode:** Cassiterite plus ilmenite/rutile as separate detrital grains.
- **Associated body:** Optional Cassiterite-rich placer lens.
- **Geological basis:** Where granitic source terranes supply both zircon and cassiterite.
- **Strength:** **Occasional / source-terrain specific.**

### Uraniferous Zircon

- **Primary:** Zr.
- **Primary trace:** U.
- **Secondary trace:** Th.
- **Occurrence mode:** Lattice substitution.
- **Associated body:** None.
- **Geological basis:** U-Th-bearing zircon is commonplace at trace levels, but economic recovery from ordinary zircon is generally poor.
- **Strength:** **High mineralogically, Low as economic byproduct.**
- **Implementation recommendation:** Prefer as a processing/radiological impurity modifier unless TI specifically wants zircon-derived U/Th.

---

## Pentlandite

### Pure/Default Pentlandite

- **Primary:** Ni.
- **Trace outputs:** None.
- **Associated body:** Pyrrhotite/chalcopyrite remain normal ore assemblage without extra reward.
- **Strength:** **Very High.**

### Cobaltiferous Pentlandite

- **Primary:** Ni.
- **Primary trace:** Co.
- **Secondary trace:** None.
- **Occurrence mode:** Co substitution in pentlandite and associated sulfides.
- **Associated body:** None required.
- **Geological basis:** Co is a common Ni-sulfide byproduct. [S04]
- **Strength:** **Very High.**

### Copper-Rich Magmatic Nickel Sulfide

- **Primary:** Ni.
- **Primary trace:** Cu.
- **Secondary trace:** Co optional.
- **Occurrence mode:** Chalcopyrite/cubanite separate mineral phases; Co in sulfides.
- **Associated underground body:** **Chalcopyrite-rich Cu lens.**
- **Geological basis:** Pentlandite-pyrrhotite-chalcopyrite is the characteristic magmatic Ni-Cu sulfide assemblage. [S04]
- **Strength:** **Very High.**

### PGE-Bearing Nickel Sulfide

- **Primary:** Ni.
- **Primary trace:** Pt/PGE feed.
- **Secondary trace:** Co.
- **Occurrence mode:** Discrete PGM plus partial PGE residence in sulfides.
- **Associated underground body:** **Sperrylite/PGE reef.**
- **Geological basis:** PGE and Co are major byproducts in many magmatic Ni-Cu deposits. [S04]
- **Strength:** **High.**

### Gold-Bearing Nickel-Copper Sulfide

- **Primary:** Ni.
- **Primary trace:** Au.
- **Secondary trace:** Co or Cu, depending implementation.
- **Occurrence mode:** Precious-metal phases and sulfide-hosted Au.
- **Associated body:** Cu-rich sulfide zone optional.
- **Geological basis:** Gold is recovered as a byproduct from many magmatic Ni-Cu ores. [S04]
- **Strength:** **Common as low-level byproduct; economic significance variable.**

### Layered-Intrusion Nickel-Chromium System

- **Primary:** Ni.
- **Primary trace:** Pt/PGE feed optional.
- **Secondary trace:** None.
- **Associated underground body:** **Chromite/chromitite layer.**
- **Geological basis:** The same layered mafic-ultramafic complex can host Ni-Cu sulfide, PGE reef and chromitite mineralization at different stratigraphic levels.
- **Strength:** **High at complex scale, not necessarily in the same hand specimen.**

---

## Sphalerite

### Pure/Default Sphalerite

- **Primary:** Zn.
- **Trace outputs:** None.
- **Associated body:** None.
- **Strength:** **Very High.**

### Cadmium-Bearing Sphalerite

- **Primary:** Zn.
- **Primary trace:** Cd.
- **Secondary trace:** None.
- **Occurrence mode:** Direct Cd-for-Zn lattice substitution plus microscopic greenockite locally.
- **Associated body:** None.
- **Geological basis:** Classical zinc-ore byproduct relationship. [S22]
- **Strength:** **Very High.**

### Germanium-Gallium Sphalerite

- **Primary:** Zn.
- **Primary trace:** Ge.
- **Secondary trace:** Ga.
- **Occurrence mode:** Lattice/defect-controlled substitution.
- **Associated body:** None.
- **Geological basis:** Both elements can be hosted by sphalerite; Ge-rich districts are uncommon but important. [S20, S22]
- **Strength:** **Highly deposit-specific enrichment, strong mineralogical basis.**

### Indium-Bearing Sphalerite

- **Primary:** Zn.
- **Primary trace:** In.
- **Secondary trace:** Cu optional if coupled-substitution recovery is modeled.
- **Occurrence mode:** Coupled substitution in sphalerite, commonly involving Cu.
- **Associated body:** Optional chalcopyrite-rich zone.
- **Geological basis:** In-bearing sphalerite occurs in selected VMS/SEDEX/polymetallic deposits.
- **Strength:** **Occasional / subtype-specific.**

### Lead-Silver Zinc Deposit

- **Primary:** Zn.
- **Primary trace:** Ag, only if Ag-bearing phases occur through the Zn ore.
- **Secondary trace:** None.
- **Associated underground body:** **Galena.**
- **Geological basis:** MVT/SEDEX Pb-Zn-Ag systems. [S02]
- **Strength:** **Very High for Pb-Zn body; Common for Ag byproduct.**

### Copper-Zinc VMS Deposit

- **Primary:** Zn.
- **Primary trace:** Cu.
- **Secondary trace:** Ag optional.
- **Occurrence mode:** Chalcopyrite and Ag phases.
- **Associated underground body:** **Chalcopyrite-rich Cu lens.**
- **Geological basis:** VMS Cu-Zn-Pb-Au-Ag systems. [S03]
- **Strength:** **Very High within VMS subtype.**

---

## Calcite / Limestone

### Pure/Default Limestone

- **Primary:** Ca-bearing industrial feed.
- **Trace outputs:** None.
- **Associated body:** None.
- **Strength:** **Very High.**

### Dolomitic Limestone

- **Primary:** Ca feed.
- **Primary trace/coproduct:** Mg.
- **Secondary trace:** None.
- **Occurrence mode:** Separate dolomite mineral making up part of the carbonate rock, plus limited Mg in calcite.
- **Associated body:** Optional dolostone layer.
- **Geological basis:** Dolomitization is widespread in carbonate platforms.
- **Strength:** **Very High.**

### Phosphatic Limestone

- **Primary:** Ca feed.
- **Primary trace:** P.
- **Secondary trace:** None.
- **Occurrence mode:** Apatite/phosphatic fossils and grains.
- **Associated underground body:** Optional Phosphorite bed.
- **Geological basis:** Carbonate-phosphate facies transitions are common in some shelf basins.
- **Strength:** **Occasional.**

### MVT Mineralized Limestone

- **Primary:** Ca feed.
- **Trace outputs:** None required from the limestone itself.
- **Associated underground body:** **Galena and Sphalerite.**
- **Geological basis:** MVT Pb-Zn deposits are hosted mainly by limestone and dolostone. [S02]
- **Strength:** **Very High for the host/body relationship.**
- **Critical design note:** This profile should generate Pb/Zn reserve bodies, not Pb/Zn trace percentages in normal limestone.

### Skarned Limestone

- **Primary:** Ca feed, potentially altered/reduced yield.
- **Primary trace:** Cu or W, choose one by subtype.
- **Secondary trace:** None.
- **Associated underground body:** Cu-, W-, Zn- or Sn-bearing skarn reserve depending the chosen subtype.
- **Geological basis:** Carbonate rocks adjacent to intrusions can be replaced by calc-silicate skarn mineralization.
- **Strength:** **Highly deposit-specific but strong when present.**

---

## Gold-Bearing Quartz

### Pure/Default Gold-Bearing Quartz

- **Primary:** Au.
- **Trace outputs:** None.
- **Occurrence mode:** Native gold in quartz vein with ordinary sulfide gangue.
- **Associated body:** None.
- **Strength:** **Very High as gameplay abstraction.**

### Silver-Rich Gold Quartz

- **Primary:** Au.
- **Primary trace:** Ag.
- **Secondary trace:** None.
- **Occurrence mode:** Electrum/native silver and Ag minerals.
- **Associated body:** None.
- **Geological basis:** Au-Ag association is common in lode and epithermal systems.
- **Strength:** **Very High.**

### Polymetallic Gold Vein

- **Primary:** Au.
- **Primary trace:** Cu.
- **Secondary trace:** Ag.
- **Occurrence mode:** Chalcopyrite plus electrum/Ag phases.
- **Associated underground body:** **Galena and/or Sphalerite vein zone.**
- **Geological basis:** Polymetallic Au-Ag-Pb-Zn-Cu veins are well established. [S16, S17]
- **Strength:** **Common in specific vein families.**

### Tungsten-Bismuth Gold Vein

- **Primary:** Au.
- **Primary trace:** W.
- **Secondary trace:** Bi.
- **Occurrence mode:** Scheelite/wolframite and Bi minerals.
- **Associated body:** Optional Wolframite-rich zone.
- **Geological basis:** Some orogenic/intrusion-related gold systems carry W-Bi associations.
- **Strength:** **Occasional / district-specific.**

### Telluride Gold

- **Primary:** Au.
- **Primary trace:** Te.
- **Secondary trace:** Ag.
- **Occurrence mode:** Au-Ag tellurides and electrum.
- **Associated body:** None required.
- **Geological basis:** Important in selected epithermal/alkalic and intrusion-related gold districts.
- **Strength:** **Highly deposit-specific.**

### Arsenopyrite-Rich Refractory Gold

- **Primary:** Au.
- **Trace outputs:** None required.
- **Processing modifier:** More Au is locked in pyrite/arsenopyrite, increasing beneficiation/oxidation complexity.
- **Associated body:** None.
- **Geological basis:** Invisible/refractory gold in sulfides is a major real processing distinction.
- **Strength:** **Very High.**
- **Design value:** This is an excellent example of geological variety that does not need an extra reward element.

## Carnallite

### Pure/Default Carnallite

- **Primary:** Mg + K.
- **Trace outputs:** None.
- **Occurrence mode:** Carnallite itself, KMgCl3·6H2O, intergrown with other evaporite salts.
- **Associated body:** None required.
- **Geological basis:** Carnallite is a normal late-stage chloride evaporite mineral in potash-bearing salt sequences. [S27]
- **Strength:** **Very High.**

### Sylvite-Rich Carnallitite

- **Primary:** Mg + K, with a more K-rich beneficiation balance than the default.
- **Primary trace:** None.
- **Secondary trace:** None.
- **Occurrence mode:** Separate intergrown sylvite (KCl) and carnallite grains within the same potash bed.
- **Associated underground body:** Optional **sylvite-rich potash seam** if TI later represents potash subtypes separately.
- **Geological basis:** Carnallite and sylvite are major potash minerals and commonly occur with halite in stratabound evaporites. [S27]
- **Strength:** **Very High.**
- **Design value:** This is better represented as a **yield-ratio/beneficiation profile** than as a new trace element.

### Sulfate-Rich Mixed Evaporite

- **Primary:** Mg + K.
- **Primary trace:** None recommended.
- **Secondary trace:** None.
- **Occurrence mode:** Separate sulfate evaporite phases such as kieserite, polyhalite, langbeinite, gypsum, or anhydrite mixed with chloride salts.
- **Associated underground body:** Optional sulfate-rich evaporite seam.
- **Geological basis:** Potash basins may contain chloride- and sulfate-bearing salt assemblages and extensive anhydrite/gypsum. [S27]
- **Strength:** **Common at basin scale; assemblage varies strongly by stratigraphic member.**
- **Design value:** Best used to alter processing chemistry, sulfur/sulfate handling, or Mg:K recovery rather than automatically produce another metal.

### Borate-Bearing Potash Evaporite

- **Primary:** Mg + K.
- **Primary trace:** B.
- **Secondary trace:** None.
- **Occurrence mode:** Separate borate mineral phases in highly evolved saline brines/evaporites.
- **Associated underground body:** Optional borate-rich brine or bed.
- **Geological basis:** Borates can occur late in the evaporative sequence of closed-basin saline systems, but are not universal in carnallite deposits. [S27]
- **Strength:** **Occasional / basin-specific.**

### Magnesium-Chloride-Rich Carnallite Zone

- **Primary:** Mg + K, biased toward Mg recovery.
- **Trace outputs:** None.
- **Occurrence mode:** Carnallite with bischofite and other Mg-rich chloride salts.
- **Associated underground body:** Mg-chloride brine or bischofite-rich layer.
- **Geological basis:** Highly evolved evaporites may contain Mg-chloride minerals with carnallite. [S27]
- **Strength:** **Occasional.**
- **Design value:** Another processing/yield profile rather than an excuse to introduce an unrelated trace element.

---

## Phosphorite

### Pure/Default Phosphorite

- **Primary:** P.
- **Trace outputs:** None.
- **Occurrence mode:** Apatite-group phosphate grains, pellets, skeletal material, and microcrystalline phosphate in sedimentary rock.
- **Associated body:** None required.
- **Geological basis:** Marine phosphorites are principally apatite-rich sedimentary rocks with variable quartz, clay, carbonate, organic matter, and Fe oxides. [S12]
- **Strength:** **Very High.**

### Uraniferous Phosphorite

- **Primary:** P.
- **Primary trace:** U.
- **Secondary trace:** None.
- **Occurrence mode:** **A**, principally uranium incorporated in apatite/phosphate material, with possible additional adsorption/association with organic matter.
- **Associated underground body:** None required.
- **Geological basis:** Marine phosphate rock commonly contains measurable uranium and has historically been evaluated as a uranium byproduct resource. [S12, S13]
- **Strength:** **High / Common enough to be a canonical specialized profile.**

### Vanadiferous Organic-Rich Phosphorite

- **Primary:** P.
- **Primary trace:** V.
- **Secondary trace:** U optional.
- **Occurrence mode:** Primarily **B**, associated with organic matter, fine sulfides, and the bulk phosphatic sediment rather than requiring V to be a major apatite lattice constituent.
- **Associated underground body:** None.
- **Geological basis:** Organic-rich phosphatic formations can be enriched in V together with U, Mo, Se and other redox-sensitive elements. [S12]
- **Strength:** **Occasional / formation-specific.**

### Cadmium-Bearing Phosphorite

- **Primary:** P.
- **Primary trace:** Cd.
- **Secondary trace:** None.
- **Occurrence mode:** **A/B**, variable partitioning among apatite, organic matter, and fine accessory phases depending on deposit and diagenesis.
- **Associated underground body:** None.
- **Geological basis:** Cd is a recognized minor element in many sedimentary phosphate rocks, but grades vary considerably among provinces. [S12]
- **Strength:** **Common as a minor contaminant; economically useful recovery is deposit- and process-specific.**

### REE-Bearing Phosphorite

- **Primary:** P.
- **Primary trace:** Nd/REE feed.
- **Secondary trace:** U optional.
- **Occurrence mode:** **A/B/C**, REE may substitute into apatite and occur in separate REE-phosphate/accessory phases.
- **Associated underground body:** None required.
- **Geological basis:** Apatite and phosphorite can concentrate REE, but enrichment and recoverability vary strongly by basin and processing route.
- **Strength:** **Occasional / highly deposit-specific as an economic coproduct.**

### Carbonate-Associated Phosphorite

- **Primary:** P.
- **Trace outputs:** None required.
- **Associated underground body:** **Calcite/Limestone** bed or carbonate-rich member.
- **Occurrence mode:** **D**, facies association between phosphatic and carbonate sedimentary units.
- **Geological basis:** Phosphorites commonly occur within marine sedimentary successions containing carbonate, shale, chert, and siliciclastic units. [S12]
- **Strength:** **Common at formation scale, not universal at individual ore-bed scale.**

---

## Wolframite

### Pure/Default Wolframite

- **Primary:** W.
- **Trace outputs:** None.
- **Occurrence mode:** Wolframite-series [(Fe,Mn)WO4] in quartz vein/greisen ore.
- **Associated body:** None required.
- **Geological basis:** Wolframite is a principal tungsten mineral in granite-related vein and greisen deposits. [S09]
- **Strength:** **Very High.**

### Tin-Bearing Wolframite Greisen

- **Primary:** W.
- **Primary trace:** Sn.
- **Secondary trace:** None.
- **Occurrence mode:** **B/C**, cassiterite disseminated/intergrown with wolframite in greisen and quartz-vein ore.
- **Associated underground body:** **Cassiterite-rich greisen/vein zone.**
- **Geological basis:** Granite-related Sn-W systems commonly contain both cassiterite and wolframite. [S09]
- **Strength:** **Very High.**

### Molybdenum-Bismuth Wolframite Vein

- **Primary:** W.
- **Primary trace:** Mo.
- **Secondary trace:** Bi.
- **Occurrence mode:** **B/C**, molybdenite and Bi-bearing sulfides/native bismuth or sulfosalts in the vein/greisen assemblage.
- **Associated underground body:** None required.
- **Geological basis:** Mo and Bi are characteristic accessory/byproduct metals in some evolved granite-related W systems.
- **Strength:** **Occasional / district-specific.**

### Lithium-Associated Sn-W Granite Belt

- **Primary:** W.
- **Primary trace:** Sn optional.
- **Secondary trace:** None.
- **Occurrence mode:** Sn in cassiterite; Li primarily in **separate pegmatite/mica phases**, not wolframite.
- **Associated underground body:** **Petalite/Li-pegmatite** and/or cassiterite-bearing body.
- **Geological basis:** Highly fractionated granitic provinces may spatially link W-Sn greisen systems with LCT or Li-rich pegmatitic/aplitic zones. [S08, S09]
- **Strength:** **Highly deposit-specific at mine scale; strong as a regional granite-system relationship.**
- **Design caution:** Do not make Li a default wolframite trace.

### Tungsten Skarn/Replacement Zone

- **Primary:** W.
- **Trace outputs:** Cu optional if the selected skarn subtype contains chalcopyrite.
- **Associated underground body:** **Calcite/Limestone** protolith or carbonate host; optional Cu-bearing skarn zone.
- **Occurrence mode:** **C/D**, W mineralization at intrusive contacts and replacements in carbonate rocks. Wolframite may accompany a broader W system even though scheelite is often the dominant skarn W mineral.
- **Geological basis:** Tungsten districts include skarn, replacement, vein, and wolframite-quartz mineralization related to felsic plutons. [S09]
- **Strength:** **Common as a tungsten deposit family; wolframite dominance is subtype-specific.**

---

## Ilmenite

### Pure/Default Ilmenite

- **Primary:** Ti.
- **Trace outputs:** None.
- **Occurrence mode:** FeTiO3-rich ilmenite concentrate.
- **Associated body:** None required.
- **Strength:** **Very High.**

### Vanadiferous Fe-Ti Oxide Deposit

- **Primary:** Ti.
- **Primary trace:** V.
- **Secondary trace:** None.
- **Occurrence mode:** **A/C**, some V can occur in ilmenite, but economically important V commonly resides preferentially in associated titanomagnetite/magnetite.
- **Associated underground body:** Fe-Ti-V magnetite-rich oxide layer.
- **Geological basis:** Mafic layered/anorthositic Fe-Ti oxide systems can contain ilmenite plus titanomagnetite and vanadium. [S31]
- **Strength:** **High for the deposit association; only moderate for V specifically inside ilmenite.**

### Zircon-Monazite Heavy-Mineral Sand

- **Primary:** Ti.
- **Primary trace:** Zr.
- **Secondary trace:** Nd/REE feed.
- **Occurrence mode:** **C**, separate detrital zircon and monazite grains recovered during mineral-sands beneficiation.
- **Associated underground body:** Optional zircon-rich or monazite-rich heavy-mineral lens.
- **Geological basis:** Ilmenite, zircon, rutile/leucoxene, and locally monazite are canonical coproduct minerals of heavy-mineral sands. [S06, S07]
- **Strength:** **Very High.**

### Scandium-Bearing Ilmenite

- **Primary:** Ti.
- **Primary trace:** Sc.
- **Secondary trace:** None.
- **Occurrence mode:** **A**, trace-element substitution within ilmenite/Fe-Ti oxide assemblages.
- **Associated underground body:** None.
- **Geological basis:** Sc occurs at trace levels in ilmenite and other mafic Fe-Ti minerals; meaningful enrichment is strongly source dependent. [S31]
- **Strength:** **Highly deposit-specific.**

### Chromium-Bearing Ilmenite

- **Primary:** Ti.
- **Primary trace:** Cr.
- **Secondary trace:** None.
- **Occurrence mode:** **A/C**, Cr substitution in ilmenite plus possible separate chromite/spinel grains.
- **Associated underground body:** **Chromite** only in a mafic-ultramafic source system where stratigraphic/geometric evidence supports it.
- **Geological basis:** Cr can occur in ilmenite and coexisting spinels in mafic rocks, but economic Cr and Ti ores are not automatically co-orebodies. [S05, S31]
- **Strength:** **Occasional / source-specific.**

### Layered-Intrusion Ilmenite-Magnetite

- **Primary:** Ti.
- **Primary trace:** V optional.
- **Secondary trace:** None.
- **Occurrence mode:** **C/D**, discrete cumulate layers or massive Fe-Ti oxide bodies dominated by ilmenite and magnetite/titanomagnetite.
- **Associated underground body:** Fe-rich oxide body.
- **Geological basis:** Fractionating mafic magmas can segregate large Fe-Ti oxide accumulations.
- **Strength:** **Very High within this deposit family.**

---

## Monazite

### Pure/Default Monazite

- **Primary:** Mixed LREE feed, with Ce-La-Nd-Pr normally dominant and Nd as TI's principal gameplay target.
- **Trace outputs:** None required.
- **Critical composition note:** Monazite is **not an Nd-only mineral**. Its REE site is intrinsically occupied by a mixture dominated by light rare-earth elements. [S06, S30, S32]
- **Associated body:** None required.
- **Strength:** **Very High.**

### Thorium-Rich Monazite

- **Primary:** Nd/LREE feed.
- **Primary trace:** Th.
- **Secondary trace:** None.
- **Occurrence mode:** **A**, Th enters the monazite structure through coupled substitutions.
- **Associated underground body:** None.
- **Geological basis:** Thorium is a characteristic and sometimes substantial component of monazite and historically has been considered a recoverable coproduct. [S06, S30]
- **Strength:** **Very High mineralogical association; abundance varies strongly.**

### Uranium-Thorium Monazite

- **Primary:** Nd/LREE feed.
- **Primary trace:** Th.
- **Secondary trace:** U.
- **Occurrence mode:** **A**, coupled structural substitutions in monazite.
- **Associated underground body:** None.
- **Geological basis:** Monazite may contain both Th and subordinate U; the exact actinide inventory varies by source rock and alteration history.
- **Strength:** **Common for Th, Occasional for notable U.**

### Zircon-Ilmenite Monazite Placer

- **Primary:** Nd/LREE feed.
- **Trace outputs:** None required from monazite itself.
- **Associated underground body:** **Zircon** and **Ilmenite** heavy-mineral lenses or reserve pools.
- **Occurrence mode:** **C/D**, physically distinct resistant heavy-mineral grains concentrated together by sedimentary sorting.
- **Geological basis:** Coastal heavy-mineral sands commonly contain ilmenite/rutile/leucoxene and zircon; monazite is an important coproduct in some deposits. [S06]
- **Strength:** **Very High.**

### Carbonatite-Hosted Monazite

- **Primary:** Nd/LREE feed.
- **Primary trace:** Th optional.
- **Secondary trace:** None.
- **Occurrence mode:** **C**, monazite with apatite and other REE minerals in carbonatitic/magmatic-hydrothermal ore.
- **Associated underground body:** Apatite-rich phosphate zone; calcite/dolomite-rich carbonatite host.
- **Geological basis:** Carbonatites are major LREE systems and may contain monazite, apatite, bastnaesite and carbonate gangue. [S30]
- **Strength:** **Common as a REE deposit family; monazite dominance is deposit-specific.**

### Metamorphic/Pegmatitic Monazite

- **Primary:** Nd/LREE feed.
- **Primary trace:** Th.
- **Secondary trace:** U optional.
- **Occurrence mode:** **A/C**, monazite as an accessory mineral in felsic igneous and metamorphic rocks, locally concentrated in pegmatitic or metamorphic segregations.
- **Associated underground body:** None required.
- **Geological basis:** Monazite is widespread as an accessory mineral in evolved crustal rocks, but normally becomes ore only after unusual primary enrichment or placer concentration.
- **Strength:** **Common as accessory mineral; Rare as standalone economic ore.**

---

## Sperrylite

### Pure/Default Sperrylite

- **Primary:** Pt.
- **Trace outputs:** None.
- **Occurrence mode:** PtAs2 grains in a PGE-bearing ore assemblage.
- **Associated body:** None required.
- **Critical composition note:** As is a **major stoichiometric constituent**, not a trace contaminant. It may become a processing/environmental burden rather than a desirable coproduct.
- **Strength:** **Very High mineralogical identity.** [S24]

### Palladium-Rhodium-Iridium Sperrylite

- **Primary:** Pt.
- **Primary trace:** Pd.
- **Secondary trace:** Rh or Ir, choose one for gameplay.
- **Occurrence mode:** **A**, PGE substitution on the Pt site in sperrylite.
- **Associated underground body:** None.
- **Geological basis:** Pd, Rh, and Ir can substitute for Pt in natural sperrylite. [S24]
- **Strength:** **Common as trace substitution; magnitude deposit-specific.**

### Nickel-Copper PGE Reef

- **Primary:** Pt.
- **Primary trace:** Pd.
- **Secondary trace:** Rh optional.
- **Occurrence mode:** **A/B/C**, sperrylite plus other PGM and PGE dissolved in base-metal sulfides.
- **Associated underground body:** **Pentlandite** and Cu-sulfide/chalcopyrite zones.
- **Geological basis:** Layered intrusions and magmatic Ni-Cu-PGE systems are the archetypal geological setting for economic PGE concentrations. [S04, S25]
- **Strength:** **Very High.**

### Chromite-Associated PGE Reef

- **Primary:** Pt.
- **Primary trace:** Pd.
- **Secondary trace:** Rh optional.
- **Occurrence mode:** **B/C**, distinct PGM associated with chromitite layers and sulfide-poor PGE reefs.
- **Associated underground body:** **Chromite** seam.
- **Geological basis:** Stratiform chromitites and layered intrusions may host economically important PGE concentrations. [S05, S25]
- **Strength:** **High / deposit-specific.**

### Telluride-Bismuthide PGE Ore

- **Primary:** Pt.
- **Primary trace:** Te.
- **Secondary trace:** Bi.
- **Occurrence mode:** **C**, separate PGE telluride/bismuthide minerals rather than Te or Bi being required in sperrylite itself.
- **Associated underground body:** None required.
- **Geological basis:** PGE reefs can contain complex arsenide, telluride, antimonide, bismuthide, sulfide and alloy PGM assemblages. [S25]
- **Strength:** **Occasional / mineralogically variable.**

### Gold-Bearing PGE Reef

- **Primary:** Pt.
- **Primary trace:** Au.
- **Secondary trace:** Pd.
- **Occurrence mode:** **B/C**, native/electrum-like Au and PGM/base-metal sulfides within magmatic PGE mineralization.
- **Associated underground body:** Pentlandite-Cu sulfide body optional.
- **Geological basis:** Au can occur as a minor precious-metal coproduct in magmatic Ni-Cu-PGE systems. [S04]
- **Strength:** **Occasional.**

---

## Petalite

### Pure/Default Petalite

- **Primary:** Li.
- **Trace outputs:** None.
- **Occurrence mode:** LiAlSi4O10 in an evolved granitic pegmatite.
- **Associated body:** None required.
- **Strength:** **Very High.**

### Tin-Tantalum Petalite Pegmatite

- **Primary:** Li.
- **Primary trace:** Sn.
- **Secondary trace:** Ta.
- **Occurrence mode:** **C**, cassiterite and columbite-tantalite as separate accessory/ore minerals; neither is a required petalite-lattice constituent.
- **Associated underground body:** **Cassiterite**-rich pocket/zone.
- **Geological basis:** LCT pegmatites commonly contain Li minerals together with cassiterite and Ta-Nb oxides. [S08]
- **Strength:** **High within evolved LCT pegmatites.**

### Cesium-Beryllium Petalite Pegmatite

- **Primary:** Li.
- **Primary trace:** Cs.
- **Secondary trace:** Be.
- **Occurrence mode:** **C**, pollucite and beryl as separate pegmatite phases.
- **Associated underground body:** Pollucite- or beryl-rich pocket if those materials ever enter TI.
- **Geological basis:** Cs and Be are classic rare-element components of strongly fractionated LCT pegmatites. [S08]
- **Strength:** **Occasional to Common in highly evolved LCT subtypes.**

### Tin-Lithium Granite System

- **Primary:** Li.
- **Primary trace:** Sn optional.
- **Secondary trace:** None.
- **Occurrence mode:** **C/D**, petalite-bearing pegmatites spatially associated with cassiterite greisens/veins in the same evolved granite province.
- **Associated underground body:** **Cassiterite**.
- **Geological basis:** LCT pegmatites and granite-related Sn systems can occur in the same highly fractionated felsic magmatic provinces. [S08, S09]
- **Strength:** **Common at district scale in suitable granite provinces; not universal within a single pegmatite.**

### Tungsten-Associated Rare-Metal Granite Belt

- **Primary:** Li.
- **Trace outputs:** None required from petalite.
- **Associated underground body:** **Wolframite** vein/greisen system.
- **Occurrence mode:** **D**, regional association through evolved granite magmatism.
- **Geological basis:** Sn-W greisen systems and rare-metal pegmatites can be zoned around related evolved granites, but direct petalite-wolframite intergrowth is not mandatory. [S08, S09]
- **Strength:** **Highly deposit-specific at mine scale; plausible at district scale.**

### Zoned Lithium Pegmatite

- **Primary:** Li.
- **Trace outputs:** None.
- **Occurrence mode:** Petalite-bearing zones grading into spodumene-, lepidolite-, quartz-, albite- and K-feldspar-rich pegmatite domains.
- **Associated underground body:** None unless TI later distinguishes Li-mineral subtypes.
- **Geological basis:** Internal mineralogical zoning is characteristic of many complex pegmatites. [S08]
- **Strength:** **Common in complex LCT systems.**
- **Design value:** Processing/mineralogy variant rather than a trace-reward profile.

---

## Quartzite / Silica-Bearing Resource

### Pure/Default Silica Resource

- **Primary:** SiO2 / Si feed.
- **Trace outputs:** None.
- **Occurrence mode:** Quartz-rich rock, quartzite, vein quartz, or high-silica sand depending on map/resource implementation.
- **Associated body:** None required.
- **Strength:** **Very High.**

### High-Purity Quartz

- **Primary:** SiO2 with enhanced high-grade yield/quality.
- **Trace outputs:** None.
- **Occurrence mode:** Exceptionally low lattice/inclusion impurity content.
- **Associated body:** None.
- **Geological basis:** High-purity quartz is defined by very low total impurity concentrations and is a distinct high-value industrial feedstock. [S26]
- **Strength:** **High as a real industrial grade distinction, but geologically uncommon.**
- **Design value:** This is better as a quality/processing profile than as a source of trace metals.

### Ferruginous Quartzite

- **Primary:** SiO2.
- **Primary trace:** Fe.
- **Secondary trace:** None.
- **Occurrence mode:** **C**, hematite/magnetite-rich layers, grains, or cement rather than large Fe substitution in quartz.
- **Associated underground body:** **Hematite**-rich iron-formation layer if the geological province supports it.
- **Geological basis:** Quartz-rich metasedimentary rocks and banded iron formations can be spatially/interlayer associated, producing ferruginous quartzite.
- **Strength:** **Common in specific iron-formation terranes; not a generic quartzite property.**

### Heavy-Mineral Silica Sand

- **Primary:** SiO2.
- **Primary trace:** Zr.
- **Secondary trace:** Ti.
- **Occurrence mode:** **C**, detrital zircon and ilmenite/rutile grains physically mixed with quartz sand.
- **Associated underground body:** Zircon- or ilmenite-rich placer lens.
- **Geological basis:** Heavy-mineral sands are ordinary quartz-dominated coastal sediments locally enriched in dense zircon/Ti minerals by hydraulic and aeolian sorting. [S06]
- **Strength:** **Very High for silica sand; not appropriate for metamorphic quartzite.**

### Alumina-Bearing Quartzite

- **Primary:** SiO2.
- **Primary trace:** Al only if TI treats aluminosilicate contamination as recoverable.
- **Secondary trace:** None.
- **Occurrence mode:** **C**, feldspar, mica, clay, kyanite/sillimanite or other aluminosilicate impurities, rather than substantial Al in ideal quartz.
- **Associated underground body:** None required.
- **Geological basis:** Ordinary quartz-rich rocks commonly contain variable aluminosilicate impurities; high-purity silica beneficiation specifically seeks to remove them. [S26]
- **Strength:** **Common as impurity; weak as an economic Al coproduct.**
- **Design recommendation:** Prefer a processing penalty over Al output.

### Hydrothermal Vein Quartz

- **Primary:** SiO2.
- **Trace outputs:** None by default.
- **Associated underground body:** Optional **Gold-Bearing Quartz** vein only where a hydrothermal gold system is explicitly generated.
- **Occurrence mode:** **D**, spatial/structural association rather than claiming that ordinary quartzite contains gold.
- **Geological basis:** Quartz veins are common gangue in hydrothermal ore systems, including lode gold. [S17]
- **Strength:** **Common as hydrothermal gangue; gold association is highly system-specific.**

---

# Part XII. Planetary geological fit and required fictional adaptation

## Interpretation rule

These ratings compare the **real geological processes needed to form the listed ore bodies** with the environmental cues presently associated with each Factorio or custom TI planet. They do not imply that a fictional planet must duplicate Earth plate tectonics, atmosphere, ocean chemistry, or biological evolution.

For the four custom TI worlds **Luna, Pyrosauria, Tectara, and Voltaris**, no complete planetary geology was supplied with this research request. Their ratings are therefore **provisional** and state the geological history TI would need to establish in worldbuilding.

| Planet / resource | Geological fit | Why | Controlled adaptation, if needed |
|---|---|---|---|
| **Nauvis - Bituminous Coal** | **Excellent geological fit** | An Earth-like, vegetated, water-bearing world can readily support sedimentary basins and buried terrestrial organic matter. | None beyond selecting coal-bearing basins. |
| **Nauvis - Hematite** | **Excellent geological fit** | Diverse Earth-like crust can host BIF-derived ores, sedimentary ironstones, hydrothermal hematite, and supergene enrichment. | None. |
| **Nauvis - Cuprite** | **Reasonable geological fit** | Oxidized copper zones can form above primary Cu sulfide deposits under oxygenated near-surface weathering. | Treat cuprite as the visible/minable **oxidized expression of a larger Cu system**, rather than implying most crustal Cu begins as cuprite. |
| **Nauvis - Cassiterite** | **Excellent geological fit** | Continental felsic magmatism and erosional placers are entirely compatible with an Earth-like planet. | Requires selected evolved-granite provinces, not ubiquitous occurrence. |
| **Nauvis - Galena** | **Excellent geological fit** | Carbonate-hosted, sedimentary-exhalative, VMS, vein and replacement Pb systems are all compatible with a geologically diverse world. | None. |
| **Nauvis - Bauxite** | **Excellent geological fit** | Long-lived warm, wet weathering surfaces over Al-bearing rocks are plausible on an Earth-like biosphere. | Concentrate bauxite in stable, deeply weathered terrains rather than arbitrary climates. |
| **Luna - Ice Fields** | **Excellent geological fit if Luna is Moon-like and has cold traps** | Water ice is physically plausible in permanently cold or buried volatile reservoirs. | Specify polar/permanently shadowed or insulated subsurface cold traps if Luna is airless. |
| **Luna - Uraninite** | **Requires moderate fictional adaptation** | U-bearing accessory minerals can occur in differentiated crust, but economic uraninite concentration normally requires evolved magmatism, hydrothermal fluids, sedimentary redox traps, or metamorphic remobilization. | Give Luna an ancient differentiated crust plus hydrothermal/impact-fluid or buried redox history. |
| **Luna - Cinnabar** | **Requires substantial fictional adaptation** | Major cinnabar deposits are low-temperature hydrothermal/volcanic systems involving volatile-rich fluids. Hg is highly mobile and difficult to reconcile with a simple dry, airless lunar surface. | Establish ancient volatile-rich volcanism/hydrothermal circulation and protected subsurface Hg mineralization. |
| **Luna - Argentite/Ag2S** | **Requires substantial fictional adaptation** | Economic Ag2S ore is typically hydrothermal/epithermal or polymetallic-vein mineralization and therefore records fluid circulation and sulfur-rich ore chemistry. | Give Luna ancient hydrothermal provinces. Retain the acanthite/argentite phase caveat. |
| **Vulcanus - Chromite** | **Excellent geological fit** | A volcanic/mafic planet strongly supports ultramafic-mafic magmatism, cumulates, chromitite seams and podiform chromite analogues. | Little adaptation needed; layered intrusive roots can sit beneath younger volcanic terrain. |
| **Vulcanus - Cobaltite** | **Reasonable geological fit** | Hydrothermal systems can accompany active magmatism, and Co-Ni-Cu-As fluids can precipitate cobaltite-group ores. | Requires evolved hydrothermal systems, not just fresh basalt/lava. |
| **Vulcanus - Pyrolusite** | **Requires moderate fictional adaptation** | Mn oxides can be hydrothermal, but many major Mn-oxide ores also depend on aqueous sedimentation, supergene weathering, and oxidizing conditions. Current canonical Vulcanus is extremely hot, dry, and lacks surface water. | Invoke older water-bearing/oxidizing epochs or deep hydrothermal Mn oxidation before present desiccation. |
| **Fulgora - Zircon** | **Requires moderate fictional adaptation** | Fulgora's sand-rich surface is visually compatible with placers, but economic zircon sands require zircon-bearing source rocks plus extensive sedimentary/aeolian sorting. | Establish ancient felsic crust and a long erosional sediment-routing history, potentially predating current oilsands/desiccation. |
| **Fulgora - Pentlandite** | **Requires moderate fictional adaptation** | Pentlandite requires mafic-ultramafic magmatism and immiscible sulfide segregation, a deep-crustal process not implied by the modern lightning-desert surface. | Establish ancient mafic intrusive provinces beneath the weathered surface. |
| **Gleba - Sphalerite** | **Reasonable geological fit** | Wet surface ecology does not conflict with older carbonate-hosted MVT, sedimentary-exhalative, VMS, or hydrothermal Zn systems. | The Zn ore should reflect older bedrock/basin history rather than being generated by the modern swamp. |
| **Gleba - Calcite/Limestone** | **Excellent geological fit** | A water-rich biologically active planet can plausibly develop carbonate sedimentation, shells/skeletal carbonate analogues, microbial carbonate, or inorganic precipitation. | Earth-style biology is not required; only a mechanism for carbonate saturation and deposition. |
| **Gleba - Gold-Bearing Quartz** | **Reasonable geological fit** | Lode gold records hydrothermal/orogenic or intrusion-related basement processes that can predate the modern humid biosphere. | Place gold districts in older basement/tectonic belts beneath the swamp cover. |
| **Pyrosauria - Carnallite** | **Requires moderate fictional adaptation, provisional** | Carnallite requires highly saline brines and advanced evaporation in restricted marine or closed continental basins. | If Pyrosauria is a hot/dry world, give it former saline seas/lakes and preserved buried evaporites. |
| **Pyrosauria - Phosphorite** | **Requires substantial fictional adaptation, provisional** | Major terrestrial phosphorite is dominantly marine sedimentary and commonly linked to biological productivity, upwelling, redox cycling and reworking. | Establish an ancient oceanic/biological sedimentary era, or intentionally invent a non-biological phosphate-concentrating analogue. |
| **Tectara - Wolframite** | **Excellent geological fit, provisional** | A tectonically and magmatically differentiated continental-style crust readily supports evolved granites, greisen, quartz veins, skarns, Sn-W belts and related structures. | Worldbuilding should explicitly include felsic plutonism and crustal differentiation. |
| **Tectara - Ilmenite** | **Excellent geological fit, provisional** | Mafic intrusions, anorthosite suites and/or erosion-derived heavy sands readily supply ilmenite. | No major bend if Tectara has both mafic and felsic crustal provinces. |
| **Voltaris - Monazite** | **Reasonable geological fit, provisional** | Monazite can be concentrated in heavy-mineral placers or primary carbonatite/evolved igneous systems. | Define one or both source systems rather than invoking electricity as the mineral-forming mechanism. |
| **Voltaris - Sperrylite** | **Reasonable geological fit, provisional** | Sperrylite is compatible with layered mafic-ultramafic PGE systems and magmatic Ni-Cu-PGE mineralization. | Give Voltaris deep mafic-ultramafic intrusive provinces distinct from any monazite source province. |

## Planet-level synthesis

### Excellent geological fit

- **Nauvis**, overall. Its Earth-like diversity can naturally accommodate the broadest ore roster. The main controlled simplification is using **cuprite** as the named copper resource rather than a primary sulfide such as chalcopyrite.
- **Tectara**, provisionally, if its name reflects tectonic/magmatic activity and it contains both evolved felsic and mafic intrusive provinces. Sn-W-related granites and Fe-Ti oxide systems need not occur in the same intrusion.

### Reasonable geological fit

- **Gleba.** Carbonate sedimentation is particularly natural; sphalerite and gold can occupy older crustal/basement systems beneath the biologically active surface.
- **Voltaris**, provisionally. Monazite and sperrylite are both plausible on one differentiated rocky planet but normally belong to very different deposit provinces.

### Requires moderate fictional adaptation

- **Vulcanus.** Chromite is an excellent fit and cobaltite is workable, but a large pyrolusite economy implies more water/oxidation history than present-day canonical Vulcanus displays. Factorio describes Vulcanus as a hot volcanic world with lava, ashlands and sulfuric-acid geysers, and explicitly notes the absence of natural water. The safest explanation is an older aqueous/hydrothermal epoch preserved in ancient crust.
- **Fulgora.** Present-day windblown sand makes placer textures visually convincing, but zircon requires sediment provenance/sorting and pentlandite requires ancient mafic magmatism. Both are plausible as inherited geology rather than products of the current lightning desert.
- **Pyrosauria**, provisionally. Carnallite is excellent for an **ancient evaporite basin**, but phosphorite needs a stronger sedimentary/oceanic history than a fire-themed world would imply by name alone.

### Requires substantial fictional adaptation

- **Luna**, if it is intended as an airless Moon analogue. Ice can be highly plausible in cold traps, but cinnabar and Ag2S economic deposits require substantial ancient volatile-rich hydrothermal systems; uraninite also benefits from differentiated igneous or fluid-mediated concentration. This is workable science fiction, but it should be explicit world history rather than treated as ordinary lunar geology.

## Canonical Factorio surface cues used for the comparison

- **Nauvis:** Earth-like with deserts, forests, lakes and liquid water.
- **Vulcanus:** hottest canonical planet; volcanic mountains, lava, ashlands and sulfuric-acid geysers; canonical gameplay states it has no natural surface water.
- **Fulgora:** lifeless, cold, bone-dry desert with windblown sand, rock plateaus, deep oilsands and intense lightning.
- **Gleba:** humid, rainy, swamp-like, biologically active surface.

These are gameplay/environmental cues, not complete planetary geological histories. [S33-S36]

---

# Part XIII. Recommended geology-to-gameplay architecture

## 1. Safest high-confidence deposit families

These relationships have enough geological coherence that they can define recognizable TI deposit archetypes without looking contrived.

| Geological family | Primary TI resources that can participate | Best gameplay interpretation | Confidence |
|---|---|---|---|
| **Pb-Zn-Ag carbonate/polymetallic system** | Galena, Sphalerite, Argentite/Ag2S, Limestone | Pb/Zn as distinct bodies; Ag as galena/sulfide byproduct depending subtype | **Very High** |
| **Magmatic Ni-Cu-Co-PGE system** | Pentlandite, Cobaltite only in selected hydrothermal variants, Sperrylite, Chromite in layered systems | Ni body with Co lattice/byproduct; Cu sulfide body; PGE trace/accessory; chromite as separate stratiform body where appropriate | **Very High** |
| **Layered-intrusion Cr-PGE system** | Chromite, Sperrylite/Pt | Chromite seam with discrete PGM/PGE enrichment or neighboring PGE reef | **Very High** |
| **Granite-related Sn-W system** | Cassiterite, Wolframite | reciprocal Sn/W accessory outputs and distinct greisen/vein reserve bodies | **Very High** |
| **Evolved LCT / rare-metal granite system** | Petalite, Cassiterite; Wolframite regionally | Li body with Sn-Ta-Cs-Be phases; possible adjacent Sn-W zones | **High** |
| **Heavy-mineral placer system** | Zircon, Ilmenite, Monazite, Silica sand | physically separate grains recovered by beneficiation; deposits can share reserve province/lens | **Very High** |
| **Marine phosphorite-U system** | Phosphorite, Uraninite as a separate resource family | U as apatite/phosphorite trace/byproduct; do not require uraninite grains | **High** |
| **Au-Ag quartz/epithermal system** | Gold-Bearing Quartz, Argentite/Ag2S | Au-Ag mutual precious-metal association with optional Pb-Zn-Cu sulfide bodies | **Very High** |
| **MVT carbonate host system** | Limestone, Galena, Sphalerite | carbonate host generates finite Pb-Zn underground bodies rather than metal traces in ordinary limestone | **Very High** |

## 2. Strong specialized byproduct profiles

These are scientifically sound but should remain special rather than becoming universal cross-links.

- **Bauxite -> Gallium:** one of the cleanest additional-element byproduct candidates because Ga substitutes for Al and bauxite is the principal global Ga source. [S20]
- **Sphalerite -> Cadmium:** exceptionally strong; Cd-for-Zn substitution is the classic source relationship. [S22]
- **Sphalerite -> Germanium/Gallium/Indium:** excellent for rare deposit variants, but grades are strongly district-dependent.
- **Zircon -> Hafnium:** exceptionally strong lattice-level relationship. Hf follows Zr so closely that it is the clearest possible zircon-specific byproduct if TI ever needs Hf. [S07]
- **Ilmenite/Fe-Ti oxide -> Vanadium:** strong deposit-system relationship, but much V may reside in titanomagnetite rather than ilmenite itself.
- **Phosphorite -> Uranium:** strong and historically important byproduct concept. [S13]
- **Monazite -> Thorium:** very strong structural/geochemical association, but creates obvious radioactive-processing consequences. [S06, S30]
- **Sperrylite/PGE ore -> Pd/Rh/Ir:** strong PGE-family association; specific ratios are deposit dependent. [S24, S25]
- **Cassiterite -> Ta/Nb/W:** sound substitution/accessory-mineral relationship in evolved systems. [S23]
- **Cobaltite -> Ni/Bi/Au/Cu:** valid but much more subtype-specific than the Ni-Co relationship in pentlandite ores.

## 3. Resources where TI should not force a reward trace

- **Ice Fields:** dissolved salts/dust/volatiles can vary, but a pure-water profile is geologically sensible.
- **Quartzite/high-purity silica:** valuable deposits are often valuable precisely because impurities are low. High purity should be a **quality advantage**, not a lost chance to add coproducts.
- **Carnallite:** the strongest variation is often in the proportions of carnallite, sylvite, halite and Mg/sulfate salts, which is better represented through chemistry and recovery ratios.
- **Coal:** metal-enriched coal exists, but most coal should not become a routine critical-metals mine.
- **Gold-bearing quartz:** refractory sulfide-hosted gold is an important processing distinction even when no extra saleable element is added.
- **Pyrolusite:** many useful variations are changes among Mn oxide/carbonate phases and redox textures rather than extra metals.

## 4. Recommended rules for the TI generator

1. **Generate a deposit system first, then pick a mineral profile.** A Galena patch should know whether it belongs to an MVT, VMS, epithermal, or polymetallic vein system before assigning coproducts.
2. **Use A/B/C/D occurrence mode as gameplay metadata.** It determines whether a material appears in direct mining output, beneficiation tailings/concentrate, or a separate underground reserve.
3. **Do not let every trace become mineable at the drill.** Lattice-hosted traces may require advanced refining; accessory phases may require beneficiation; D-type bodies should require separate reserve extraction.
4. **Apply mutually exclusive geological families where necessary.** A single deposit should not casually be MVT, porphyry, LCT pegmatite, and heavy-mineral placer simultaneously.
5. **Allow district-level linkage without ore-level mixing.** A Tectara granite district may contain cassiterite, wolframite, and petalite bodies while individual ore blocks remain compositionally distinct.
6. **Let abundance range by profile.** For example, Cd in sphalerite can be a trace byproduct in one deposit and negligible in another; PGE in chromitite may be economic in one layered intrusion and nearly absent in another.
7. **Reserve two trace slots for genuinely distinct recoverable materials.** Do not spend slots on stoichiometric elements already inherent to the ore, such as As in sperrylite, P in monazite, Fe in ilmenite, or K/Mg in carnallite.
8. **Use processing penalties as geological content.** Refractory gold, clay-rich bauxite, Fe-rich silica, oxidized/sulfidic ore textures, or sulfate-rich evaporites can create meaningful variants without new outputs.
9. **Tag confidence separately from abundance.** A relationship can be geologically certain but normally low-grade, such as Hf in zircon, or high-grade only in a rare subtype, such as Ge-rich sphalerite.
10. **Keep 'Pure/Default' a gameplay baseline, not a claim that natural ore is chemically pure.** Natural ores nearly always carry gangue and minor elements; the default profile simply means no intentionally represented coproduct.

## 5. Recommended implementation data fields

A future machine-readable deposit definition could preserve the research distinction with fields conceptually similar to:

```text
DepositProfile
  PrimaryOreFamily
  DepositModel
  PrimaryTargetMaterial
  TraceOutputs[]                 # max 2
    ElementOrMaterial
    OccurrenceMode               # A, B, or C
    RelativeAbundanceClass
    RecoveryStage                # mining / beneficiation / refining
    GeologicalConfidence
  AssociatedBodies[]
    OreFamily
    OccurrenceMode = D
    SpatialRelationship
    RelativeReserveClass
    GeologicalConfidence
  GangueAssemblage[]
  ProcessingModifiers[]
  PlanetaryAdaptationClass
  SourceRefs[]
```

This would prevent a design shortcut such as assigning `Silver = 2%` to every Galena deposit without knowing whether the silver is truly in galena, in microscopic Ag phases, or in a neighboring Ag-rich vein.

---

# Part XIV. Source bibliography

### Formula-standardization references

- **[F01]** Anthony, J.W., Bideaux, R.A., Bladh, K.W., and Nichols, M.C., eds. *Handbook of Mineralogy*. Mineralogical Society of America. Online mineral-species summaries provide standard formulas and defining mineral data. https://handbookofmineralogy.org/
- **[F02]** Mindat.org mineral database, used as an IMA-aligned cross-check for mineral formulas, series/group nomenclature, polymorphs, and variable-composition minerals. Individual formula checks included siderite `FeCO3`, ankerite `Ca(Fe,Mg)(CO3)2`, chrysocolla's variable formula, pollucite `(Cs,Na)2(Al2Si4O12)·2H2O`, and PGM species such as braggite `PdPt3S4`.
- **[F03]** International Mineralogical Association, Commission on New Minerals, Nomenclature and Classification (IMA-CNMNC), mineral nomenclature and approved-species framework. Used to avoid inventing fixed formulas for mineral groups, rocks, mineraloids, and variable solid-solution series.
- **[F04]** U.S. Geological Survey bauxite/alumina resources and lateritic-bauxite literature, used to cross-check the principal bauxite ore minerals: gibbsite `Al(OH)3`, boehmite `AlO(OH)`, and diaspore `AlO(OH)`.

### Deposit-model and geochemical references

The report intentionally favors government geological surveys, peer-reviewed mineralogical work, and recognized mineralogical references. Source tags throughout the report point here.

- **[S01]** John, D.A., Ayuso, R.A., Barton, M.D., Blakely, R.J., Bodnar, R.J., Dilles, J.H., Gray, F., Graybeal, F.T., Mars, J.C., McPhee, D.K., Seal, R.R., Taylor, R.D., and Vikre, P.G. (2010). *Porphyry Copper Deposit Model*. U.S. Geological Survey Scientific Investigations Report 2010-5070-B. DOI: **10.3133/sir20105070B**.
- **[S02]** Leach, D.L., Taylor, R.D., Fey, D.L., Diehl, S.F., and Saltus, R.W. (2010). *A Deposit Model for Mississippi Valley-Type Lead-Zinc Ores*. U.S. Geological Survey Scientific Investigations Report 2010-5070-A. DOI: **10.3133/sir20105070A**.
- **[S03]** Shanks, W.C.P. III, and Thurston, R. (eds.) (2012). *Volcanogenic Massive Sulfide Occurrence Model*. U.S. Geological Survey Scientific Investigations Report 2010-5070-C. DOI: **10.3133/sir20105070C**.
- **[S04]** Schulz, K.J., Woodruff, L.G., Nicholson, S.W., Seal, R.R. II, Piatak, N.M., Chandler, V.W., and Mars, J.L. (2014). *Occurrence Model for Magmatic Sulfide-Rich Nickel-Copper-(Platinum-Group Element) Deposits Related to Mafic and Ultramafic Dike-Sill Complexes*. U.S. Geological Survey Scientific Investigations Report 2010-5070-I. DOI: **10.3133/sir20105070I**.
- **[S05]** Schulte, R.F., Taylor, R.D., Piatak, N.M., and Seal, R.R. II (2012). *Stratiform Chromite Deposit Model*. U.S. Geological Survey Scientific Investigations Report 2010-5070-E. DOI: **10.3133/sir20105070E**.
- **[S06]** Van Gosen, B.S., Fey, D.L., Shah, A.K., Verplanck, P.L., and Hoefen, T.M. (2014). *Deposit Model for Heavy-Mineral Sands in Coastal Environments*. U.S. Geological Survey Open-File Report.
- **[S07]** U.S. Geological Survey National Minerals Information Center. *Zirconium and Hafnium Statistics and Information*; see also the zirconium-hafnium chapter of USGS Professional Paper 1802.
- **[S08]** Bradley, D.C., McCauley, A.D., and Stillings, L.L. (2017). *Mineral-Deposit Model for Lithium-Cesium-Tantalum Pegmatites*. U.S. Geological Survey Scientific Investigations Report 2010-5070-O. DOI: **10.3133/sir20105070O**.
- **[S09]** Kamilli, R.J., Kimball, B.E., Carlin, J.F. Jr., and others (2017). *Tin*, in *Critical Mineral Resources of the United States*. U.S. Geological Survey Professional Paper 1802-S.
- **[S10]** Slack, J.F., Causey, J.D., Eppinger, R.G., Gray, J.E., Johnson, C.A., Lund, K., and Schulz, K.J. (2013). *Descriptive and Geoenvironmental Model for Cobalt-Copper-Gold Deposits in Metasedimentary Rocks*. U.S. Geological Survey Scientific Investigations Report 2010-5070-G. DOI: **10.3133/sir20105070G**.
- **[S11]** U.S. Geological Survey. *Cobalt: Styles of Deposits and the Search for Primary Deposits*. USGS mineral-resource synthesis on cobalt deposit types and byproduct relationships.
- **[S12]** Gulbrandsen, R.A. (1966). *Chemical Composition of Phosphorites of the Phosphoria Formation*. Geochimica et Cosmochimica Acta, 30. DOI: **10.1016/0016-7037(66)90131-1**.
- **[S13]** Cathcart, J.B. (1975). *Uranium in Phosphate Rock*. U.S. Geological Survey Open-File Report 75-321. DOI: **10.3133/ofr75321**.
- **[S14]** U.S. Geological Survey uranium/mineralogical references, including USGS mineral glossary treatment of uraninite as essentially UO2 with oxidation and common Th, Pb and REE-related impurities; see also Berman (1957), *The Role of Lead and Excess Oxygen in Uraninite*. USGS Open-File Report. DOI: **10.3133/ofr5711**.
- **[S15]** Rytuba, J.J. *Descriptive Model of Hot-Spring Hg*, in U.S. Geological Survey Bulletin 1693 mineral-deposit models.
- **[S16]** John, D.A., Vikre, P.G., du Bray, E.A., Blakely, R.J., Fey, D.L., Rockwell, B.W., Mauk, J.L., Anderson, E.D., and Graybeal, F.T. (2018). *Descriptive Models for Epithermal Gold-Silver Deposits*. U.S. Geological Survey Scientific Investigations Report 2010-5070-Q. DOI: **10.3133/sir20105070Q**.
- **[S17]** Berger, B.R. *Descriptive Model of Low-Sulfide Au-Quartz Veins*, in U.S. Geological Survey Bulletin 1693 mineral-deposit models.
- **[S18]** Palmer, C.A., and Lyons, P.C. (1996). *Selected Elements in Major Minerals from Bituminous Coal as Determined by INAA: Implications for Removing Environmentally Sensitive Elements from Coal*. International Journal of Coal Geology. DOI: **10.1016/S0166-5162(96)00035-3**.
- **[S19]** U.S. Geological Survey National Minerals Information Center. *Bauxite and Alumina Statistics and Information*, supplemented by USGS lateritic-bauxite deposit-model work covering gibbsite, boehmite, diaspore and common Fe-Ti-silicate impurities.
- **[S20]** U.S. Geological Survey. *Gallium*, and USGS compilation of gallium resource data for bauxite deposits. These sources document Ga substitution for Al/Zn and bauxite as the principal Ga resource.
- **[S21]** George, L.L., Cook, N.J., Ciobanu, C.L., and Wade, B.P. (2015). *Trace and Minor Elements in Galena: A Reconnaissance LA-ICP-MS Study*. American Mineralogist, 100. DOI: **10.2138/am-2015-4862**.
- **[S22]** U.S. Geological Survey National Minerals Information Center. *Cadmium Statistics and Information*, plus USGS trace-element/speciation studies of sphalerite documenting Cd and Ge hosting and related Ga/In behavior.
- **[S23]** Möller, P., Dulski, P., Szacki, W., Malow, G., and Riedel, E. (1988). Study of coupled substitution of Ta, Nb, W, Fe and Mn in cassiterite. Geochimica et Cosmochimica Acta. DOI: **10.1016/0016-7037(88)90220-7**; supplemented by modern cassiterite trace-element studies.
- **[S24]** *Sperrylite* mineralogical reference, Mindat; supplemented by peer-reviewed European Journal of Mineralogy work documenting Pd-Rh-Ir substitution for Pt and S-Sb substitution for As in natural sperrylite.
- **[S25]** Zientek, M.L. (2012). *Magmatic Ore Deposits in Layered Intrusions: Descriptive Model for Reef-Type PGE and Contact-Type Cu-Ni-PGE Deposits*. U.S. Geological Survey Open-File Report 2012-1010. DOI: **10.3133/ofr20121010**.
- **[S26]** U.S. Geological Survey National Minerals Information Center. *Silica Statistics and Information*, plus USGS microanalytical characterization studies of trace elements in natural quartz.
- **[S27]** U.S. Geological Survey (2023). *Geology and Undiscovered Resource Assessment of the Potash-Bearing, Middle Devonian (Givetian), Prairie Evaporite, Elk Point Basin, Canada and United States*. USGS Scientific Investigations Report series; used for carnallite/sylvite/halite and associated evaporite mineralogy.
- **[S28]** Petersen, N.V. (1960). *Deposits of Manganese Oxides*. Economic Geology, 55. DOI: **10.2113/gsecongeo.55.1.1**; used with USGS-hosted deposit-model material.
- **[S29]** Mindat mineralogical entries for *Acanthite* and *Argentite*. Used specifically for the Ag2S polymorph caveat: acanthite is the stable low-temperature form, whereas argentite is the high-temperature cubic form above roughly 177 degrees C.
- **[S30]** Verplanck, P.L., Mariano, A.N., and Mariano, A. (2016). *Rare Earth Element Ore Geology of Carbonatites*, plus the USGS carbonatite/peralkaline REE deposit model. Used for LREE assemblages, monazite/apatite/bastnaesite and carbonate-host relationships.
- **[S31]** Peer-reviewed electron-microprobe/trace-element work on ilmenite, including high-precision determination of Mg, Mn, V, Nb, Sc, Cr, Co, Ni, Zr, Hf and Ta in ilmenite. Journal of Analytical Atomic Spectrometry (2022). DOI: **10.1039/D2JA00238H**.
- **[S32]** Recognized monazite-group mineralogical references and USGS REE studies documenting the mixed LREE composition of monazite, including systematic variation in La, Ce, Pr, Nd, Sm, Gd, Y and Th.
- **[S33]** Wube Software, Factorio Friday Facts #386, *Vulcanus*, and Factorio Friday Facts #387, *Swimming in lava*. Used only for canonical environmental context, not for mineralogical claims.
- **[S34]** Wube Software, Factorio Friday Facts #398, *Fulgora*, and Factorio: Space Age content descriptions. Used only for canonical environmental context.
- **[S35]** Wube Software, Factorio Friday Facts #413, *Gleba*, and later Space Age planet summaries. Used only for canonical environmental context.
- **[S36]** Factorio Nauvis world descriptions from Wube/Factorio Wiki: Earth-like world with deserts, water and forests. Used only for canonical environmental context.

---

# Formula-completeness audit

The revision applies the following checks:

- Every primary single-mineral resource has an explicit **Formula** line.
- Every primary rock/resource family that lacks a unique stoichiometric formula explicitly says so and lists its dominant constituent mineral formulae.
- Every row in every **Commonly associated minerals** table includes a **Chemical formula(s)** column.
- Rows that represent groups, series, mineraloids, or rock/alteration aggregates are labeled as variable/no-single-formula rather than being assigned a fictitious composition.
- Association relationship codes **A/B/C/D**, frequency rankings, trace-output recommendations, deposit environments, cross-links, gameplay profiles, and planetary-fit analysis are retained from the geological research.

---

# Part XV. Final research conclusions for TI design

## Highest-priority conclusions

1. **Galena-Sphalerite-Silver is one of the strongest ore-network anchors in the entire roster.** MVT and other polymetallic systems justify Pb-Zn bodies, while Ag can occur as galena-hosted trace chemistry or separate Ag-bearing phases depending on deposit. Do not make Ag a guaranteed galena output. [S02, S21]
2. **Pentlandite is the strongest natural home for a recurring Co relationship.** Co can substitute into Ni-Fe sulfides and magmatic Ni-Cu deposits routinely contain Cu plus PGE and locally Au. This is stronger and more universal than forcing Co into cobaltite-associated systems in reverse. [S04]
3. **Chromite-PGE and Sperrylite-PGE should be treated as a layered-intrusion family.** The most powerful implementation is not merely `chromite -> Pt trace`, but a deposit system capable of chromitite seams, neighboring PGE reefs, and Ni-Cu sulfide zones. [S05, S25]
4. **Cassiterite-Wolframite and Petalite-Cassiterite are strong but occur at different spatial scales.** Sn-W can be directly intergrown in greisens/veins; Li-Sn-Ta-Cs-Be is more characteristic of LCT pegmatites. A single evolved granite province can connect both without putting every element in every ore block. [S08, S09]
5. **Zircon-Ilmenite-Monazite is a textbook beneficiation family.** These are separate heavy mineral grains concentrated by sedimentary sorting, making them ideal for TI beneficiation coproducts or neighboring placer reserve pools rather than lattice traces. [S06]
6. **Bauxite-Ga, Sphalerite-Cd, Zircon-Hf, Phosphorite-U, and Monazite-Th are the cleanest candidate relationships involving elements not necessarily represented by their own TI primary ores.** They are geologically meaningful enough to justify later gameplay consideration without implying those new elements must be added. [S07, S13, S20, S22, S30]
7. **Cuprite should remain a deliberate gameplay abstraction.** It is an excellent mineral for an oxidized copper profile, but the geologically richer system is an oxidized cap over a primary sulfide copper deposit. This creates an opportunity for depth-dependent deposit behavior rather than a need to rename the ore.
8. **'Argentite' should be treated as a gameplay Ag2S ore-family label.** Natural low-temperature Ag2S is acanthite; argentite is the high-temperature cubic polymorph and typically transforms on cooling. [S29]
9. **Gold-Bearing Quartz is a sound gameplay abstraction if it represents a lode system rather than a mineral species.** Its best variants are Au-Ag, polymetallic sulfide, telluride, W-Bi, and refractory sulfide profiles. [S16, S17]
10. **Not every specialization should pay out another element.** Ore texture, purity, gangue, oxidation state, mineral liberation, and refractory behavior are legitimate geological profile dimensions and will make the system feel more credible.

## Recommended first-pass profile count philosophy

For implementation, a scientifically disciplined starting point would be:

- **2-4 specialized profiles** for most major metal ores.
- **4-5** only for ore families with genuinely diverse deposit models, such as cassiterite, sphalerite, gold-bearing quartz, zircon/heavy sands, and pentlandite.
- **1-3 final selected profiles** are probably enough for geologically narrow resources such as carnallite, quartzite/silica, and ice, even though this research report enumerates additional candidate variants so they can be compared before design lock-in.
- Preserve unused profile capacity rather than invent weak associations merely to reach a symmetrical number.

## Final rule of thumb

> **If two materials share a deposit model, decide first whether the relationship is A, B, C, or D. Only then decide whether TI should expose it as a trace output, beneficiation coproduct, processing modifier, or separate underground reserve.**

That ordering is the main safeguard against turning real geological association into arbitrary gameplay mixing.
