mortalitygraphs<-function () {
read.csv("outcome-of-care-measures.csv")
head(outcome)

o11<-outcome[,11]<-as.numeric(outcome[,11])
o17<-outcome[,17]<-as.numeric(outcome[,17])
o23<-outcome[,23]<-as.numeric(outcome[,23])

range(o11,na.rm=TRUE)
range(o17,na.rm=TRUE)
range(o23,na.rm=TRUE)

par(mfrow=c(1,3))
c<-
hist(o11,lwd=1,xlim=c(5,25),xlab="30-Day Death Rate",main=substitute("Heart Attack " * (bar(X)==k),list(k=mean(o11,na.rm=TRUE))))
abline(v=median(o11,na.rm=TRUE),par(lwd=2,col="red"))
hist(o17,lwd=1,xlim=c(5,25),xlab="30-Day Death Rate",main=substitute("Heart Failure " * (bar(X)==k),list(k=mean(o17,na.rm=TRUE))))
abline(v=median(o17,na.rm=TRUE),par(lwd=2,col="red"))
hist(o23,lwd=1,xlim=c(5,25),xlab="30-Day Death Rate",main=substitute("Pneumonia " * (bar(X)==k),list(k=mean(o23,na.rm=TRUE))))
abline(v=median(o23,na.rm=TRUE),par(lwd=2,col="red"))
}
#histogram(outcome[,11],xlab="30-Day Death Rate", main="Heart Attack", 
 #         panel=function(outcome[,11],...) {
 #          panel(histogram(outcome[,11],...))
 #         panel.abline(median(outcome[,11]))
 #      }
 #     )