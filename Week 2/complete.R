complete <- function(directory, id = 1:332) {
        ## 'directory' is a character vector of length 1 indicating
        ## the location of the CSV files
        ## 'id' is an integer vector indicating the monitor ID numbers
        ## to be used
        ## Return a data frame of the form:
        ## id nobs
        ## 1  117
        ## 2  1041
        ## ...
        ## where 'id' is the monitor ID number and 'nobs' is the
        ## number of complete cases
BDIR<-"F:/Coursera/R Working Dir/ComputingforDataAnalysis/Week 2"
setwd(BDIR)
i<-1
	while (i <= length(id)) {
		if (is.character(id)){
			ffn<-sprintf("%s",id)
		} else {
			ffn<-sprintf("%03.0f",id[i])
		}
		fn<-paste(directory,"/",ffn,".csv",sep="")
		data<-read.csv(fn)
		good<-complete.cases(data)
		x<-data[good,]
		y<-length(x[,1])
		if (i == 1) {
			dafa<-data.frame(id[i],y)
		} else {
			dafa<-rbind(dafa,data.frame(id[i],y))
		}
		i<-i+1
	}
	names(dafa)[names(dafa)=="id.i."]<-"id"
	names(dafa)[names(dafa)=="y"]<-"nobs"
	print(dafa)
}
