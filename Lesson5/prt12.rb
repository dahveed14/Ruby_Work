#Practice 12 Small Problems Lesson 5
#Given the following data structure, and without using the  #to_h method, write some code that wilil return a hash where the key
#is the first item in each sub array snd the value is the second item
#**BreakDown**
#Don't use the to_h method
#Return a hash
#where the key is the first item in each sub array, and the value is the second item

#example: 

#arr = [[:a, 1]] =>  {:a =>1}

#**Data structure**
#Input: An array, with subarrays. Within those sub arrays, exists hashes
#Output: A one-dimensional hash,
#So will only do an outer outeration and in inner iteration, and assign that first element as a key, and the second element as a
#value, regardless if that second element is another hash or array.

#Create an empty array
#Iterate throught the outer elements of the array using map
#Iterate through an inner array using each
    #As we iterate through the inner array, assign the first element to the hash key, and the second element as the value
    #there are only two elements per subarray
#return the new hash

#*******Correction to Algo
#An inner and outer iteration were not needed. Instead. only an outer iteration using the method each_with_object({})
# I spent too much time thinking that i had to do two iterations, an inner and an outer, when i actually didn't. Ouch, lots of time
#This is why it's necessary to understand the problem crystal clear
arr = [[:a, 1], ['b', 'two'], ['sea', {c: 3}], [{a: 1, b: 2, c: 3, d: 4}, 'D']]
new_hsh = {} 

arr.each_with_object({})  do |val, hsh| #each with object passes an object to the block as a hash, hsh is then assigned to the obj
    hsh[val[0]]= val[1] #object hsh. val is then referencing the value of the current element, which is an array,
    new_hsh = hsh #And we can reference the inner elements of the array with index assignment, simply using 0 and 1
    #we basically endup assigngin the array to itself, but using the indecis.
end

p new_hsh == {:a=>1, "b"=>"two", "sea"=>{:c=>3}, {:a=>1, :b=>2, :c=>3, :d=>4}=>"D"}

