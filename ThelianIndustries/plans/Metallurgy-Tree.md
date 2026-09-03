# Metallurgy Processing Chains

## Overview
This file details the full metallurgy system for Thelian Industries overhaul modpack. It includes **mining, ore processing, smelting, ingots, alloys, and metal-based components**. Chains are structured for easy expansion and stage-based game progression.

---

## 1. Mining & Ore Acquisition

### Surface Ore Deposits
- Surface Mixed Ore Patches (Depletable, 10k–100k total yield)  
- Surface Rocks – provide tiny amounts of ores, gravel, clay.  

### Underground Mining
- Requires **Explosives**  
- Enriched Ore Veins – high-yield, depletable, longer-lasting.  

### Planetary Resource Notes
| Planet Type | Extraction Method | Notes |
|-------------|-----------------|-------|
| Rocky/Terrestrial | Standard Mining | Varied deposit richness |
| Oceanic | Underwater Mining / Distillation | Ore patches + fluid resources |
| Volcanic | Lava Extraction | Infinite metal yields |
| Icy / Cold | Terrestrial/Oceanic/Gas | Focus on liquids & chemistry |
| Gas Giant | Gas Extraction | Chemistry & energy resources |

### Mining Machinery
- Surface Miners – Steam/Early Electric/Advanced  
- Underground Mines – Explosives / High-tech automated mines  
- Deep Sea Mining – Specialized dredges & offshore rigs  

---

## 2. Ore Processing

### Basic Ore Processing Machines
- Overall chains: 
    Surface Miner → 1x Ores
    Underground Mineshaft → 2.5x Ores
    Ore Crusher → Crushed Ore
    Wash plant → Ore Concentrates
    Ore/Crushed Ore/Ore Concentrates → Smelter chains/Foundry chains
    Smelter → Ingots → Crafting chains
    Foundry → Molten Metals → Ingots
    Foundry → MM → Metal Caster → Direct Casing Parts/Components
    Foundry → MM → Alloy Foundry → Molten Alloys → Foundry → Ingots
    Alloy Foundry → Molten Alloys → Metal Caster → Direct Casting Alloy Parts/Components 

- Ore Crusher → Ore Wash Plant 
- Blast Furnace / Arc Furnace / Foundry  
- Metal Caster / Electrolysis Bath  
- Gas Kiln / Electric Kiln  

### Processing Chains by Tier
#### Tier 1 – Early Game
- Mining Output → Smelting = 1x Finished Material  
- Ore → Crusher → Smelting = 2x Finished Material + Byproducts  
- Ore → Crusher → Wash Plant → Smelting = 3x Finished Material  

#### Tier 2 – Vulcanus Unlocks
- Ore → Foundry = 1.5x Product  
- Ore → Crusher → Foundry = 3x Product  
- Advanced processing chains introduce alloys and specialty metals  

---

## 3. Ores & Concentrates

### Nauvis
- Bituminous Ore → Coal  
- Hematite Ore → Iron  
- Cuprite Ore → Copper  
- Cassiterite Ore → Tin  
- Galena Ore → Lead  
- Placer Gold → Gold  
- Uraninite Ore → Uranium  

### Nauvis Orbit
- Carbonic Asteroids → Carbon  
- Ice Asteroids → Water  
- Ferric Asteroids → Iron  
- Cupric Asteroids → Copper  
- Silicic Asteroids → Silicates  

### Luna
- Ice Fields → Water  
- Regolith → Stone / Silicates  
- Cinnabar Ore → Mercury  

### Vulcanus
- Bauxite Ore → Aluminum  
- Pyrolusite Ore → Manganese  
- Cobaltite Ore → Cobalt  

### Fulgora
- Zircon Ore → Zirconium  
- Pentlandite Ore → Nickel  

### Gleba
- Sphalerite Ore → Zinc  
- Argentite Ore → Silver  
- Chromite Ore → Chromium  

