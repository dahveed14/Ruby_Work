#Given this data structure, return a new array of the same structure but with the sub arrays being ordered
#alphabetically or numerically as appropiate) in descending order
arr = [['b', 'c', 'a'], [2, 1, 3], ['blue', 'black', 'green']]
#Return the same structure, need to order the inner arrays, not the outer
#And we need to return a new array
#Algorithmm
#Iterate through the outer arrays, and in the inner arrays use sort by to sort the inner array
#also, it wants it descending. Sorty by will return a new array

sorted_arr = arr.map do |outer|
    outer.sort do  |a, b|
        b <=> a 
    end
end

p sorted_arr