best<-function(state,cause){
PATH<-"F:/Coursera/R Working Dir/ComputingforDataAnalysis/Week 3"
# Convert args to character
  state<-as.character(state)
  cause<-as.character(cause)
# read input file
  outcome<-read.csv(paste(PATH,"/outcome-of-care-measures.csv",sep=""),colClasses="character")
i<-1
while(i <= nrow(outcome)){
    if(outcome$State[i]==state){
    outcome.state<-subset(outcome,State==state)
    i<-Inf
  }
  else
    i<-i+1
}
if (i!=Inf)
  stop("invalid state")
if (cause == "heart attack"){
  outcome.state.good<-subset(outcome.state,outcome.state[,11]!="Not Available")
  outcome.state.good[,11]<-as.numeric(outcome.state.good[,11])
  outcome.state.best<-data.frame(outcome.state.good[order(outcome.state.good[,11],outcome.state.good$Hospital.Name),])
  as.character(head(outcome.state.best$Hospital.Name,1))
}
  else 
  if (cause == "heart failure"){
    outcome.state.good<-subset(outcome.state,outcome.state[,17]!="Not Available")
    outcome.state.good[,17]<-as.numeric(outcome.state.good[,17])
    outcome.state.best<-data.frame(outcome.state.good[order(outcome.state.good[,17],outcome.state.good$Hospital.Name),])
    as.character(head(outcome.state.best$Hospital.Name,1))
  }
  else
  if (cause == "pneumonia"){
    outcome.state.good<-subset(outcome.state,outcome.state[,23]!="Not Available")
    outcome.state.good[,23]<-as.numeric(outcome.state.good[,23])
    outcome.state.best<-data.frame(outcome.state.good[order(outcome.state.good[,23],outcome.state.good$Hospital.Name),])
    as.character(head(outcome.state.best$Hospital.Name,1))
  }
  else 
    stop("invalid outcome")
}