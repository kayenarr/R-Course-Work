agecount <- function(age = NULL) {
  ## Check that "age" is non-NULL; else throw error
  ## Read "homicides.txt" data file
  ## Extract ages of victims; ignore records where no age is
  ## given
  ## Return integer containing count of homicides for that age
}


agecount<-function(age=NULL){
  
  PATH<-"F:/Coursera/R Working Dir/ComputingforDataAnalysis/Week 4"

  # Convert args to character
  if (length(age)==0)
    stop("No Age Specified")

  # read input file
  homicides<-readLines(paste(PATH,"/homicides.txt",sep=""))
  homicides<-homicides[grep("[Yy]ears old",homicides)]
  ss<-sprintf(" %s years old",age)
  length(grep(ss,homicides))
}