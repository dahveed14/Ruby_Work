#Modify the #word_sizes method from the previous exercise to exclude non-letters when determining word size.
#For instance the length of "it's" is 3, not 4
#use count with a block

ALPHA = *('a'..'z')

def word_sizes(phrase)
  hsh = {}
  phrase.split.each do |word| 
    hsh[special_counter(word)] = phrase.split.count { |x| special_counter(x) == special_counter(word) }
  end
  hsh
end

def special_counter(phrase)
  phrase.downcase.split('').count do |leters|
    ALPHA.include?(letters)
  end
end

#p word_sizes('Four score and seven.')
p word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 3 }
p word_sizes("What's up doc?") == { 5 => 1, 2 => 1, 3 => 1 }
p word_sizes('') == {}