#write a method that takes two strings as arguments, determines the longest of the two strings, 
#and then returns the result of concatenating the shorter string, the longer the string, and the shorter
#string once again. You may assume that the strings are of different lengths.

#breakdown:
#Method takes two strings
#determines the longest of the two strings
#retunrs the result of concatenating the shorter string, the longer string, and the shorter string once again.


#Example: short_long_short('abc', 'defgh') == "abcdefghabc"

#datastructue: input: string 
#output: string
#classify the strings as either short or long

#***Algorithm***
#1. Determine the length of the strings
#2. assign them to vairables short and long depending on the length
#3. Concatenate the variable in the order of short + long + short
#4. Return the concatenation

def short_long_short(str1, str2)
      if  str1.length < str2.length
        (short = str1) && (long = str2)
      elsif  
         str2.length < str1.length
        (short = str2) && (long = str1)
      end
      short + long + short   
end

p short_long_short('abc', 'defgh') == "abcdefghabc"
p short_long_short('abcde', 'fgh') == "fghabcdefgh"
p short_long_short('', 'xyz')      == "xyz"
