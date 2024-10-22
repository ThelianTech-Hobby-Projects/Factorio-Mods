if not timods then
    timods = {}
end
if not timods.timod then
    timods.timod = {}
end
--Item
    --Basic Items/Parts/Components/Metalurgy
require("prototypes.item.intermediates.ti-ores")
require("prototypes.item.intermediates.ti-ingots")
    
    --Electrical Systems
require("prototypes.item.power.ti-pole-item")
require("prototypes.item.power.ti-boiler-item")
require("prototypes.item.power.ti-steam-gen-item")
require("prototypes.item.power.ti-heat-exchanger-item")
require("prototypes.item.power.ti-hydro-item")

--Fluid
require("prototypes.fluids")

--Entity
    --Electrical Systems
require("prototypes.entity.power.ti-boiler-entity")
require("prototypes.entity.power.ti-pole-entity")
require("prototypes.entity.power.ti-steam-gen-entity")
require("prototypes.entity.power.ti-heat-exchanger-entity")
require("prototypes.entity.power.ti-hydro-entity")
