=begin
# Problem
Write a method that takes a string, and then returns a hash that combines 3 entries: one represents the number of characters in
the string that are lowercase letters, one the number of characters that are uppercase letters, and one the number of characters
that are neither

# Breakdown
1. Method takes a string
2. Returns a hash that contains 3 entries
2a.One represents the number of characters in the string that are lowercase letters
2b.The next one represents the number of characters that are uppercase letters, 
2c.The next one represents the number of characters that are neither
3.The output is a hash with keys as :lowercase, :uppercase, :neither

# Example
-'abCdef 123' == {lowercase: 5, uppercase: 1, neither: 4}
This example tells me it's counting the space
-'AbCd +Ef' == {lowercase: 3, uppercase: 3, neither: 2}
neigher is counting spaces and special characters
-'123' {lowercase: 0, uppercase: 0, neither: 3}

# Sidenotes/Thoughts
-I could use the method count() and pass it a block that says, if char == char.lower case then count
-#count can be called on a string, then just pass a block to count
-I could iterate through the whole string for each case and just focus on that one.

# Algorithm
- Create a new hash
- Call count on the string passed
- Pass a block to the method
- The argument being passed into the block will evaluate to true or false. Count will return the number of times for which the 
iteration evaluated to true
- Create a variable to hold the number of counts for each key



=end

def letter_case_count(string)
  lower_cnt = string.split('').count { |char| [*('a'..'z')].include?(char) }
  upper_cnt = string.split('').count { |char| [*('A'..'Z')].include?(char) }
  none = string.split('').count { |char| !([*('a'..'z'), *('A'..'Z')].include?(char)) }

  counter_hash = {lowercase: lower_cnt, uppercase: upper_cnt, neither: none}

end

p letter_case_count('abCdef 123') # == { lowercase: 5, uppercase: 1, neither: 4 }
p letter_case_count('AbCd +Ef') #== { lowercase: 3, uppercase: 3, neither: 2 }
p letter_case_count('123') #== { lowercase: 0, uppercase: 0, neither: 3 }
p letter_case_count('') #== { lowercase: 0, uppercase: 0, neither: 0 }