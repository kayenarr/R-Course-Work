rankall<-function(cause="",rank="best"){
  PATH<-"F:/Coursera/R Working Dir/ComputingforDataAnalysis/Week 3"
  # Convert args to character
  cause<-as.character(cause)
  
  # read input file
  outcome<-read.csv(paste(PATH,"/outcome-of-care-measures.csv",sep=""),colClasses="character")
  outcome.states<-split(outcome,outcome$State)
  ###########################################################
  #outcome.states[[1]]$State
  #outcome.states[[1]]$Hospital.Name
  #length(names(outcome.states))
  #names(outcome.states[1])
  #names(outcome.states[1:length(names(outcome.states))])
  ###########################################################
  dafa<-data.frame()
  
  i<-1
  if(rank==0)
    stop("invalid rank")
  if (rank=="best")
    rank<-1
  #########################
  while (i <= length(names(outcome.states))){
    outcome.state<-data.frame(outcome.states[[i]])
    if (rank=="worst"){
      rank1<-as.numeric(nrow(outcome.state))
    } else
        rank1<-rank 
      if (rank1 <= nrow(outcome.state)){
      if (cause == "heart attack"){
        outcome.state.good<-subset(outcome.state,outcome.state[,11]!="Not Available")
        outcome.state.good[,11]<-as.numeric(outcome.state.good[,11])
        outcome.state.best<-data.frame(outcome.state.good[order(outcome.state.good[,11],outcome.state.good$Hospital.Name),])
        list.of.rank.hosp<-(tail(head(outcome.state.best$Hospital.Name,rank1),1))
        dafa1<-data.frame(list.of.rank.hosp,names(outcome.states[i]))
        if(nrow(dafa)==0)
          dafa<-dafa1
        else
          dafa<-rbind(dafa,dafa1)
      }
      else 
        if (cause == "heart failure"){
          outcome.state.good<-subset(outcome.state,outcome.state[,17]!="Not Available")
          outcome.state.good[,17]<-as.numeric(outcome.state.good[,17])
          outcome.state.best<-data.frame(outcome.state.good[order(outcome.state.good[,17],outcome.state.good$Hospital.Name),])
          list.of.rank.hosp<-(tail(head(outcome.state.best$Hospital.Name,rank1),1))
          dafa1<-data.frame(list.of.rank.hosp,names(outcome.states[i]))
          if(nrow(dafa)==0)
            dafa<-dafa1
          else
            dafa<-rbind(dafa,dafa1)
        }
      else
        if (cause == "pneumonia"){
          outcome.state.good<-subset(outcome.state,outcome.state[,23]!="Not Available")
          outcome.state.good[,23]<-as.numeric(outcome.state.good[,23])
          outcome.state.best<-data.frame(outcome.state.good[order(outcome.state.good[,23],outcome.state.good$Hospital.Name),])
          list.of.rank.hosp<-(tail(head(outcome.state.best$Hospital.Name,rank1),1))
          dafa1<-data.frame(list.of.rank.hosp,names(outcome.states[i]))
          if(nrow(dafa)==0)
            dafa<-dafa1
          else
            dafa<-rbind(dafa,dafa1)
        }
      else 
        stop("invalid outcome")
    } else {
      list.of.rank.hosp<-"<NA>"
      dafa1<-data.frame(list.of.rank.hosp,names(outcome.states[i]))
      if(nrow(dafa)==0)
        dafa<-dafa1
      else
        dafa<-rbind(dafa,dafa1)
    }
    i<-i+1
  }
  names(dafa)<-c("hospital","state")
  dafa
}