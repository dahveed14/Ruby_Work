=begin
# Problem
Write a method that determines the mean of the three scores passed to it, and returns the letter value
associated with that grade.
=end

def get_grade(one, two, three)
  grade = (one + two + three) / 3.0
  if grade <= 100 && grade >= 90
    'A'
  elsif
    grade < 90 && grade >= 80
    'B'
  elsif 
    grade < 80 && grade >= 70
    'C'
  elsif
    grade < 70 && grade >= 60
    'D'
  else
    'F'
  end
end

p get_grade(95, 90, 93) == "A"
p get_grade(50, 50, 95) == "D"