=begin 
# Problem
Write a method that takes a first name, a space, and a last name passed as a single String argument,
and returns a string that contains the last name, a comma, a space, and the first name.

# Example
swap_name('Joe Roberts') == 'Roberts, Joe'

# Datastructure
i: string
o: string
interm: array

# Thoughts/Sidenotes
- I need to turn this into an array
- pop off array and concatenate the names and a comma

1. Takes a string
2. Call the method split on the string, with default delimeter
3. Call pop on the array
=end

def swap_name(name)
  name.split.reverse.join(', ')
end

p swap_name('Joe Roberts') == 'Roberts, Joe'