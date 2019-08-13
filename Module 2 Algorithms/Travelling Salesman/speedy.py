from tools import *
#*************************************
# This is where you write your code
# input: all locations
# output: locations (sorted)
#*************************************
def speedyTrip(places): 
    
    visitedCities = [places[0]] #list holding all visited cities, starting at Portland
    unvisitedCities = [] #empty list that will hold all cities that we need to visit
    
    #for loop to go through all the index values in places, and adds those objects into unvisitedCities
    for i in range(1,52):
        unvisitedCities.append(places[i])
    
    #while loop runs until we have "visited" all the cities
    while len(visitedCities) < 52:
        
        #for loop will run through every city we visit
        for i in range(51):
            
            lastCity = visitedCities[i] #assigns the last in the list of visited cities
            listOfDist = [] #creates empty list to fill with distances of unvisitedCities to the lastCity
            
            #for loop runs through every unvisited city, and find the distance between it and the last visited city
            for newCity in unvisitedCities:
                listOfDist.append(get_distance(lastCity, newCity))
                
            minDist = min(listOfDist) #finds shortest distance
            visitCity = unvisitedCities[listOfDist.index(minDist)] #finds the corresponding city to the shortest distance
            visitedCities.append(visitCity) #adds new city to visitedCities
            unvisitedCities.remove(visitCity) #removes new city from unvisitedCities
            
    visitedCities.append(visitedCities[0]) #sends obama back to Portland

    return visitedCities  #returns sorted list