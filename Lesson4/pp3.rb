#Remove people with age 100 and greater
#use a destructive method
#use delete_if
ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10 }

ages.delete_if {|k, v| v >= 100}

p ages 