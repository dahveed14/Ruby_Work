#Write a method that determines and returns the ascii string value of a string that is passed in as an argument
#The ascii string value is the sum of the ascii values of every character in the string.
#You may use string.ord to determine the ascii value of a character.

#Breakdown:
#Returns the ascii string value of a string 
#Ascii string value is the sum of the ascii values of every character in the strings
#Example:
#ascii_value('Four score') == 984
# a = 'b'
# p a.ord 
#I:String
#Output: Ingteger
#Create a variable that will hold the running sums
#Iterate through the strings and determine the value and add that value to that integer
#Will likely have to split string into an array

#Create defintion
#Create variable = 0- the starter
#Convert the string into an array
#Iterte through the array, and throug every iteration, extract the ascii value from that character
#add that value to the variable 

def ascii_value(str)
  var = 0
  str.chars.each do |char|
    var = var + char.ord
  end
  var 
end



p ascii_value('Four score') == 984
p ascii_value('Launch School') == 1251
p ascii_value('a') == 97
p ascii_value('') == 0

#Good Solution here
def ascii_value(str)
  str.chars.reduce(0) { |sum, char| sum + char.ord }
end