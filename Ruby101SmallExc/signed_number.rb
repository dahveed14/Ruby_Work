DIGITS = {
  '0' => 0, '1' => 1, '2' => 2, '3' => 3, '4' => 4,
  '5' => 5, '6' => 6, '7' => 7, '8' => 8, '9' => 9
}

def string_to_signed__integer(str)
  str[0] == '+' || str[0] == '-'
end

def string_to_integer(str)
  new_char = []
  new_char = str.slice!(0) if string_to_signed__integer(str)
  digits = str.chars.map { |char| DIGITS[char] }

  value = 0
  digits.each { |digit| value = 10 * value + digit }

  if new_char[0] == '-'
    value * -1
  else value
  end
end
p string_to_integer('4321') == 4321
p string_to_integer('-570') == -570
p string_to_integer('+100') == 100
