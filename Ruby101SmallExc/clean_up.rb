#Given a string that consists of some words (all lowercased) and an assortment of non-alphabetic characters,
#write a method that returns that string with all of the non_alphabetic characters replaced by spaces. If
#one or more non-alphabetic characters occur in a row, you should only have one space in the result
#The result should never have consecutive spaces.

#Write a method that returns a string with all the non-alphabetic characters replaced by spaces.
#If one or more non-alphabetic characters occur in a row, you should only have one space in the result
#the result should never have consecutive spaces.

#So what's my problmes here? I'm being given a string with various non alphabetic characters that are consecutive
#I need to replace consecutive non alphabetic chars with one single space.
#How would I tell one alphabetic char from another non-alphabetic char?
#What's the best way to replace $%%@$@# with one space? Cool, we can use squeeze.
#So the first thing here is to replace all special chars with spaces

ALPHA = *('a'..'z')

def cleanup(string)
  new_str = ''
  space = ' '
  string.split('').each do |chars|
    if ALPHA.include?(chars)
      new_str << chars 
    else
      new_str << space 
    end
  end
  new_str.squeeze 
end

p cleanup("---what's my +*& line?") == ' what s my line '