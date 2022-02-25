=begin
# Problem
Given an unordered array and the information that exactly one value in the array occuers twice (every other value occurs exactly once)
how would you determine which value occurs twice? Write a method that will find and return the duplicate value that is known
to be in the array.

Find the duplicate value
Input: Array
Output: Integer
Intermed: Use a loop to iterate through the array.
Have a handle to save the character
if the next element equals the save character, then break, otherwise
  move the saved character up one
end

=end
require 'pry'
def find_dup(array)
  saved_char = nil 
  handle = 0

  loop do
    saved_char = array[handle]
    iterator = handle + 1
    loop do
      break if saved_char == array[iterator] || iterator == array.size

      iterator += 1
    end
    break if saved_char == array[iterator] || handle == array.size

    handle += 1
  end
  saved_char = array[handle]

end

p find_dup([18,  9, 36, 96, 31, 19, 54, 75, 42, 15,
            38, 25, 97, 92, 46, 69, 91, 59, 53, 27,
            14, 61, 90, 81,  8, 63, 95, 99, 30, 65,
            78, 76, 48, 16, 93, 77, 52, 49, 37, 29,
            89, 10, 84, 1, 47, 68, 12, 33, 86, 60,
            41, 44, 83, 35, 94, 73, 98,  3, 64, 82,
            55, 79, 80, 21, 39, 72, 13, 50,  6, 70,
            85, 87, 51, 17, 66, 20, 28, 26,  2, 22,
            40, 23, 71, 62, 73, 32, 43, 24,  4, 56,
            7,  34, 57, 74, 45, 11, 88, 67,  5, 58]) # == 73