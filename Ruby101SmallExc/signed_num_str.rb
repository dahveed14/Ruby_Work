

DIGITS = ['0', '1', '2', '3', '4', '5', '6', '7', '8', '9']

def integer_to_string(number)
  if number < 0
    flipped_num = number * -1
  else
    flipped_num = number 
  end
  result = ''
  loop do
    flipped_num, remainder = flipped_num.divmod(10)
    result.prepend(DIGITS[remainder])
    break if flipped_num == 0
  end
  if number < 0 
    result = '-' + result
  elsif number > 0 
    result = '+' + result
  else 
    result
  end
end

p integer_to_string(-123)
p integer_to_string(4321) #== '+4321'
p integer_to_string(0) #== '0'