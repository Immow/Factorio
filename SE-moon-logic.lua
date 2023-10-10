local items = {
	p1 = {["transport-belt"] = 100},
	p2 = {["fast-transport-belt"] = 400,},
	p3 = {["express-transport-belt"] = 400}
}
-- for key, value in pairs(green) do
-- 	if green[key] < 5 then
-- 		p1_crafting = true
-- 		break
-- 	elseif green[key] >= items.p1[key] then
-- 	end
-- 	p1_crafting = false
-- end

for key, value in pairs (green) do
	if p1_crafting then
		out.p1_crafting[key] = 1
	else
		out.p1_crafting[key] = nil
	end
end

local function latch(key) -- checkt niet op alles
	if green[key] < 5 then
		p1_crafting = true
	else
		p1_crafting = false -- dit werkt niet
	end
end

local function markIfDone(t, key)
	if green[key] >= t[key] then

	end
end

local function tierLatch(t)
	for key, value in pairs(green) do
		latch(key)
		markIfDone(t, key)

	end
end



for key, value in pairs(green) do
	if green[key] < items.p1[key] then
		out[key] = 1
	else
		out[key] = nil
	end
end

-- if x is below 5. Set something to true. if it's 100 or > then turn it off.


for item, _ in pairs(red) do
	if red[item] > green[item] then
		out[item] = 1
	else
		out[item] = nil
	end
end

------------------------------
local groups = {
	false,
	false,
	false,
	false,
}
local function checkGroups(group)
	local finished = false
	if group - 1 > 0 then
		for i = 1, group do
			
		end
	end
end

local function checkIfAllDone()
	for i = 1, #groups do
		for item, value in pairs(red) do
			if red[item] - green[item] > 5 then -- we have to craft
				groups[i] = true
				return
			end
		end
		groups[i] = false
	end
end

local function craft(group)
	if craft then
		for item, value in pairs(red) do
			if red[item] > green[item] then
				out[item] = 1
			else
				out[item] = nil
			end
		end
	end
end

-- if not checkIfAllDone() then.. start crafting t2