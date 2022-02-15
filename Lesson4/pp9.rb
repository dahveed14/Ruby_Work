words = "the flintstones rock"

up_case = words.split.map do |word|
  word.capitalize
end

p up_case.join " "
