=begin 
# Problem
Modify the last method in staggard part 1 so that the non alphabetic characters are ignored when deciding whether to 
capitalize a letter or not. The non-alpha characters should  still be included in the return value; they just don't count
when toggling the desired case.

-So, back to the question, how do I capitalize a letter based on the last letter?
Okay, so I saying something like if letter, then capitalize. I need to somehow declare a new variable and save the last
letter in it after I've capitalized it. so then i can say if letter capitalized, then downcase, otherwise, upcase.
=end

def staggered_case(string)
  result = ''
  need_upper = true
  string.chars.each do |char|
    if char =~ /[a-z]/i
      if need_upper
        result += char.upcase
      else
        result += char.downcase
      end
      need_upper = !need_upper
    else
      result += char
    end
  end
  result
end


