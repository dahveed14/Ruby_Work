=begin 
# Problem
Write a method that takes two arguments: the first is the starting number, and the second is the ending number.
Print out all numbers between the two numbers, except if a number is divisible by 3, print "Fizz", if a number is divisible by 5,
print "buzz", and finally, if a number is divisible by 3 and 5, print "FizzBuzz".

# Examples
fizzbuzz(1, 15) -> 1, 2, Fizz, 4, Buzz, Fizz, 7, 8, Fizz, Buzz, 11.. etc
# Datastructure
Input is an integer
Output is sttings and integers?
Intermed = possible array

# Thoughts/Sidenotes
Create a range with the given integers
iterate through them and evaluate the elements
Return a new collection based on the given conditions

# Algorithm
Crate an array using the splat on a range of the two given integers
Call map on this array
Write out the conditions to return given the rules in the problem

=end

def fizzbuzz(num1, num2)
  new_arr = (num1..num2).map do |num|
    if num % 3 == 0 && num % 5 == 0
      "Fizbuzz"
    elsif num % 3 == 0
      "Fizz"
    elsif num % 5 == 0 
      "Buzz"
    else
      num 
    end
  end
  new_arr.join(', ')
end

# def fizzbuzz(starting_number, ending_number)
#   result = []
#   starting_number.upto(ending_number) do |number|
#     result << fizzbuzz_value(number)
#   end
#   puts result.join(', ')
# end

# def fizzbuzz_value(number)
#   case
#   when number % 3 == 0 && number % 5 == 0
#     'FizzBuzz'
#   when number % 5 == 0
#     'Buzz'
#   when number % 3 == 0
#     'Fizz'
#   else
#     number
#   end
# end
puts fizzbuzz(1, 20)