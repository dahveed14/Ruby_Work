=begin 
Write a method that returns a list of all substrings of a string that start at the beginning of the original string.
The return value should be arranged in order from shortest to longest substring

# Example:
'abc' == ['a', 'b', 'c']
'a' == ['a']
'xyzzy' == ['x', 'xy', 'xyz', 'xyzz', 'xyzzy']

# Datastructure
Input: String
Intermed:split the array and iterate through it
Output: Array

# Sidenotes / Thoughts
-Split the array by element
-How would i shovel elements that depend on an increasing number? like a range?
-so shovel zero through some number that slowly increases

-New way
-create a new array
-take the size of the array
-call the times method on a range of numbers starting with 0 and going up to the size of the string
-within the block of the times method
- i want to shovel elements of the string 0 through the current the current element into a new array
=end 

def leading_substrings(str)
sub_array = []
str.size.times { |num| sub_array << str[0..num] } 
sub_array
end
# line  30 uses element reference with a range, and the beginning is the range, and the end is the current iteration
p leading_substrings('abc') == ['a', 'ab', 'abc']
p leading_substrings('a') == ['a']
p leading_substrings('xyzzy') == ['x', 'xy', 'xyz', 'xyzz', 'xyzzy']

