=begin
# Problem
Write a method that takes a non-empty string argument, and returns the middle character or characters
of the argument.
If the argument has an odd length, you should return exactly one character. If the argument has an
even length, you should return exactly two characters

# Example
center_of('I love ruby') == 'e'
center_of("Launch School") == ' '

# Datastructure
Input: String
Output: String

# Sidenotes
-Do I need to convert the string to any other data structure?
-Do spaces count? yes
-if .odd? return size / 2 using element reference?

-if .even? return the middle two characters
divide by 2 and save the number
add another variable and assign it to size / 2 - 1

# Algorithm


=end

def center_of(str)
  div_two = str.size / 2
  if_odd = div_two - 1
  if str.size.odd?
    str[div_two]
  else
    str[if_odd,2]
  end
end

p center_of('I love ruby') == 'e'
p center_of('Launch School') == ' '
p center_of('Launch') == 'un'
p center_of('Launchschool') == 'hs'
p center_of('x') == 'x'