=begin 
# Problem
Write a method that takes a string and returns a new string in which every characters is doubled

# Example
repeater('Hello') == "HHeelllloo"
repeater('Good Job!') == "GGoooodd  jjoobb!!"

#Sidenotes
-The method doubles the spaces and the special characters
-If the string is empty, it just returns the empty string without having anything doubled
-If i use a loop do, then i might be able to maintain the string
# Datastructure
Input: A string
Can I put out a new string while maintaining the current datastructure?
Output: A new string
New method that i learned about: String #each_char iterates through a strings characters


=end 

def repeater(str)
  return str if str.empty?
  new_str = ''
  counter = 0
  loop do 
    new_str += str[counter]*2
    counter += 1
    break if counter == str.size
  end
  new_str
end

p repeater('Hello')
p repeater("Good job!")
p repeater('')