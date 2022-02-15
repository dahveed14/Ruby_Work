flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)
flintstoness = %w(Fred Barney Wilma Betty BamBam Pebbles)
#Amend this array so that the names are all shortened to just the first three characters:
#So, here, I need a destructive method.
#I need to count the first 3 characters of every element, and delete the rest

flintstones.map! do |name|
  name[0, 3]
end
