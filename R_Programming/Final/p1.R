x=c(8,2,7,10,2,9,8,4,10,19)
sort(x)
dataMean = mean(x)
dataMedian = median(x)
mode=function(x){
  ux=unique(x)
  ux[which.max(tabulate(match(x,ux)))]
}
mostrepeated=mode(x)

print(dataMean)
print(dataMedian)
print(mostrepeated)

