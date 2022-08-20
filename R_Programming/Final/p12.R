data=c(1000,2000,3000,4000,5000,9000);
minData=min(data)
maxData=max(data)

n=length(data)

mean=sum(data)/n;

denominator=maxData-minData
resVector=vector(length=n)
zScoreResVector=vector(length=n)
decimalScalingVector=vector(length=n)

zScoreNumerator=0

for(i in 1:n){
  item=data[i]
  res=((item-minData)/denominator)
  resVector[i]=res
  
  
  zScoreNumerator=zScoreNumerator+((item-mean)*(item-mean))
}
cat("The Min Max variance result is : ",resVector);


SD=sqrt(zScoreNumerator/(n-1))
# print(SD)

for(i in 1:n){
  zScoreResVector[i]=(data[i]-mean)/SD
  c=2
  while((data[i]/(10^c))>1){
    c=c+1
  }
  decimalScalingVector[i]=(data[i]/(10^c))
}
cat("\nThe Z score variance result is : ",zScoreResVector);
cat("\nThe Decimal scaling variance result is : ",decimalScalingVector);