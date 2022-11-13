

local green = {}
local out = {}

local blacklist = {
	["iron-plate"] = 0,
	["iron-gear-wheel"] = 0
}






-- if we are crafting a red belt, as long as we have yellow belts, continue crafting

-- 

-- for key, value in pairs(green) do
-- 	if items[key] then
-- 		if items[key] == 0 then
-- 			out[key] = 100
-- 		else
-- 			out[key] = nil
-- 		end
-- 	end
-- end


-- for i = 1, #green do
-- 	if green[i] < items.p1[i] or nil then
-- 		p1 = true
-- 		out[green][i] = 1
-- 	end
-- end


local p1 = false
local p2 = false
local p3 = false
local p4 = false

local items = {
	p1 = {["transport-belt"] = 100},
	p2 = {["fast-transport-belt"] = 400,},
	p3 = {["express-transport-belt"] = 400}
}

for key, value in pairs(green) do
	if green[key] < items.p1[key] then
		out[key] = 1
	else
		out[key] = nil
	end
end

-- if x is below 5. Set something to true. if it's 100 or > then turn it off.