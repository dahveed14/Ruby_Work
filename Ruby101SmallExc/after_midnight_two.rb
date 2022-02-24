# write two methods that each take a time of day in 24 hour format, and return the number of minutes
# before and after midnight, respectively
# Breakdown:
# Two methods
# First method will return the time after midnight
# Second method will return the time before midnight
# Both methods must convert the string to integers
# One method will subtract from 1440 and the other will add from 0
# Example:
# After_midnight('12:34') == 754. 
# Before_midnight('12:34') == 686 
# Datastructure: Input: A string formatted in 24 hour time
# Output: An integer in minutes
# Okay, so there's 5 elements in the string format, and there will only ever be 5 elements
# So i can hard code variables to the indexes and name them hour and minutes.
# The hour variable I then convert to minutes, and add it to minutes
# Depending on the method, I then subtract from 1440 for before midnight
# And add from zero for after midnight
# Okay, so whats my issue here?
# When my before_midnight function takes in a 0, it's returning 1440, when it should be returning 0.
# However, it returns the correct time when it takes in any other value.
# Just add an if statement and say, if total_mins equals 0, then return, otherwise xyz.
# For my method after_midnight, it needs to return 0 when the minutes are 1440

MIDNIGHT = 1440

def conversion (clock)
  hrs = clock[0,2].to_i * 60
  mins = clock[3, 2].to_i 
  total_mins = mins + hrs
end

def after_midnight(clock)
  total_mins = conversion(clock)
  total_mins == 1440 ? 0 : total_mins
end

def before_midnight(clock)
  total_mins = conversion(clock)
  total_mins > 0 ? MIDNIGHT - total_mins : total_mins
end

p after_midnight('00:00') == 0
p before_midnight('00:00') == 0
p after_midnight('12:34') == 754
p before_midnight('12:34') == 686
p after_midnight('24:00') == 0
p before_midnight('24:00') == 0
