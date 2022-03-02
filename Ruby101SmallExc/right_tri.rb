# Create a triangle that takes a positive integer, n, as an argument, and displays a right triangle whose sides each have n stars
# The hypotenuse of the triangle (the diagonal side) should have one end at the lower-left of the triangle, and the other end 
# at the upper-right

# The catch with this problem is realizing that you have to start off with n - 1 trailing spaces,
# and after every iteration, the trailing white space is subtracted
# So maybe assign a variable this white space and after every iteration, subtract a white space
# so, you could say spaces = n -1
# and spaces * '' is appending in the string with + '*'

def triangle(n)
  (1..n).each { |num| puts ' ' * (n - num) + '*' * num }
end

triangle(10)