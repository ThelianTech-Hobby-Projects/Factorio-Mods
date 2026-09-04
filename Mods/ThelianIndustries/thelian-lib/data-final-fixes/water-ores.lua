local tiles = {"deepwater","deepwater-green","water","water-green","water-mud","water-shallow","landfill"}

for _,tile in pairs(tiles) do
    local thistile = data.raw["tile"][tile]
    if thistile then
        local mask = data.raw["tile"][tile].collision_mask
        for i = #mask,1,-1 do
            if mask[i] == "resource-layer" then
                table.remove(mask,i)
            end
        end
    end
end