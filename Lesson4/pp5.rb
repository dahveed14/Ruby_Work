#Find the index of the first name that starts with "Be"

#Iterate through the array using string index look up and matching with idx

flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)

flintstones.each_with_index do |str, idx|
  if str[0..1] == 'Be'
    p idx 
  end
end 
