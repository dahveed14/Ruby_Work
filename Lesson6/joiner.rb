# Write a method called Joiner that will produce the following output:
# We will be inserting elements using custom delimeters and custom positions.
# If a simple array is given, then only use an 'or' and place it right before the last element.
# if one agrument is given, then use insert

def joinor(arr, semi = ',', last = 'or')
  new_arr = []
  if arr.size > 2
    arr.each_with_index do |num, idx|
      if idx <= (arr.size - 2)
        new_arr << (num.to_s + semi)
      end
    end
    new_arr << arr.last.to_s
    new_arr.insert(-2, last).join(' ')
  else
    arr.join(last)
  end
end

p joinor([1, 2])
p joinor([1, 2, 3]) # => "1, 2, or 3"
p joinor([1, 2, 3], ';') # => "1; 2; or 3"
p joinor([1, 2, 3], ',', 'and') # => "1, 2, and 3"
