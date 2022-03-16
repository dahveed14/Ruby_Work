
=begin # Problem

Write a method that takes a positive 
integer as an argument and returns that number with its digits reversed. Examples:

# Example
reversed_number(12345) == 54321
reversed_number(12213) == 31221
reversed_number(456) == 654
reversed_number(12000) == 21 # No leading zeros in return value!
reversed_number(12003) == 30021
reversed_number(1) == 1

# Sidenotes
- Exclude zeros from the condition
-reverse the numbers
-could i use #pop?
- Do i need to turn this into an array?

#Data
-input: integer
outuput: integer
inter: an array, and strings

#Algorithm
-convert to string
-convert to array
-use map
-call pop on array
-join
-call to_i
=end
def reversed_number(int)
  new_arr = []
  int.to_s.split('').each do |num| 
    unless num == '0' 
      new_arr.unshift(num)
    end
  end
  new_arr.join.to_i
end

p reversed_number(12345)
p reversed_number(12000)