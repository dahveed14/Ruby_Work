=begin 
# Problem 
Write a method that takes an integer argument, and returns an Array of all integers, in sequence, between 1
and the argument
Assume that the argument will always be a valid integer that is greater than 0

# Example
sequence(5) == [1, 2, 3, 4, 5]
sequence(3) == [1, 2, 3]
sequence(1) == [1]

# Datastructure
I: Integer
O: Array
Intermediate: NA

# Sidenotes/Thoughts
- first method that comes to mind is the .upto() method
- The .times method, but that method starts at 0

# Algorithm
1. Create an empty array
2.use the .upto method to iterate from 1 up to the given number and pass in a block argument to the .upto method
3. In the block, we want to add the local variable to the array
4. Return the new array
=end

def sequence(int)
  integers = []
  1.upto(int) { |num| integers.append(num) }
  integers
end

def sequence(number)
  (1..number).to_a
end

p sequence(5) == [1, 2, 3, 4, 5]
p sequence(3) == [1, 2, 3]
p sequence(1) == [1]
