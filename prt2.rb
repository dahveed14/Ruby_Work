#How would you order this array of hashes based on the year of publication of each book,
#from the earliest, to the latest
#The array has to be re organized in a manner of a key, thats inside of each hash
#There's 4 hashes in the array, and each hash has 3 key value pairs
#I would need to sorty by the key[:published] in each hash, so the outer array needs to be comnparing
#those keys

#Data Strucuture: An outer array with hashes inside
#Example
#Lets do an easy one

#algorithm
#Using the sort_by method, and two parameters, key and value, access the key you need by using the name
#so, run a test run and see what happens if you just order by key, since you have multiples keys


books = [
  {title: 'One Hundred Years of Solitude', author: 'Gabriel Garcia Marquez', published: '196'},
  {title: 'The Great Gatsby', author: 'F. Scott Fitzgerald', published: '1925'},
  {title: 'War and Peace', author: 'Leo Tolstoy', published: '1869'},
  {title: 'Ulysses', author: 'James Joyce', published: '1922'}
]

new_arr = books.sort_by do |key, val| key[:published].to_i end 
    p new_arr

# books = [{published: "5"}, {published: "3"}, {published: "2"}]

# nw = books.sort_by {|key, value| key[:published] }
# p nw 
