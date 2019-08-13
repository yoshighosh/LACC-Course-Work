-----------------------------------------------------------------------------------------
--
-- main.lua
--
-----------------------------------------------------------------------------------------

-- Your code here

-----------------------------------------------------------------------------------------
--
-- main.lua
--
-----------------------------------------------------------------------------------------

-- Your code here

local widget = require("widget")

--maps
local myMap = native.newMapView( 250, 400, 500, 800)
local mapInitialized = 0
local distancePokemon = 0
local isCaptured = false
local currentPokemon = 0
local caughtPokemon = {}

local randomPokemonX = function(event)
	return (math.random(34063817, 34075800))/1000000
end

local randomPokemonY = function(event)
	return (math.random(-118449565, -118438921))/1000000
end

local pokemonDict = {{"Bulbasaur", "d001"}, {"Persian", "d053"}, {"Oddish", "d043"}, {"Ninetales", "d038"}, {"Vulpix", "d037"}, {"Charmander", "d004"}, {"Charmeleon", "d005"}, {"Squirtle", "d007"}, {"Wartotle", "d008"}, {"Butterfree", "d012"}, {"Rattata", "d019"}, {"Ekans", "d023"}, {"Pikachu", "d025"}, {"Nidoran", "d029"}, {"Charizard", "d006"}, {"Jigglypuff", "d039"}, {"Growlithe", "d058"}, {"Ponyta", "d077"}, {"Dewgong", "d087"}, {"Horsea", "d116"}, {"Gyarados", "d130"}, {"Eevee", "d133"}, {"Jolteon", "d135"}, {"Flareon", "d136"}, {"Snorlax", "d143"}, {"Articuno", "d144"}, {"Dratini", "d147"}, {"Mewtwo", "d150"}, {"Bellsprout", "d069"}}

--pokemon coordinates

local pokemonCoordinates = function(event)
	for i=1, 29 do
		table.insert(pokemonDict[i], randomPokemonX())
		table.insert(pokemonDict[i], randomPokemonY())
	end
end

pokemonCoordinates()

local mapmarker = function(event)
	if mapInitialized == 0 then
		mapInitialized = 1
	end
	for i=1, 29 do
		local opt = 
		{
			title = pokemonDict[i][1],
			imageFile = "images/"..pokemonDict[i][2]..".png",
		}
		ID = myMap:addMarker(pokemonDict[i][3], pokemonDict[i][4], opt)
		table.insert(pokemonDict[i], ID)
	end	
end

local attempts = 0

local distanceBetween = function(lat1, lat2, long1, long2)
	local dX = lat2 - lat1 
	local dY = long2 - long1
	local distance = (((dX*111139)^2)+((dY*111139)^2))^(1/2)
	return distance
end
 
	



local backgroundRect = display.newRect(display.contentCenterX, 900, 500, 200)
 backgroundRect:setFillColor(0.9411764706, 0.7607843137, 0.5058823529)
local locationText = display.newText( "Location: ", display.contentCenterX, 850, native.systemFont, 45)
locationText.anchorY = 0
locationText.x = display.contentCenterX
locationText:setFillColor(0,0,0)

local function ShakeDetector( event )
    if event.isShake then
    	if distancePokemon < 4000 then
        	locationText.text = "CAPTURED!!!"
        	locationText.text = pokemonDict[currentPokemon][5]
        	myMap:removeMarker(pokemonDict[currentPokemon][5])
        	locationText.text = table.concat(pokemonDict[currentPokemon], ",")
        	table.insert(caughtPokemon, pokemonDict[currentPokemon])
        	table.remove(pokemonDict, currentPokemon)
        end
    end
    return true
end

local function locationHandler(event)
 	if mapInitialized == 1 then
	    local currentLocation = myMap:getUserLocation()
	 
	    if ( currentLocation.errorCode or ( currentLocation.latitude == 0 and currentLocation.longitude == 0 ) ) then
	        locationText.text = currentLocation.errorMessage
	 
	        attempts = attempts + 1
	 
	        if ( attempts > 100 ) then
	            native.showAlert( "No GPS Signal", "Can't sync with GPS.", { "Okay" } )
	        else
	            timer.performWithDelay( 1000, locationHandler )
	        end
	    else
	    	for i=1,29 do
				table.insert(pokemonDict[i], 6, distanceBetween(currentLocation.latitude, pokemonDict[i][3], currentLocation.longitude, pokemonDict[i][4]))
	    	end
	    	for i=2,29 do
	    		if pokemonDict[i][6] < pokemonDict[i-1][6] then
	    			currentPokemon = i
	    		end
	    	end
	    	if isCaptured == false then
	    		distancePokemon = pokemonDict[currentPokemon][6]
	        	locationText.text = "Current distance from \n" .. pokemonDict[currentPokemon][1] .. " : \n" .. string.format("%.4f", distancePokemon) .. "meters"
	        	myMap:setCenter( currentLocation.latitude, currentLocation.longitude )
	    	end	
	    end
	end
end
 

system.setAccelerometerInterval(60)

local runProgram = function(event)
		Runtime:addEventListener("location", locationHandler)
		Runtime:addEventListener( "accelerometer", ShakeDetector)
end


if myMap then
	myMap.mapType = "normal"
	--need to delay for a while so that poke can appear after map is ready
	timer.performWithDelay(5000, mapmarker)
	i = 1
	while i<s do
		isCaptured = false
		runProgram()
		i = i+1
	end
end