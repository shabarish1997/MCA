#   6)Suppose that the data for analysis includes the attribute age. The age values for the data tuples are (in increasing order)
#   
#   13,15,16,19,20,21,22,22,25,25,25,25,30,33,33,35,35,35,35,36,40,45,46,52 ,70 
#   a) Show a boxplot of the data 
#   b) Give the five-number summary of the data and visualize using box plot. 
#   c) Calculate IQR.



data <- c(13,15,16,19,20,21,22,22,25,25,25,25,30,33,33,35,35,35,35,36,40,45,46,52 ,70)

# a)
boxplot(data)

# b)
summary(data)

# c)
IQR(data)