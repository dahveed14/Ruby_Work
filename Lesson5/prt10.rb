#Given the following data structure and without modifying the original array, use the map method to return
# a new array identical in structure to the original but where the value of each integer is incremented bu 1
#Don't modify the original array
#**BreakDown*****
#use the map method to return the new array indentical in structure
#however, each value will be modified and incremented by one. 
#Dont modify the original array

#**DataStructure**
#Inpute: An array with each element index being a hash. 
#Each hash, has a symbol and an integer as a key
#Output:Increase the Value of that integer by one
#Output: Return the new array, with the same structure, ie. an array with hash elements

#Examples
#How do we extract the integers? 
#We will iterate through the outer array with map,
#Access the inner array via a value and add + 1 in the inner iterations
#don't use a destructive method, the original unmodified array must be left alone.

#***Algorithm***
#Iterate using map on the outer array
#The inner array can't be map. So use #transform_values
#which will return to the outer array and then be referencing a new array new_arr

#

arr = [{a: 1}, {b: 2, c: 3}, {d: 4, e: 5, f: 6}]

new_arr = arr.map do |outer|
    outer.transform_values do |v|
        v + 1
    end
end
p new_arr 