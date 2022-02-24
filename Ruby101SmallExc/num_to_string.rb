#Write a method that takes a positive integer or zero, and converts it to a string representation.
#How would i split an integer up?
#Input: An integer
#Output: A string
#How would i write a method that turns integers into strings?
#You need an array of numeric strings as a global variable.
#['0', '1', '2', '3', '4', '5', '6', '7', '8', '9']
#Now, i need to split each integer into an array 
STRING_NUMS = ['0', '1', '2', '3', '4', '5', '6', '7', '8', '9']

def integer_to_array(x)
  return [0] if x.zero?
  r = []
  while x > 0
    x,b = x.divmod(10)
    r.unshift b 
  end
 r 
end

def integer_to_string(x)
  str_arr = []
  integer_to_array(x).each do |int|  
    STRING_NUMS.each_with_index do |str, idx| 
      if int === idx 
        str_arr << str
      end
    end
  end
  str_arr.join 
end

p integer_to_string(4321) == '4321'
p integer_to_string(0) == '0'
p integer_to_string(5000) == '5000'

