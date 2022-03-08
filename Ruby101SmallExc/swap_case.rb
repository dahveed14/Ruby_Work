=begin 
# Problem
Write a method that takes a string as an argument and returns a new string in which every uppercase letter is replaced by its
lowercase version, and every lowercase letter by its uppercase version.

# Example
'CamelCase' == cAMELcASE
'Tonight on XYZ-TV' == 'tONIGHT ON xyz - tv'

# Datastructure
-Input: String
Output: String
Intermed: array

# Scratchpad/Thoughs
- Need to write a method that swaps the lowercased letters in a string for their uppercase version, and need to swap
the uppercase letters with there downcase version
- I need to look at letters individually, not whole words

# Algorithm
- split the phrase into individual letters
- iterate through the array using map
- write conditional statements if this, then that


=end

def swapcase(phrase)
  phrase.split('').map do |char|
    if char == char.downcase
      char.upcase 
    else
      char.downcase 
    end
  end.join('')
end

p swapcase('CamelCase') == 'cAMELcASE'
p swapcase('Tonight on XYZ-TV') == 'tONIGHT ON xyz-tv'