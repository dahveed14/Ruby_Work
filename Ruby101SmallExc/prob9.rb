#Write a method that returns true if the string passed as an argument is a palindrome, false otherwise
#This time, however, your method should be case-insensitive, and it should ignore all non-alphanumeric characters
#If you wish, you may simplify things by calling the palindrome? method you wrote in the previous exc.
#Breakdown: Returns true if the string passed as an argument is a palindrome.
#Case-insensitive: In other words 'Madam' == 'madam'
#


def real_palindrome?(str)
    p new_str = str.reverse
        if new_str.downcase == str 
            true 
        else false
        end
end 

p 'madaM'.downcase

p real_palindrome?('madam')             #== "madam" #=#== true
p real_palindrome?('Madam')              #== "Madam" #=#== true           # (case does not matter)
#p real_palindrome?("Madam, I'm Adam")   #== "Madam, I'm Adam"#== true # (only alphanumerics matter)
#p real_palindrome?('356653')            #== "356653" ##== true
#p real_palindrome?('356a653')           #== "356a653" #== true
#p real_palindrome?('123ab321')          #== "123ab321" #== false