### Pyrosauria
- Calcite Ore → Limestone / Calcium  
- Carnallite Ore → Magnesium / Potassium  
- Phosphorite Ore → Phosphorus  

### Tectara
- Wolframite Ore → Tungsten  
- Ilmenite Ore → Titanium  

### Voltaris
- Monazite Ore → Neodymium  
- Sperrylite Ore → Platinum  

### Crushed & Concentrated Ores
- `man-iron-ore` → Crushed Hematite  
- `iron-concentrate` → Iron Concentrate  
- (Same pattern applies for copper, tin, lead, aluminum, cobalt, zinc, titanium, silver, gold, tungsten, platinum, etc.)

---

## 4. Ingots

### Basic Ingots
- Iron → Pig-Iron Ingot (`iron-ingot`)  
- Copper → Copper Ingot (`copper-ingot`)  
- Tin → Tin Ingot (`tin-ingot`)  
- Lead → Lead Ingot (`lead-ingot`)  
- Aluminum → Aluminum Ingot (`aluminum-ingot`)  
- Zinc → Zinc Ingot (`zinc-ingot`)  
- Silver → Silver Ingot (`silver-ingot`)  
- Gold → Gold Ingot (`gold-ingot`)  
- Titanium → Titanium Ingot (`titanium-ingot`)  
- Tungsten → Tungsten Ingot (`tungsten-ingot`)  
- Platinum → Platinum Ingot (`platinum-ingot`)  

### Alloy Ingots
- Bronze → `bronze-ingot` (Copper + Tin)  
- Brass → `brass-ingot` (Copper + Zinc)  
- Electrum → `electrum-ingot` (Gold + Silver)  
- Constantan → `constantan-ingot` (Copper + Nickel)  
- Invar → `invar-ingot` (Iron + Nickel)  
- Chromoly Steel → `chromoly-steel-ingot` (Steel + Chromium + Manganese)  
- Stainless Steel → `stainless-steel-ingot` (Steel + Chromium + Nickel)  
- Stellite → `stellite-ingot` (Cobalt + Chromium + Tungsten)  
- Kovar → `kovar-ingot` (Iron + Nickel + Cobalt)  

---

## 5. Metal Parts & Components

### Steel
- Axle → `steel-axle`  
- Ball Bearing → `steel-ball-bearing`  
- Bolts → `steel-bolts`  
- Gear → `steel-gear`  
- Nuts → `steel-nuts`  
- Piston → `steel-piston`  
- Plate → `steel-plate`  
- Rivet → `steel-rivet`  
- Rod → `steel-rod`  
- Sheet → `steel-sheet`  
- Washers → `steel-washers`  

### Other Metals
- Aluminum → Rods, Plates, Gears, Heatsinks, Pistons, Pipes  
- Brass → Plates, Rods, Gears, Piping, Valves  
- Copper → Coils, Plates, Pipes, Rods, Sheets  
- Tin → Sheet, Foil, Cans  
- Titanium → Beam, Plate  
- Others follow similar patterns  

---

## 6. Construction Components
- Mechanical Parts (Copper → Brass → Aluminum → Steel → Cobalt Steel)  
- Hydraulic Parts (Copper → Brass → Stainless Steel)  
- Electronic Components (Wires, Boards, Microchips, CPUs, Power Supplies)  
- Structural Parts (Concrete, Brick, Wall Panels, Framing)  

---

## 7. Notes & Byproducts
- Slag → `slag`  
- Tailings → `rock-tailings`  
- Sand → `rock-sand`  
- Clay → `rock-clay`  
- Rock Salt → `rock-salt`  
- Crushed Slag → `rock-slag-gravel`  
- Manufactured Sand/Gravel → `rock-man-sand` / `rock-man-gravel`  

---

### Benefits of This Layout
- Clear **ore → ingot → alloy → parts** hierarchy  
- Easy to **expand with new ores or alloys**  
- Stage-based unlocks are **easy to integrate**  
- Modular, ready for **future mechanics**  
- Makes cross-referencing metals, parts, and planets easier