#Write a method that returns one UUID when called with no parameters
#A UUID is created through randomization
#It is a string containin integers, and letters and dashes

#example String:"f65c57f6-a6aa-17a8-faa1-a67f2dc9fa91"

#perhaps split into 4 sections
#randomize numbers in the strings
nums = ('0'..'10')
letters = ('a'..'z')
dsh = ['-']

def rando1
    new_arr = nums.to_a + letters.to_a
    new_arr.shuffle[0..5]
end
def dash(dsh)
    dsh
end
#new_new_arr= rando1(nums, letters) + dash(dsh) + rando1(nums, letters) + dash(dsh) + rando1(nums, letters) + dash(dsh) + rando1(nums, letters) + dash(dsh) + rando1(nums, letters)
new_new_arr= rando1(nums, letters) + dash(dsh)

p new_new_arr.join * 5

#**Answer
def generate_UUID
    characters = []
    (0..9).each { |digit| characters << digit.to_s }
    ('a'..'f').each { |digit| characters << digit }
  
    uuid = ""
    sections = [8, 4, 4, 4, 12]
    sections.each_with_index do |section, index|
      section.times { uuid += characters.sample }
      uuid += '-' unless index >= sections.size - 1
    end
  
    uuid
  end