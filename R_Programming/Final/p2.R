x=c(2,4,6,8,10)
f=c(1,3,5,8,10)

xf=sum(x*f)
print(xf)

N_val=sum(f)
print(N_val)

#Mean value for it.
meanVal=xf/N_val
print(meanVal)

#Median
medeanData=N_val/2
print(medeanData)

cf=0
cf1=0

for (i in 1:5) {
  
  cf1=cf1+f[i]  
  cf[i]=cf1
  print(cf1)
}
print(medeanData)
for (i in 1:5) {
  if(cf[i]>medeanData)
  {
    print(cf[i])
    CrsVal__X__ForMedean=x[i]
    print(CrsVal__X__ForMedean)
    break
  }
}

ModeValFinal=3*(CrsVal__X__ForMedean)-2*(meanVal)
print(ModeValFinal)
