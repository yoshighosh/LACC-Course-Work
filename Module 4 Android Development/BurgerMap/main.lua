-----------------------------------------------------------------------------------------
--
-- main.lua
--
-----------------------------------------------------------------------------------------

-- Your code here

local widget = require("widget")

--maps
local myMap = native.newMapView( 250, 500, 500, 1000)

local mapmarker = function(event)
	local opt1 = 
	{
		title = "Corner Bakery",
		subtitle = "Home to hyper students",
	}
	myMap:addMarker(34.062469, -118.445683, opt1)
end


if myMap then
	myMap.mapType = "normal"

	--need to delay for a while so that poke can appear after map is ready
	timer.performWithDelay(5000, mapmarker)
end


