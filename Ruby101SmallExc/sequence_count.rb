=begin 
# Problem
Create a method that takes two integers as arguments. The first argument is a count, and the second is the
first number of a sequence that your method will create. The method should return an Array that contains
the same number of elements as the count argument, while the values of each element will be multiples
of the starting number.

# Breakout
- The first argument is a count
- And the second is the first number of a sequence that your method will create
- Return an array
-Contains the same number of elements as the count argument,
- Values of each element will be multiples of the starting number

# Thoughts/ sidenotes
-  First number determines the number of elements in the array
- The second number is the first number in the sequence
- The values of the elements will be multiples of the second argument given
- So in the first example, 1..5 are all multiples of 1, and it goes up to 

# Algorithm
1. Takes 2 argument integers
2. Use the method 1.upto(int1) to set the number of iterations
3. Within the block thats being passed to the method .upto, use the value of the current paramater
and multiply it by the second argument that was given
4. After each iteration, save the value into a new array

# Examples
- sequence(5, 1) == [1, 2, 3, 4, 5,]
=end

def sequence(arg_one, arg_two)
  stored_arr = []
  1.upto(arg_one) do |nums|
    stored_arr.push(nums * arg_two)
  end
  stored_arr
end

p sequence(5, 1) == [1, 2, 3, 4, 5]
p sequence(4, -7) == [-7, -14, -21, -28]
p sequence(3, 0) == [0, 0, 0]
p sequence(0, 1000000) == []