x = c(172,176,154,165,152,142)
y = c(64,56,45,69,49,57)

result = lm(y~x)
print(result)

print(summary(result))

plot(x,y)
