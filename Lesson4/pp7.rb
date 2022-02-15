#Create a hash that expresses the frequency with which each letter occurs in this string:
#statement = "The Flintstones Rock"
#In the hash, Each key will be one of these letters. 
#The values will be the frequency for which the key appared.
#{"F"=>1, "R"=>1, "T"=>1, "e"=>2,...}
#I currently have a string, and need to create unique keys out of the letters.
#Use each_with_object({}) and use the unique method to extract the keys.
#use the unique keys to count how many times they occured and use the count method
#delete the spaces
result = {}
letters = ('A'..'Z').to_a + ('a'..'z').to_a

letters.each do |letter|
  letter_frequency = statement.count(letter)
  result[letter] = letter_frequency if letter_frequency > 0
end

