=begin 
Write a method that takes a number as an argument. If the argument is a positive number, return the negative
of that number. If the number is 0 or negative, return the original number.

# Example
negative(-3) = -3
negative(0) = 0
negative(5) == -5

# Datastructure
I: integer
O: integer
Int: I don't think we need an intermediate data structure

# Sidenotes/Thoughts
- If positive, then negative
- If negative, then negative
- If zero, then zero

# Algorithm
Case int
when int > 0
  then int * -1
when int < 0
  then int
else
int
end
=end

def negative(int)
int > 0 ? int * -1 : int
end

p negative(5) == -5
p negative(-3) == -3
p negative(0) == 0      # There's no such thing as -0 in ruby