munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}

#Print out the name, age, and gender in the hash using inerpolation in a strgin

munsters.each do |key, value|
    puts "#{key} is a #{value["age"]}-year-old #{value["gender"]}"
end
