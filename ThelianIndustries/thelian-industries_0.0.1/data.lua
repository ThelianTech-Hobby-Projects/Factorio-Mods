if not timods then
    timods = {}
end
if not timods.main then
    timods.main = {}
end
--Item
    --Basic Items/Parts/Components/Metalurgy
    
    --Electrical Systems
require("prototypes.item.power.ti-pole-item")
require("prototypes.item.power.ti-boiler-item")
require("prototypes.item.power.ti-steam-gen-item")
require("prototypes.item.power.ti-heat-exchanger-item")

--Entity
    --Electrical Systems
require("prototypes.entity.power.ti-boiler-entity")
require("prototypes.entity.power.ti-pole-entity")
require("prototypes.entity.power.ti-steam-gen-entity")
require("prototypes.entity.power.ti-heat-exchanger-entity")
