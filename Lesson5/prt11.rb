#Given the following data structure use a combination of methods, including either select or reject method,
#to return a new array identical in structure to the original array but containing only the integers that are multiples of 3.
#I only want to return values that are true. That is, when evaluated to be multiple of 3, that value needs to return true
#If it doesn't return true, then don't include in new array. 
#The select method is perfect for this method.
#Question is: Do we want to use select on the outer arrya and inner array?
#Data Strcuture
#One outer array, with  4 sub arrays. 2 dimensional array.
#will need to iterate through the outer array, and also iterate through the inner array, while checking if the values are true
#algo
#1.We need to return a new array only containing the true values, we can use map on the outer, and select on the inner
#while on the inner array and using select, determine the truthinness of the value by an if statement
#if element % 3 == 0

arr = [[2], [3, 5, 7], [9], [11, 13, 15]]

new_arr = arr.map do |outer|
    outer.select do |inner|
        inner % 3 == 0
    end 
end


p new_arr

