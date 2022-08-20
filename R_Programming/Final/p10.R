
temperature= c(102,101,100,99,98)
pulse = c(100,90,80,70,60)
if(length(temperature) == length(pulse)){
  n = length(temperature)
  temperatureMean = sum(temperature)/n
  pulseMean = sum(pulse)/n
  
  tempSummation = 0
  for(i in 1:n){
    val = ((temperature[i]-temperatureMean)*(pulse[i]-pulseMean))
    
    tempSummation = tempSummation+val
  }
  covariance = tempSummation/n
  cat("The covariance is : ",covariance)
}
  
