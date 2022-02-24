# The || operator returns a truthy value if either or both of its operands are truthy. If both operands 
# are false, it returns a false value.
# The && operator returns a truthy value if both of its operands are truthy, and a falsey value if either
# operand is false. This works great until you need only one of two conditions to be truthy, the exclusive-or
# Write a function named xor, that takes two arguments, and returns true if exactly one of its arguments is 
# truthy, false otherwise. Note that we are looking for a boolean result instead of a truthy/falsey value
# as returned by || and &&

# What is an exclusive or? An exclusive or is an operation that returns True if strictly one value is true.
# If two values are True, then it returns false. So it can only have one True. 
# The difference between the exclusive or and the inclusive or is that the inclusive or can have two True's
# and return True. We need the result of two Trues to return false.

# So if two expressions are given with an exclusive or,we need to be able to detect if one of them returns
# true and false

# So if you have (true \\ false) this returns true. if you have (true \\ true), we need this to return false.
# 

def xor?(value1, value2)
  return true if value1 && !value2 #this is saying, return true if value1 is true and value2 is false
  return true if value2 && !value1 #this is saying, if value 1 was false, and value2 was true, then return true
end                                 #The && are needed and the if statements are needed to chech both values
                                   #Otherwise, it would short circuit if the first value was false, 
                                   #it would return false every time.
                                   #Essentially, the method will only return true if a true and false expression
                                   #is given. The bang ! takes care of flipping the booleans  