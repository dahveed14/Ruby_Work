# The time of day can be represeneted as the number of minutes before or after midnight. If the number of minutes
# is positive, the time is after midnight. If the number of minutes is negative, the time is before midnight
# Write a method that takes a time using this minute-based format and returns the time fo day in 24 hour format
# Your method should work with any integer input
# Breakdown
# If the number of minutes given is positive, the time is after midnight
# If the number of minutes given is negative, the time is before midnight.
# So Midnight = 0
# The output of the method must be the time of day in 24 hour hh:mm format
# Datastructure: Input: Integer
# Output: A string.
# In between: We need a conversion from minutes to hours
# If 3000 minutes is given, we could use divmod, correct?
# If the integer given is greater than a one day period, only put out the hours that remain, 
# So in the 3000 example above, that equates to 50 hours, which equates to 2 days and 2 hours
# Similarly, if a negative number is given, then simply the clock starts rolling back, rather than forward.
# So you need to set up rules for what constitues minutes and hours and days
# Then you can use these rules to build out what you might need.
 
# 1.Lay out the minutes and hours rules
# 2.Write out simple defintion that outputs the hours if say 455 minutes is given
# 3.Expand it from there
# 4.If the minutes given is negative, I subtracted from the total amount of minutes in a day, used that total
# to caculate how many hours and minutes that totals. 
# 5.How would I handle an integer thats larger than 1440 minutes to return me only the minutes and hours left?
# 6.Well If mins > 1440, then pass divmod 24 to get you the remainder of hours in the days. 
# 7. What if its negative? Use absolute value
# 8. If its greater than 1440, which constitutes a day, then we need the minutes that aren't part of the whole day
# 9.use remainder
# How to have my time show up in 00:00 format when say, the integer given is zero? Currently it only returns
# 0:0

def time_of_day(mins)
  more_than_one_day(mins) if mins = mins.remainder(1440)

  if mins.negative?
    back_wards = 1440 + mins
    hrs, minutes = back_wards.divmod(60)
  else
    hrs, minutes = mins.divmod(60)
  end
  format('%02d:%02d', hrs, minutes)
end

def more_than_one_day(mins)
  mins.abs > 1440
end

p time_of_day(0) == '00:00'
p time_of_day(-3) == '23:57'
p time_of_day(35) == '00:35'
p time_of_day(-1437) == '00:03'
p time_of_day(3000) == '02:00'
p time_of_day(800) == '13:20'
p time_of_day(-4231) == '01:29'
