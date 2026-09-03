# Metallurgy Process & Chains

This document defines the real-world inspired processing routes for all metallic ores in **Thelian Industries**.  
All metals follow **Universal Yield Scaling** rules unless explicitly overridden.

---

## 1. Universal Yield Scaling

| Stage | Yield Multiplier |
|-------|----------------|
| Ore → Smelter | 1.0x |
| Crushed → Smelter | 1.5x |
| WashPlant → Smelter | 3.0x |
| Ore → Foundry | 1.5x |
| Crushed → Foundry | 3.0x |
| Concentrate → Foundry | 4.5x |
| Remelt Ingots → Molten | 0.95x |

**Remelting Loss:** 5% Universal Slag produced when remelting ingots or scrap.

---

## 2. Standard Byproducts

| Process Stage | Default Byproducts |
|---------------|------------------|
| Ore Crusher | Rock Tailings, Rock Gravel |
| Wash Plant | Rock Sand, Rock Clay |
| Smelter | Optional Slag (low %) |
| Foundry | Universal Slag |

_Byproduct ratios vary depending on geological composition._

---

## 3. Fuel & Energy Categories

**Early Game**
- Burner Smelters (Wood, Coal, Coke, Solid Fuel)
- Low efficiency

**Mid Game**
- Improved Smelters (Fuel or Electric variants)
- Moderate efficiency

**Advanced (Foundry Tier)**
- High energy requirement
- Calcite used as Flux
- Produces Molten Metal

---

## 4. Mining & Ore Acquisition

**Surface Ore Deposits**
- Mixed ore patches (Depletable, 10k–100k total yield)
- Rocks provide small amounts of ores, gravel, clay

**Underground Mining**
- Requires explosives / tech-gated
- High-yield enriched veins

**Planetary Notes**

| Planet Type | Extraction Method | Notes |
|-------------|-----------------|-------|
| Rocky / Terrestrial | Standard Mining | Varied richness |
| Oceanic | Underwater Mining / Distillation | Ores + fluids |
| Volcanic | Lava Extraction | Low yield, infinite metals |
| Icy / Cold | Terrestrial / Oceanic / Gas | Focus on fluids & chemistry |
| Gas Giant | Gas Extraction | Energy & chemistry resources |

**Mining Machinery**
- Surface Miners: Steam / Early Electric / Advanced
- Underground Mines: Explosives / Automated
- Specialized Mining: Offshore rigs / Deep-sea dredges

---

## 5. Metal Processing Template

This template applies to **all metals**. Copy-paste and modify per metal.

---

### [Metal Name]

**Basic Information**
- Ore Name:
- Primary Composition:
- Planet(s) Found On:
- Primary End Product:
- Secondary Products (if any):

---

## 6. Ores & Concentrates

**Nauvis**
- Bituminous Ore → Coal  
- Hematite Ore → Iron  
- Cuprite Ore → Copper  
- Cassiterite Ore → Tin  
- Galena Ore → Lead  
- Placer Gold → Gold  
- Uraninite Ore → Uranium  

**Other Planets**
- Follow same style as Nauvis
- Include crushed/concentrated variants using the pattern: `man-[metal]-ore` → `[metal]-concentrate`

---

## 7. Ingots & Alloys

**Basic Ingots**
- Iron → Pig-Iron
- Copper → Copper Ingot
- Tin → Tin Ingot
- Lead → Lead Ingot
- Aluminum → Aluminum Ingot
- Zinc → Zinc Ingot
- Silver → Silver Ingot
- Gold → Gold Ingot
- Titanium → Titanium Ingot
- Tungsten → Tungsten Ingot
- Platinum → Platinum Ingot

**Alloy Ingots**
- Bronze → Copper + Tin  
- Brass → Copper + Zinc  
- Electrum → Gold + Silver  
- Constantan → Copper + Nickel  
- Invar → Iron + Nickel  
- Chromoly Steel → Steel + Chromium + Manganese  
- Stainless Steel → Steel + Chromium + Nickel  
- Stellite → Cobalt + Chromium + Tungsten  
- Kovar → Iron + Nickel + Cobalt  

---

### 8. Metal Parts & Components

**Steel Components**
- Axle, Ball Bearing, Bolts, Gear, Nuts, Piston, Plate, Rivet, Rod, Sheet, Washers

**Other Metals**
- Aluminum, Brass, Copper, Tin, Titanium, etc.  
- Components: Rods, Plates, Gears, Pipes, Pistons, Heatsinks  

---

### 9. Construction Components
- Mechanical Parts: Copper → Brass → Aluminum → Steel → Cobalt Steel  
- Hydraulic Parts: Copper → Brass → Stainless Steel  

---

### 10. Notes & Byproducts
- Slag → `slag`  
- Tailings → `rock-tailings`  
- Sand → `rock-sand`  
- Clay → `rock-clay`  
- Rock Salt → `rock-salt`  
- Crushed Slag → `rock-slag-gravel`  
- Manufactured Sand/Gravel → `rock-man-sand` / `rock-man-gravel`  

---

### 11. Balance Notes
- Building material scaling (~3–5x)  
- Ore patch scaling & depletion  
- Underground mining interaction  
- Stage-based tech progression  
- Future-proofing for alloys, casting, and advanced metals  

---
 **Benefits of this Layout**
- Clear **ore → ingot → alloy → parts** hierarchy  
- Easy to expand with **new ores or alloys**  
- Stage-based unlocks are **easy to integrate**  
- Modular for **future mechanics**  
- Easy cross-referencing metals, parts, and planets
