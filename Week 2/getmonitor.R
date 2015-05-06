getmonitor<-function(id,directory,summarize=FALSE){
        ## 'id' is a vector of length 1 indicating the monitor ID
        ## number. The user can specify 'id' as either an integer, a
        ## character, or a numeric.
        
        ## 'directory' is a character vector of length 1 indicating
        ## the location of the CSV files

        ## 'summarize' is a logical indicating whether a summary of
        ## the data should be printed to the console; the default is
        ## FALSE
BDIR="F:/Coursera/R Working Dir/ComputingforDataAnalysis/Week 2/"  # Base Directory
setwd(BDIR)
#print(class(id)) # - to know the class of id
	if(is.character(id)){
		ffn<-sprintf("%s",id) # if id is character create a character string
	} else {
		ffn<-sprintf("%03.0f",id) #if id is a number, create a 3 letter character string
	}
fn<-paste(directory,"/",ffn,".csv",sep="")
	if (!summarize) {
		read.csv(fn)
	} else {
		df1<-read.csv(fn)
		print(summary(df1))
		df1
	}
}
