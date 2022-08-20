X=c(72,50,81,74,94,86,59,83,65,33,88,81)
Y=c(84,63,77,78,90,75,49,79,77,52,74,90)
if(length(X)==length(Y)){
  sumX=sum(X)
  sumY=sum(Y)
  sumXSquare=sum(X^2)
  sumYSquare=sum(Y^2)
  sumXY=sum(X*Y)
  n=length(X)
  XMean=sumX/n
  YMean=sumY/n
  byx=(((n*sumXY)-(sumX*sumY))/((n*sumXSquare)-(sumX)^2))
  bxy=(((n*sumXY)-(sumX*sumY))/((n*sumYSquare)-(sumY)^2))
  XSubs=(bxy*(-YMean))+XMean
  YSubs=(byx*(-XMean))+YMean
  if(XSubs>0){
    XSubs=paste("+",XSubs)
  }
  if(YSubs>0){
    YSubs=paste("+",YSubs)}
  cat("\nThe regression eqauation for X is ",bxy,"y",XSubs)
  cat("\nThe regression eqauation for Y is ",byx,"x",YSubs)
}