#Write a method that returns true if the string passed as an argument is a palindrome, false otherwise.
#A palindrome reads the same forward and backward. For this excerise, case matters as does punctuation and spaces.

# palindrome?('madam') == true
# palindrome?('Madam') == false          # (case matters)
# palindrome?("madam i'm adam") == false # (all characters matter)
# palindrome?('356653') == true

#Input: String
#Output: String
#DataStructure: reverse the string in a way where it reads the same forwards and backwards.

def palindrome?(str)
    str.reverse
end

p palindrome?('madam') == "madam"
p palindrome?('Madam') == "Madam"          # (case matters)
p palindrome?("madam i'm adam") == "madam i'm adam"
p palindrome?('356653') == "356653"