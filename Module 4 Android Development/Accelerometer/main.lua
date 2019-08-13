-----------------------------------------------------------------------------------------
--
-- main.lua
--
-----------------------------------------------------------------------------------------

-- Your code here

local widget = require("widget")
local gravityX = display.newText("Gravity X: ???", display.contentCenterX, 200, native.systemFont, 32)
--local resultGravityX = display.newText("???", 250, 200, native.systemFont, 32)
local gravityY = display.newText("Gravity Y: ???", display.contentCenterX, 300, native.systemFont, 32)
--local resultGravityY = display.newText("???", 250, 300, native.systemFont, 32)
local gravityZ = display.newText("Gravity Z: ???", display.contentCenterX, 400, native.systemFont, 32)
--local resultGravityZ = display.newText("???", 250, 400, native.systemFont, 32)
local instantX = display.newText("Instant X: ???", display.contentCenterX, 550, native.systemFont, 32)
--local resultInstantX = display.newText("???", 250, 550, native.systemFont, 32)
local instantY = display.newText("Instant Y: ???", display.contentCenterX, 650, native.systemFont, 32)
--local resultInstantY = display.newText("???", 250, 650, native.systemFont, 32)
local instantZ = display.newText("Instant Z: ???", display.contentCenterX, 750, native.systemFont, 32)
--local resultInstantZ = display.newText("???", 250, 750, native.systemFont, 32)

local onAccelerate = function(event) 
	gravityX.text = "Gravity X: " .. event.xGravity
	gravityY.text = "Gravity Y: " .. event.yGravity
	gravityZ.text = "Gravity Z: " .. event.zGravity
	instantX.text = "Instant X: " .. event.xInstant
	instantY.text = "Instant Y: " .. event.yInstant
	instantZ.text = "Instant Z: " .. event.zInstant
end

system.setAccelerometerInterval(60)
Runtime:addEventListener("accelerometer", onAccelerate)







