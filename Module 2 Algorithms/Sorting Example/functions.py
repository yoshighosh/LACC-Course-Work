#Functions for sorting exercise

def cmp(a, b):
    return (a > b) - (a < b) 

def mySort(numbers):
    numbers = bubbleSort(numbers)
    return numbers

def bubbleSort(List):
    for i in range(len(List)):
        for j in  range(1, len(List)-i):
            if List[j]<List[j-1]:
                temp=List[j-1]
                List[j-1]=List[j]
                List[j]=temp
    return List
#write your code here
#Sort an unordered list from the smallest to the largest using bubble sort algorithm
    