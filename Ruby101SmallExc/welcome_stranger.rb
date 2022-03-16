=begin 
Create a method that takes 2 arguments, an array and a hash.
=end

def greetings(arr, hsh)
  name = arr.join(' ')
  life = hsh.values.join(' ')
  "=> Helllo, #{name}! Nice to have a #{life} around."
end

p greetings(['John', 'Q', 'Doe'], { title: 'Master', occupation: 'Plumber' })