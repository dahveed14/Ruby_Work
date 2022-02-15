def multisum(integer)
  sum_arr = []
  (1..integer).each do |num|
    if (num % 3 == 0) || (num % 5 == 0)
      sum_arr << num
    end
  end
  sum_arr.inject(0, :+)
end

p multisum(3) == 3
p multisum(5) == 8
p multisum(10) == 33
p multisum(1000) == 234168
