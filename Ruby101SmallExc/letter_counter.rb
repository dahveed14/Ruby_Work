#Write a method that takes a string with one or more space seperated words and returns a hash
#that shows the number of words of different sizes
#Words consist of any string of characters that do not include a space

#So, i have to group the words by size, and count how many of those words exist.
#So, if 2 4-letter words exists, represent that with a key-value pair
#The key will be the size of the words and the value will be the count of words
#Maybe do two methods. one to count the words and to output the count of the letter
#And another to count how many words are in that word-size

#Algorithm
#Begin by splitting the phrase into an array splitted by the spaces in the phrase
#Have this method size() return the size of each word
#Have another method count the words based on the size of the method size.
#So if size == 4, then count all the words that size == 4
#use count with a block and use a counter. save that counter as the value to the key

#So i'm first going to write a method that counts the length of each word and returns it
#Next, i'm going to write a method that uses that length to count words that are of the same length
#I need an empty hash

def word_sizes(phrase)
  hsh = {}
  phrase.split.each do |word| 
    hsh[word.size] = phrase.split.count { |x| x.size == word.size }
  end
  hsh
end

p word_sizes('Four score and seven.') #== { 3 => 1, 4 => 1, 5 => 1, 6 => 1 }
p word_sizes('Hey diddle diddle, the cat and the fiddle!') #== { 3 => 5, 6 => 1, 7 => 2 }
p word_sizes("What's up doc?") #== { 6 => 1, 2 => 1, 4 => 1 }
p word_sizes('') #== {}