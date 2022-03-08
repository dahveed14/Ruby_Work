=begin 
Write a method that takes a single string argument and returns a new string that contains the original value of the
of the argument with the first character of every word capitalized and all other letters lower case

# Breakdown
- Method takse a string with multiple words, they are all lowercased.
- Capitalize the first letter of every word
- Leave all other words as is

# Example
- 'four score and seven' == 'Four Score And Seven'
- 'the javascript language' == 'The Javascript Language'
- 'this is a "quoted" word' == 'This Is A "quoted" Word'

# Datastructure
- Input a string with all lower cased letters
- Output a NEW string with the first letter of every word capitalized
- Intermed: Will need to iterate through the string at index [0]

# Sidenotes / Thoughts
-What method capitalizes? Upcase does.
- Use map because you need to return a new collection

=end

def word_cap(phrase)
  phrase.split.map {|char| char.capitalize }.join(' ')
end


p word_cap('four score and seven') == 'Four Score And Seven'
p word_cap('the javaScript language') == 'The Javascript Language'
p word_cap('this is a "quoted" word') == 'This Is A "quoted" Word'