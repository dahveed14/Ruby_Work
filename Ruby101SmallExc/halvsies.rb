=begin 
Write a method that takes an Array as an argument, and returns two Arrays (as a pair of nested Arrays) that contain the first
half and the second half of the original Array, respectively. If the original array contains an odd number of elements, the middle
should be placed in the first half array.

1.Method takes one array, and returns one array with two nested arrays.
2.The first nested array will be the first half of the array, and the second nested array will be the second half

# Datastructure
- Input: One array
Output: One array with two nested arrays

# Questions for myslef
How do I return a nested array?
  1.Turn the first half of the array into a hash, and the second into another k,V pair in the hash
  2. Then turn the hash into an array, that will return two nested arrays if there are two key value pairs.
  3.How do I properly split up the array into two key/value pairs?
    
  1. I could also use the length of the array to attain the size
  2. Inititate two empty array variables
  3.
  3. Save the first half of the index to

  I could use first and last as well
  Initiate first half and second half
  First half will be length / 2 + 1 if odd etc
=end
require 'pry'
def halvsies(array)
  return [[],[]] if array.empty?
  length = array.length
  first_half = array.length / 2
  if array.length.even? then first_half -= 1 end 
  second_half = array.length / 2 + 1
  if array.length.even? then second_half -= 1 end 


  new_arr = []
  first_arr = array[0..first_half]
  second_arr =array[second_half..-1]
  new_arr << first_arr << second_arr 
end



#p halvsies([1, 2, 3, 4])== [[1, 2], [3, 4]]
p halvsies([1, 5, 2, 4, 3]) == [[1, 5, 2], [4, 3]]
#p halvsies([5]) == [[5], []]
#p halvsies([]) == [[], []]