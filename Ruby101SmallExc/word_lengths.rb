=begin 
# Pedac
Write a method that takes a string as an argument, and returns an Array that contains every word from the
string, to which you have appended a space and the word length.

You may assume that words in the string are seperated by exactly one space, and that any substring of
non-space characters is a word.

# Example
- word_lengths("cow sheep chicken") == ["cow 3", "sheep 5", "chicken 7"]

# Datastructure
- I: A  string
- O: An array that contains every word from the string
- Intermediate: Hash?

# Sidethoughts / Notes
- Looks like I have to split up the string and call split on it
- Then i have to count the characters in the words, turn it into a hash, and use the value as as the size of
string
- Afterwords, use interpolation, and stick it into a new string, then into an array

# Algorithm
1. Take string
2. Call split on string
3. transform into an array, delimiting by words
4. Create new hash
5. Iterate through array, and create key value pairs. Use map in this step?
6. Interpolate the keys and values and return the string to the method


=end

def word_lengths(str)
 str.split.map { |char| "#{char} #{char.size}" }
end

p word_lengths("cow sheep chicken") == ["cow 3", "sheep 5", "chicken 7"]

p word_lengths("baseball hot dogs and apple pie") ==
  ["baseball 8", "hot 3", "dogs 4", "and 3", "apple 5", "pie 3"]

word_lengths("It ain't easy, is it?") == ["It 2", "ain't 5", "easy, 5", "is 2", "it? 3"]

p word_lengths("Supercalifragilisticexpialidocious") ==
  ["Supercalifragilisticexpialidocious 34"]

p word_lengths("") == []