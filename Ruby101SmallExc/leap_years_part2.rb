#Leap Years Part 2
#Prior to 1752, the Julian Calender was used, and under the Julian Calender, leap years occur in any year
#that is evenly divisible by 4
#Example: if 1752 should return true 

#If the year is before or equal to 1752, use a simple conditional that checks if it divides by 4
#If the year is after 1752, use our old method, leap_year?


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

def julius_leap?(year)
    if (year <= 1752) && (year % 4 == 0)
        true
    else
        leap_year?(year)
    end
end


p julius_leap?(100)
p julius_leap?(1700)