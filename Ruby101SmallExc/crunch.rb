#Write a method that takes a string argument and returns a new string that contains the value of the original
#string with all consecutive duplicate characters collapsed into a single character. You may not use #squeeze

#Method takes a string and returns a string with all duplicate characters deleted. 
#Create a new string
#push the letters into the new string unless the last letter of the string was the current letter of the iteration

#DataStructure: Start with a string, will need to implement an iteration
#turn string into array split up by letter
#add the letters into the new string unless the letter equals the last iteration..
require 'pry'
def crunch(phrase)
  str = []
  phrase.split('').each do |letters|
    unless str.last == letters
      (str << letters)
    end
  end
  str.join
end

p crunch('ddaaiillyy ddoouubbllee') == 'daily double'
p crunch('4444abcabccba') == '4abcabcba'
p crunch('ggggggggggggggg') == 'g'
p crunch('a') == 'a'
p crunch('') == ''