=begin
The String#to_i method converts a string of numeric characters Including an optional plus or minus sign,
to and Integer
String#to_i and the Integer constructor (Integer()) behave similarily. In this excercise, you will create 
method that does the same thing

Write a method that takes a string of digits, and returns the appropiate numbers  as an integer.
Can not use any of the methods mentioned above.
Do not worry about + - signs, nor should you worry about invalid characters; assume all characters
will be numeric

You may not use any of the standard conversion methods available in Ruby to convert a string to a number,
such as to_i and Integer(), 

The method should do this the old-fashioned way and calculate the result by analyzing the characters
in the string
=end

#P
#Turn string to integer

#D
#Use a hash to assign keys to the strings in order from 0 to 9
#Somehow use the hash to asign keys to the number given into a new hash
#Then return matching numbers....

#A
#Create a hash with the keys 0 to 9 and the corresponding digits as strings as values
#split the string into an array,
#Find the matching values, and throw the keys into an array, then join them

DIGITS = {
  '0' => 0, '1' => 1, '2' => 2, '3' => 3, '4' => 4,
  '5' => 5, '6' => 6, '7' => 7, '8' => 8, '9' => 9
}

def string_to_integer(str)
  digits = str.chars.map { |char| DIGITS[char] }

  value = 0
  digits.each { |digit| value = 10 * value + digit }
  value
end


p string_to_integer('4321') 