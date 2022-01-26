#Given the following data structure, return a new array containing the same sub-arrays as the original but ordered logically 
#by only taking into consideration the odd numbers they contain.
#**Breakdown**
#Return a new array
#Will contain the same sub-arrays, as the original, but ordered logically
#Only consider the odd numbers in this logic
#Example: [[1, 8, 3], [1, 5, 9], [6, 1, 7], [1, 6, 9]]
#4 subarrays, each with odd and even numbers, in particulary order
#sort the array, such that the odd numbers are sorted, but the even numbers don't change index

#***Algoritm***
#Return new array. Will need to do an outer iteration and inner iteration
#Use map on the outer, and sort (or sort_by) on the inner iteration
#Pass a block to sort that checks whether the value of the element is odd or even
#

arr = [[1, 6, 9], [6, 1, 7], [1, 8, 3], [1, 5, 9]]

new_arr = arr.sort_by do |sub_arr|
    sub_arr.select do |num|
      num.odd?
    end
  end
  # => [[1, 8, 3], [1, 5, 9], [6, 1, 7], [1, 6, 9]]
p new_arr 
