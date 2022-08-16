# LAB- 10
# the following table gives the temperature and pulse rate of Individuals patients. Calculate Co-variation between them.
# Patient:              A           B	          C	         D	      E
# Temperature(X):      102         101           100	    99	     98
# Pulse(Y):            100	       90	         80	        70	     60

temperature<-c(102,101,100,99,98)
pulse<-c(100,90,80,70,60)
if(length(temperature) == length(pulse)){
  n<-length(temperature)
  temperatureMean<-sum(temperature)/n
  pulseMean<-sum(pulse)/n
  
  tempSummation<-0
  for(i in 1:n){
    val<-((temperature[i]-temperatureMean)*(pulse[i]-pulseMean))
    
    tempSummation<-tempSummation+val
  }
  covariance<-tempSummation/n
  cat("The covariance is : ",covariance)
  
}


# direct methods

# print(cov(temperature,pulse,method="spearman"))
# print(cov(temperature,pulse,method="kendall"))
# print(cov(temperature,pulse,method="pearson"))