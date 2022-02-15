#Leap Years (Part 1)
#Leap years occur in Every year that is evenly divisible by 4
    #Unless that year is also divisible by 100 ie. year 500
#If the year is evenly divisible by 100, then it is NOT a leap year 
    #Unless the year is evenly divisible by  400


#Data: 
#Input: Will be an Integer
#Output: Will be a boolean. True if it's a leap year and false if its not

#PseudoCode Breakdown
#If the year is evenly divisble by 4, then true, it's a leap year
#However, if the year is divisible by 4 && divisible by 100, then false, its not a leap year
#If the year is evenly divisible by 100, then it is not a leap year unless its also divisible by 400
#If divisble by 100 && divisible by 400, then true
#However, if divisible by 100, and not by 400, then false

#Rules
#1.If divisible by 4, then true
#2.If divisible by 4 && 100, then false
    #2b.If evenly divisble by 100 && evenly divisble by 400, then true
#3.Year must be greater than 0

#Datstructure will consist of taking an integer as an argument and testing it in some conditionals
#
#**Algorithm**
#If year is divisible by 4 && 100 && 400, then true
#If year is divisible by 4 and 100, then false
#If year is divisible by 4, then true
#Otherwise false

def leap_year?(year)
    if (year % 4 == 0) && (year % 100 == 0) && (year % 400 == 0)
        true 
    elsif (year % 100 == 0) && (year % 4 == 0)
        false
    elsif year % 4 == 0
        true
    else
        false
    end
end

 leap_year?(2016)   == true
 leap_year?(2015)   == false
 leap_year?(2100)   == false
 leap_year?(2400)   == true
 leap_year?(240000) == true
 leap_year?(240001) == false
 leap_year?(2000)   == true
 leap_year?(1900)   == false
 leap_year?(1752)   == true
 leap_year?(1700)   == false
 leap_year?(1)      == false
 leap_year?(100)    == false
 leap_year?(400)    == true

