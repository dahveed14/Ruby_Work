=begin
# Problem

Write a method that takes a string as an argument, and returns a new string that contains the original value using staggard
capitalization scheme in which every other character is capitalized, and the remaining characters are lwoercase.
Characters that are not letters should not be changed, but count as characters when switching between upper and lowercase.

# Example
- 'I Love Launch School!' == 'I LoVe lAuNcH ScHoOl!'
-ALL_CAPS' == 'AlL_CaPs'
-'ignore 77 the 444 numbers' == IgNoRe 77 ThE 444 NuMbErs'

# Sidenotes/Thoughts 
-Seems straightforward at first, first i thought to just capitalize everyother word using indecis
-However, the slight wrinkle in this probleml is not counting charcters that are not in the alphabet
-so t22l would be T22L
-This is an interesting problem because I have to capitalize every other letter, not every other character.
- I could say somethign like, if char is not in alphabet, then next iteration
- I could just say, if the last letter was capitalized, then capitalize

# Datastructure
Input: String
Output: String
Intermed: Array
How do I iterate through the array by only capitalizing every other letter, not character
  I would have to save the last letter that I iterated over into some variable
  And on the next iteration, if the element is a letter, then do the oppossite of what the variable is

# Algorithm
- Split up the string into individual letters into an array
- every iteration, save the element into the same variable if its a letter

=end

def staggered_case(phrase)
  new_arr = []
  phrase.split('').each_with_index do |char, idx| 
    if (idx + 1).odd?
      new_arr << char.upcase 
    else new_arr << char.downcase
    end
  end
  new_arr.join('')
end

p staggered_case('I Love Launch School!') == 'I LoVe lAuNcH ScHoOl!'
p staggered_case('ALL_CAPS') == 'AlL_CaPs'
p staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 NuMbErS'

# Soluion
=begin
def staggered_case(string)
  result = ''
  need_upper = true
  string.chars.each do |char|
    if need_upper
      result += char.upcase
    else
      result += char.downcase
    end
    need_upper = !need_upper
  end
  result
end
=end