Year <- matrix(c(146, 78, 48, 98, 54, 22, 42, 92, 20, 10, 10, 20), byrow = T, nrow = 3)

rownames(Year) <- c("Liked", "Disliked", "Indiffernt")
colnames(Year) <- c("Under 20", "20-39", "40-59", "60 and over")

result <- chisq.test(Year)