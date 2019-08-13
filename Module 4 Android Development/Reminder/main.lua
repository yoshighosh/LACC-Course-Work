-----------------------------------------------------------------------------------------
--
-- main.lua
--
-----------------------------------------------------------------------------------------

-- Your code here

local widget = require("widget")

display.setDefault("background", 0.3803921569, 0.1137254902, 0.172549)
input = native.newTextBox(160, 300, 300, 300)
input.isEditable = true
input.size = 18

local filePath = system.pathForFile("data.txt", system.DocumentsDirectory)

local loadFile = function(event)
	local file = io.open(filePath, "r")
	if file then 
		local content = file:read("*a")
		io.close(file)
		input.text = content
	end
end

local saveFile = function(event)
	local file = io.open(filePath, "w")
	if file then
		file:write(input.text)
		io.close(file)
	end
end



local button1 = widget.newButton
{
	label = "Load",
	shape = "roundedRect",
	fillColor = {
		default = {0.9411764706, 0.7607843137, 0.5058823529},
		over = {0.6, 0.6, 0.6},
	},
	labelColor = {
		default = {0.3803921569, 0.1137254902, 0.172549},
	},
	fontSize = 22,
	font = native.SystemFont,
	onRelease = loadFile,
	height = 35,
	width = 80,
}
button1.x = 70
button1.y = 120


local button2 = widget.newButton
{
	label = "Save",
	shape = "roundedRect",
	fillColor = {
		default = {0.9411764706, 0.7607843137, 0.5058823529},
		over = {0.6, 0.6, 0.6},
	},
	labelColor = {
		default = {0.3803921569, 0.1137254902, 0.172549},
	},
	fontSize = 22,
	font = native.SystemFont,
	onRelease = saveFile,
	height = 35,
	width = 80,
}
button2.x = 260
button2.y = 120





