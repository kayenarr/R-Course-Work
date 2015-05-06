#    outcome.state.lo2hideathrate<-data.frame(outcome.state[order(outcome.state[,11],na.last=TRUE),])
#    print(outcome.state.lo2hideathrate$Hospital.Name)
#    print(outcome.state.lo2hideathrate[,11])
#    print(outcome.state.lo2hideathrate$State)
#    df2<-cbind(outcome.state.lo2hideathrate$Hospital.Name,outcome.state.lo2hideathrate[,11],outcome.state.lo2hideathrate$State)
#    print(df2)
#    as.character(df2[1,1])


#  if (cause == "heart attack"){
#    outcome.state[,11]<-as.numeric(na.omit(outcome.state[,11]))
#    best.outcome <- min(na.omit(outcome.state[,11]))  
#    best.hospital <- subset(outcome.state, outcome.state[,11] == best.outcome)
#    best.hospital<-head(best.hospital[order(best.hospital$Hospital.Name),],1)
#    as.character(best.hospital$Hospital.Name)
#  }