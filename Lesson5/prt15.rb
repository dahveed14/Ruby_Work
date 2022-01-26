#Given this data structure write some code to return an array which contains only hashes where all the integers
#even

#Breakdown
#Return a new array
#Which only contains hasehs
#The hashes must only contain values that are even
#These values are multielement arrays and they must ALL be even

#datastructure:
#Input: An array, with hashes at each index, in which the hashes contain symbols as keys, and arrays as values
#within the values are integers, odd and even.
#Output:An array, with hashes, so same structure, but only where they are even

#**algorithm
#Iterate throough the outer array
#in the inner iteration, only return true if the values in the KV pair are all positive
##What happens if you pass a falsey to map?

arr = [{a: [1, 2, 3]}, {b: [2, 4, 6], c: [3, 6], d: [4]}, {e: [8], f: [6, 10]}]

new_arr = arr.select do |hsh|
    hsh.all? {|k,v| v.all? {|num| num.even?}} #num.even is returning true for arrays  that are all even
end                                         #All? is returning true for all hashes that contain true arrays

p new_arr
