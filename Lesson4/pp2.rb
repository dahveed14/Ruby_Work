#Add up all the ages from the Munster family hash:
ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10, "Marilyn" => 22, "Spot" => 237 }

#extract all the values into an array, and use something like inject to add them

p ages.values.reduce(:+)

#Solution from LS
total_ages = 0

ages.each do |_, age|
  total_ages = total_ages + age
end 

p total_ages
