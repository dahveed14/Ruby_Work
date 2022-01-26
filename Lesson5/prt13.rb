#Given this data structure, write some code to return an array containing the colors of the fruits and the sizes of the vegetables.
#The sizes should be uppercase and the colors should be capitalized
#Return an array
#Containing the colors of the fruits
#containing the sizes of the vegetables

#[["Red", "Green"], "MEDIUM", ["Red", "Green"], ["Orange"], "LARGE"]
hsh = {
  'grape' => {type: 'fruit', colors: ['red', 'green'], size: 'small'},
  'carrot' => {type: 'vegetable', colors: ['orange'], size: 'medium'},
  'apple' => {type: 'fruit', colors: ['red', 'green'], size: 'medium'},
  'apricot' => {type: 'fruit', colors: ['orange'], size: 'medium'},
  'marrow' => {type: 'vegetable', colors: ['green'], size: 'large'},
}

#if its a fruit, return the colors, which are values in the sub hash
#if it's a vegetable, return the size, which is also a key val pair in the inner hash
#
#datastructure
#Input: Hash and inner Hash
#OUtput: array, with possible inner arrays. Doesn't really matter though

#**Algorithm**
#If the type is fruit, return the k/v pair :colors
#if the :type is vegetable, return the size
#map always returns an array.

new_arr = hsh.map do |k, value|
    if  value[:type] == 'fruit'
         value[:colors].map(&:capitalize) 
    elsif value[:type] == 'vegetable'
          value[:size].upcase
    end
end
p new_arr #== [["Red", "Green"], "MEDIUM", ["Red", "Green"], ["Orange"], "LARGE"]

#****Notes***
#In this problem, the values were different data structures, for example, the colors were arrays, while the sizes where simply
#strings. Therefore, when doing the last step of the problem and using upcase and capitalize, you had to use map on colors,
#through iterate through the array, and only used upcase on on the size, no iteration needed on a single object string
#Point being, make sure you make note of the data structures within the values, that will trip you up.