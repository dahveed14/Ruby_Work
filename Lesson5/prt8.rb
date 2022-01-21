#Using the `each` method, write some code to output all of the vowels from the strings
hsh = {first: ['the', 'quick'], second: ['brown', 'fox'], third: ['jumped'], fourth: ['over', 'the', 'lazy', 'dog']}

#output all the vowels ['a', 'e', 'i', 'o', 'u']
#All the vowels here are in arrays, which are values of a key symbol.
#given that the value is an array, how do we easily check if a certin defined letters are included in that array? Include method?

#we don't really need the key, we need to iterate through the values which are arrays
#could we use a counter inside an each?

#so, through each iteration, a method has to check for each individual vowel?

def vowels(letter)
    letter == 'a' || letter == 'e' || 
    letter == 'i' || letter == 'o' ||
    letter == 'u' 
end





hsh.each do |key, value|
    value.each do |word|
        word.chars.each do |letter|
            if vowels(letter)
                p letter
            end
        end
    end
end

   





