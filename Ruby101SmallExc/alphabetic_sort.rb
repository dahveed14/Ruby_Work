#Write a method that takes an array of integers between 0 and 19, and returns an array of those integers sorted
#based on the english words of each number

#Sort the numbers based on the english word for that integer
#
#Create a hash with keys from 0 to 19 and the corresponding values in alpha strings
#An array is being given, I need to sort based on alpha strings of the corresponding digit
#Create an array with the string integers in order from 0..19
#Iterate through the array given and create

NUMBER_WORDS = %w(zero one two three four
                  five six seven eight nine
                  ten eleven twelve thirteen fourteen
                  fifteen sixteen seventeen eighteen nineteen)

def alphabetic_number_sort(arr)
  hsh = {}
  arr.each do |nums|
    hsh[nums] = NUMBER_WORDS[nums]
  end
  hsh.sort_by {|k, v| v }.to_h.keys 
end

p alphabetic_number_sort((0..19).to_a) #== 
[
  8, 18, 11, 15, 5, 4, 14, 9, 19, 1, 7, 17,
  6, 16, 10, 13, 3, 12, 2, 0
]