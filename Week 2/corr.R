corr <- function(directory, threshold = 0) {
        ## 'directory' is a character vector of length 1 indicating
        ## the location of the CSV files

        ## 'threshold' is a numeric vector of length 1 indicating the
        ## number of completely observed observations (on all
        ## variables) required to compute the correlation between
        ## nitrate and sulfate; the default is 0

        ## Return a numeric vector of correlations
#####
#Initialize variables
BDIR<-"F:/Coursera/R Working Dir/ComputingforDataAnalysis/Week 2"
i<-1
cr<-as.numeric(vector())
gnf<-0
#####
setwd(BDIR)
mydir<-dir(directory)
nf<-length(dir(directory))
	while (i <= nf) {
		fn<-paste(directory,"/",mydir[i],sep="")
		data<-read.csv(fn)
		good<-complete.cases(data)
		x<-data[good,]
		y<-length(x[,1])
		if (y >= threshold) {
			gnf<-gnf+1
			#cr<-append(cr,t[(!is.na(cor(x$sulfate,x$nitrate))==TRUE)])
			t<-cor(x$sulfate,x$nitrate)
			s<-!is.na(t)
			#print(s)
			m<-s=="TRUE"
			b<-t[m]
			cr<-append(cr,b)
			#cr<-append(cr,cor(x$sulfate,x$nitrate))
		}
		i<-i+1
	}
return(cr)
}


