import re
import math
import sys

class location(object):
    def __init__(self):
        self.name = ''
        self.x = 0
        self.y = 0
        self.neighbors = []
  
class world(object):
    def __init__(self):
        self.name = ''
        self.locations = {}
        self.names = set()
        self.blocked_route = [set(('Austin-TX', 'Miami-FL')), set(('Washington_DC', 'Baltimore-MD')), set(('Ann_Arbor-MI', 'St_Louis-MO')),
                             set(('Vancouver-BC', 'Raleigh-NC')), set(('Atlanta-GA', 'Miami-Fl'))]
        
    def read_locations(self, fname):
        f = open(fname, 'r')
        print ("Opening location file",fname)
        line = f.readline()
        while line:
            cmdlist = re.findall(r'[\S]+', line)
            if len(cmdlist) > 0:
                newLocation = location();
                newLocation.name = cmdlist[0]
                self.names.add(cmdlist[0])
                newLocation.x = float(cmdlist[1])
                newLocation.y = float(cmdlist[2])
                self.locations[cmdlist[0]] = newLocation
                #print "Read location %s" % newLocation.name
            line = f.readline()
        f.close()
        print ("Finished reading location file")

    def input_trip(self, clist, blocked = False):
        ind = 0
        distT = 0
        floc = ''
        oloc = location()
        traveled = set()
        
        
        for cloc in clist:
            if ind > 0:
                dist = get_distance(cloc, oloc)
                distT = distT + dist
            else:
                floc = cloc
            current_route = set((cloc.name, oloc.name))
            if blocked:
                if current_route in self.blocked_route:
                    return 'Entered a blocked route!'
            oloc = cloc
            if cloc.name in traveled:
                if cloc.name != floc.name:
                    print(cloc.name, floc.name)
                    return 'Traveled to a city already visited!'
                else:
                    break
            else:
                traveled.add(cloc.name)
            print("{0:<36}".format('Current city is: ' +oloc.name+',')+"and current distance is %.1f miles" %(distT))
            ind = ind + 1
        print ("{0:<36}".format("Total distance: ") + str(distT))
        if (traveled != self.names):
            print("Did not travel to all cities!")
        else:
            print("Visited all cities!")
        if (floc.name != cloc.name):
            print("Obama didn't return to his starting position!")
        else:
            print("Obama returned to his starting position!")
            
def get_distance_xy(x1, y1, x2, y2):
    return 500*math.sqrt((x2-x1)*(x2-x1)+(y2-y1)*(y2-y1))/150

def get_distance(loc1, loc2):
    return get_distance_xy(loc1.x, loc1.y, loc2.x, loc2.y)
