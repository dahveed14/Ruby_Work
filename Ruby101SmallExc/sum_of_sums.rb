=begin 
# Problem
Write a method that takes an Array of numbers and then returns the sum of the sums of each leading subsequence for that Array.
You may assume that the Array always contains at least one number.

# Examples
[3, 5, 2] == (3) + (3 + 5) + (3 + 5 + 2) # -> 21
[1, 5, 7, 3] == (1) + (1 + 5) + (1 + 5 + 7) (1 + 5 + 7 + 3)

# Datastructure
Input: Array
Intermed: 
Output: Integer

# Thoughts/Scratchpad
This prblem is asking me to sum each subsequent sum of that array... hmmm
So its asking to me add the first element, the add the first two elements, then add the first 3 elements, then add the first
4 elements and when all iterations are done, add them together.
Okay, so maybe, create an Intermediate array to store the sums.
How do I only add the first two elements? Perhaps using inject? The second parameter thats used in inject saves the sum. 

Okay, back to the drawing board:
I need to add the first element, and then the first 2 elements, and then the first 3 elements... oooh well, you have the method
first available to you that uses that convention.
=end

def sum_of_sums(arr)
  new_arr= []
  counter = 1
  loop do 
   new_arr << arr.first(counter)
   counter += 1
   break if counter > arr.size
  end
  new_arr.flatten.inject(:+)
end

p sum_of_sums([3, 5, 2]) == (3) + (3 + 5) + (3 + 5 + 2) # -> (21)
p sum_of_sums([1, 5, 7, 3]) == (1) + (1 + 5) + (1 + 5 + 7) + (1 + 5 + 7 + 3) # -> (36)
p sum_of_sums([4]) == 4
p sum_of_sums([1, 2, 3, 4, 5]) == 35