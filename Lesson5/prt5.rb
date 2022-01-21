#Given this nested Hash

munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}

#figure out the total age of just the male members of the family
#We are looking at a local variable munsters thats referencing a multidimensional Hash.
#Within that Hash, there are string keys with hashes as Values.
#Within the inner Hashes, we again have string keys pointing at integer values, which is what we're after
#By total age of the male members of the family, is it asking me to add up all the male ages?  A quick look at the solution says yes
#A simple loop might suffice here
#with an if statmenet, that says, if munsters[:gender] == "male", then add ["age"]
#How do i extract "male"? Lets to some quick tests

p total_age = munsters["Herman"]["age"] + munsters["Grandpa"]["age"] + munsters["Eddie"]["age"]

 
#Nested Array Solution
total_male_age = 0
munsters.each_value do |details|
  total_male_age += details["age"] if details["gender"] == "male"
end

total_male_age # => 444
