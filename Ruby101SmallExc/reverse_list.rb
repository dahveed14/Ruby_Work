
def reverse!(list)
  list.reduce([]) do |obj, char|
   obj = char    
  end
end



p reverse!([1,2,3,4])  # == [4,3,2,1]          # => true
# p reverse!(%w(a b e d c)) == %w(c d e b a)  # => true
# p reverse!(['abc']) == ['abc']              # => true
# p reverse!([]) == []     
