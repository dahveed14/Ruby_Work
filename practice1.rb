arr = ['10', '11', '9', '7', '8']
p arr.map(&:to_i).sort {|a, b| b <=> a}.map(&:to_s)