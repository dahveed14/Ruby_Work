=begin 
# Problem
Write a method that takes an Array of integers as input, multiplies all the numbers together, divides the result by the number of 
entris in the array, and then prints the result rounded to 3 decimal places. Assume the array is not empty.

=end

# First Solution

def show_multiplicative_average(int_array)
  result = 1.to_f 
  avg = nil
  int_array.each do |num|
    result *= num 
  end
  avg = (result / int_array.size)
  "%.3f" % avg 
end

# Second Solution

def show_multiplicative_average(int_array)
  average = int_array.inject(:*).to_f 
  average = average / int_array.size 
  "%.3f" % average
end
p show_multiplicative_average([3, 5])                # => The result is 7.500
p show_multiplicative_average([6])                   # => The result is 6.000
p show_multiplicative_average([2, 5, 7, 11, 13, 17])