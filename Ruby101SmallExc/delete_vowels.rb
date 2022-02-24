=begin
# Problem
Write a method that takes an array of strings, and returns an array of the same string values, except with the
vowels removed.

# Rules
- Takes an array of strings
- Returns an array of the same string values
- Delete the vowels (a, e, i, o, u)

# Questions
- Should we return the same array object, or a new one?
-When deleting the vowels, should we replace them with spaces, or remove everything all together? remove everything
-remove the vowels from the words and return the rest of the word
-if the whole string is vowels, return an empty string

# Examples
remove_vowels(%w(abcdefghijklmnopqrstuvwxyz)) == %w(bcdfghjklmnpqrstvwxyz) 
remove_vowels(%w(green YELLOW black white)) == %w(grn YLLW blck wht)
remove_vowels(%w(ABC AEIOU XYZ)) == ['BC', '', 'XYZ']

# DataStrucure:
Input: An array of strings 
Output: An array of strings

# Scratchpad
- what do I need to iterate over if at all?
  You will need to iterate through the string as well
  To iterate through the string, you need to split the letters into there own elements
  Iterate through the inner elements and delete the letters that are in vowls
- What kind of information do I need to perform the necessary task at the iteration?
  I need to know if I should delete the letter in the string, based on vowels
-Computer thoughts:
  If this element is equal to any of the following elements, then delete it

# Algorithm


=end

# def remove_vowels (str)
#   vowels = ['a', 'e', 'i', 'o', 'u']
#   result = str.map do |outer|
#     outer.chars.delete_if do |inner|
#      vowels.include?(inner.downcase)
#     end
    
#   end
#   result
# end

def remove_vowels(str)
  str.map do |phrase|
    phrase.delete('aeiouAEIOU')
  end
end

p remove_vowels(%w(abcdefghijklmnopqrstuvwxyz)) == %w(bcdfghjklmnpqrstvwxyz)
p remove_vowels(%w(green YELLOW black white)) == %w(grn YLLW blck wht)
#p remove_vowels(%w(ABC AEIOU XYZ)) #== ['BC', '', 'XYZ']