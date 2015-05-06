count <- function(cause = NULL) {
  ## Check that "cause" is non-NULL; else throw error
  ## Check that specific "cause" is allowed; else throw error
  ## Read "homicides.txt" data file
  ## Extract causes of death
  ## Return integer containing count of homicides for that cause
}


count<-function(codeath=""){
  
  PATH<-"F:/Coursera/R Working Dir/ComputingforDataAnalysis/Week 4"

  # Convert args to character
  if (codeath=="")
    stop("No Cause Specified")

  # read input file
  homicides<-readLines(paste(PATH,"/homicides.txt",sep=""))
  homicides<-homicides[grep("Cause",homicides)]
  if (codeath=="asphyxiation"){
    #code for "asphyxiation"
    length(grep("[Cc]ause: +[Aa]sphyxiation",homicides))
  }
  else if (codeath=="blunt force") {
    #code for "blunt force"
    length(grep("[Cc]ause: +[Bb]lunt +[Ff]orce",homicides))
  }
  else if (codeath=="shooting"){
    # code for "shooting"
    length(grep("[Cc]ause: +[Ss]hooting",homicides))
  }
  else if (codeath=="stabbing"){
    # code for "stabbing"
    length(grep("[Cc]ause: +[Ss]tabbing",homicides))
  }
  else if (codeath=="other") {
    #code for other
    length(grep("[Cc]ause: +[Oo]ther",homicides))
  }
  else if (codeath=="unknown") {
    #code for "unknown"
    length(grep("[Cc]ause: +[Uu]nknown",homicides))
  }
  else
    stop("Invalid Cause Specified")  
}