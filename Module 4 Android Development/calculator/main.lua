-----------------------------------------------------------------------------------------
--
-- main.lua
--
-----------------------------------------------------------------------------------------

-- Your code here


local widget = require("widget")

display.setDefault("background", .60784314, .85098039, .87843137)

local input1 = native.newTextField(370,80,230,40)
local input2 = native.newTextField(370,135,230,40)

local flatRect = display.newRect(250, 240, 480, 5)
flatRect:setFillColor(1, 1, 1)

local textAnswer = display.newText("???", 450, 40, native.systemFont, 32)
textAnswer.x = 250
textAnswer.y = 270

local addHandler = function(event)
	textAnswer.text = input1.text + input2.text
end

local minusHandler = function(event)
	textAnswer.text = input1.text - input2.text
end

local timesHandler = function(event)
	textAnswer.text = input1.text * input2.text
end

local divideHandler = function(event)
	textAnswer.text = input1.text / input2.text
end

local button1 = widget.newButton
{
	label = "+",
	shape = "roundedRect",
	fillColor = {
		default = {0.5, 0.5, 0.5},
		over = {0.6, 0.6, 0.6},
	},
	labelColor = {
		default = {1,1,1},
	},
	fontSize = 22,
	font = native.SystemFont,
	onRelease = addHandler,
	width = 45,
}
button1.x = 30
button1.y = 200



local button2 = widget.newButton
{
	label = "-",
	shape = "roundedRect",
	fillColor = {
		default = {0.5, 0.5, 0.5},
		over = {0.6, 0.6, 0.6},
	},
	labelColor = {
		default = {1,1,1},
	},
	fontSize = 22,
	font = native.SystemFont,
	onRelease = minusHandler,
	width = 45,
}
button2.x = 80
button2.y = 200



local button3 = widget.newButton
{
	label = "x",
	shape = "roundedRect",
	fillColor = {
		default = {0.5, 0.5, 0.5},
		over = {0.6, 0.6, 0.6},
	},
	labelColor = {
		default = {1,1,1},
	},
	fontSize = 22,
	font = native.SystemFont,
	onRelease = timesHandler,
	width = 45,
}
button3.x = 130
button3.y = 200



local button4 = widget.newButton
{
	label = "÷",
	shape = "roundedRect",
	fillColor = {
		default = {0.5, 0.5, 0.5},
		over = {0.6, 0.6, 0.6},
	},
	labelColor = {
		default = {1,1,1},
	},
	fontSize = 22,
	font = native.SystemFont,
	onRelease = divideHandler,
	width = 45,
}
button4.x = 180
button4.y = 200




