=begin 
# Problem
Write a method that takes a string argument, and returns true if all of the alphabetic characters inside
the string are uppercase, false otherwise.
Characters that are not alphabetic should be ignored.

# Example
uppsercase?('t') == false
uppercaser?('T') == true
uppercase?('Four Schore') == false

# Datastructure
-i: string
-o: boolean
inter: array

#Sidenotes/ Thoughts?
- needs to ignore non-alphabetic characters
- use conditionals
- if char in this, then true, otherwise false
-each_char iterates through strings
-If using a return statment in an each method, remember, the blocks retunr value isn't used
- Initialize a different variable to represent the boolean outside of the each_char block

# Second sidenotes
- 

# Algorithm
1.Call string#Split on the string
2.Call array#any on the splitted array
3.Pass a block as an argument to the .any method
4.The block needs to return a boolean value
5. Within the block, use a conditional



=end

def uppercase?(str)
  str.split('').all? do |char|
    if char =~ /[A-Z]/ || char =~ /[^A-Za-z]/
     true 
    else
     false
    end
  end
end

=begin
Easier solution
def uppercase?(string)
  string == string.upcase
end
=end

p uppercase?('t') == false
p uppercase?('T') == true
p uppercase?('Four Score') == false
p uppercase?('FOUR SCORE') == true
p uppercase?('4SCORE!') == true
p uppercase?('') == true

# Today I learned that if you include a return statmenent in a block thats being passed to a method
# that returns true or false, you may not get the return value you're expecting.