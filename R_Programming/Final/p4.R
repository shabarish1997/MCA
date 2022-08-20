grade = seq(from=0,to=50,by=10)
freq = c(2,5,6,5,2)

midpoint = grade[-length(grade)] + (diff(grade)-1)/2
print(midpoint)
freq_x_midpoint = sum(freq*midpoint)
mean =  freq_x_midpoint/sum(freq)
cat("Mean is ",mean)

cumulative_freq<-cumsum(freq)
print(cumulative_freq)

Nby2=sum(freq)/2
i=1
while(cumulative_freq[i]<Nby2){
  i=i+1
}
fL=grade[i]
fNby2=Nby2
fCF=cumulative_freq[i-1]
fF=freq[i]
fH=diff(grade)[1]

result=(fL+(((fNby2-fCF)/fF)*fH))
cat("median is ",result)

fval=which(freq==max(freq))[1]
f1=freq[fval]
f0=freq[fval-1]
f2=freq[fval+1]

mode=(fL+(((f1-f0)/((2*f1)-f0-f2))*fH))
cat("Mode is ",mode)
