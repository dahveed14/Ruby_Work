=begin 
Write a method that detects a double number.
a double number is a number with an even number of digits whose left-side digits are exactly the same
as its right-side digits. 
How to compare the left side to the right side of a digit?
Turn the integer to a string?
Call size on it. if even,
find the range
if odd, then just multiply the number by 2 and return it
=end

def twice(int)
  string_int = int.to_s
  center = int.to_s.size / 2

  if int.to_s.size.odd?
    int * 2
  else
    if string_int[0..center -1] == string_int[center..-1]
      return int
    else
      return (int * 2)
    end
  end
end

p twice(37) == 74
p twice(44) == 44
p twice(334433) == 668866
p twice(444) == 888
p twice(107) == 214
p twice(103103) == 103103
p twice(3333) == 3333
p twice(7676) == 7676
p twice(123_456_789_123_456_789) == 123_456_789_123_456_789
p twice(5) == 10