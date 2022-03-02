=begin 
# Problem
-Write a method that combines two Arrays passed in as arguments, and returns a new array that contains all elements from both
Array arguments, with the elements taken in alternation
-You may assume that both input Arrays are non-empty, and that they have the same number of elements

# Example: 
interleave([1, 2, 3], ['a', 'b', 'c']) == [1, 'a', 2, 'b', 3, 'c']

# Questions/ Thoughts
-Take two arrays with the same number of elements, and return one array, with all the elements alternating
-One each iteration the element from the second array, will be inserted directly after the first arrays element
-so, you can return a new collection. After each iteration insert the current element into a new array, make sure the first
array is placed before the second


=end

def interleave(arr1, arr2)
  counter = 0 
  new_arr = []
  loop do 
    new_arr << arr1[counter] << arr2[counter]
    counter += 1
    break if counter == arr1.size
  end
  new_arr
end

p interleave([1, 2, 3], ['a', 'b', 'c']) == [1, 'a', 2, 'b', 3, 'c']