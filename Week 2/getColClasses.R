getColClasses<-function(){
	initial<-read.table("F:/Coursera/R Working Dir/ComputingforDataAnalysis/Week 2/specdata/220.csv",nrows=20)
	classes<-sapply(initial,class)
	print(classes)
}

Notagood_getmonitor<-function(id,directory,summarize=FALSE){
setwd("F:/Coursera/R Working Dir/ComputingforDataAnalysis/Week 2/")
setwd(directory)  #not good since the nvironment outside the function is disturbed
ffn<-sprintf("%03.0f",id)
fn<-paste(ffn,".csv",sep="")
read.csv(fn)
}