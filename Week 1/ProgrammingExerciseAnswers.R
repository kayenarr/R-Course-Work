airquality$Answers to Programming Exercises
#Mandatory Submissions
###################
Common:
airquality<-read.csv("hw1_data.csv")
#Remove NAs from the Ozone Column
nonNAValues<-!is.na(airquality$O)
airquality[nonNAValues,1]
#Use complete.cases() if there are multiple objects
###################

#Q1.
# head(airquality,0)
Ozone   Solar.R Wind    Temp    Month   Day  

#Q2.
> airquality[1:2,]
  Ozone Solar.R Wind Temp Month Day
1    41     190  7.4   67     5   1
2    36     118  8.0   72     5   2

#
Q3.
>length(airquality$O)
> length(airquality[,1])
[1] 153

Q4. 
> airquality[152:153,]
    Ozone Solar.R Wind Temp Month Day
152    18     131  8.0   76     9  29
153    20     223 11.5   68     9  30

#OR

tail(airquality,2)

Q5. 
> airquality[[47,"O", exact=FALSE]]

[1] 21

Q6.
##Solution as a set of commands
a <-is.na(airquality[,1])
# can be airquality[[firststcolumn]], if firststcolumn<-"Ozone"
# also can be airquality$O
# also can be airquality[["O", exact=FALSE]]
u <-a == "TRUE"
print("No of elements is")
length(a[u])

##Solution as a function
fn6=function(filename){
mydataset<-read.csv(filename)
MissingOzone <-is.na(mydataset[,1])
MissingOzone
# can be airquality[[firststcolumn]], if firststcolumn<-"Ozone"
# also can be airquality$O
# also can be airquality[["O", exact=FALSE]]
RowsMissingOzone <-MissingOzone == "TRUE"
RowsMissingOzone
print("No of elements is")
length(MissingOzone[RowsMissingOzone])
}

37

Q7.
NOTMISSING=!is.na(airquality$O)
NONOTMISSING<-NOTMISSING=="TRUE"
mean(airquality$O[NONOTMISSING])

42.12931

Q8.
df1<-airquality[airquality$Ozone>31,] # Rows with Ozone > 31 (NAs still there)
df1
df2<-df1[df1$Temp>90,] # Rows with Temp > 90 and Ozone >31 (NAs still there)
df2
good<-complete.cases(df2) # Remove NAs
df3<-df2[good,]
df3
df3$S # Display Solar.R values for the filtered rows
mean(df3$Solar.R)

212.8

Q9.

df1<-airquality[airquality$Month==6,] # Rows with Month == 6 (NAs still there)
df1
df1$Temp # Display Solar.R values for the filtered rows
mean(df1$Temp)

79.1

Q10.

df1<-airquality[airquality$Month==5,] # Rows with Month == 5 (NAs still there)
df1
good<-complete.cases(df1) # Remove NAs
df2<-df1[good,]
df2
df2$Ozone # Display Solar.R values for the filtered rows
max(df2$Ozone)

115

###########################################
Optional:
Write an R function called 'Unique' which takes an arbitrary vector/list as input and returns a 
vector containingn all the unique elements of that vector/list. DO NOT use the following functions: 
unique, duplicated, %in%, table or match. 

The unique elements do not need to be returned in any particular order. 
The output vector does not need to have names, even if the input vector did have names.
############################################
Unique<-function(vec){	
j<-2
k<-1
newvec<-vec[1]
	while(j<=length(vec)){
		while (k<=length(newvec)) {
			if (vec[j]==newvec[k]){
				k<-Inf
			} else {
				while(k<=length(newvec)){	
					if (vec[j]!=newvec[k]) {	
						if (k==length(newvec)){
							k<-k+1
							newvec[k]<-vec[j]
							k<-k+1
						} else {
							k<-k+1
						}	
					} else {
						k<-Inf
					}
				}	
			}	
		}
	j<-j+1
	k<-1
	}
	print(newvec)
}	
##############################################

Uniquelist<-function(mylist){	
j<-2
k<-1
newlist<-mylist[[1]]
	while(j<=length(mylist)){
		while (k<=length(newlist)) {
			if (mylist[[j]]==newlist[[k]]){
				k<-Inf
			} else {
				while(k<=length(newlist)){	
					if (mylist[[j]]!=newlist[[k]]) {	
						if (k==length(newlist)){
							k<-k+1
							newlist[[k]]<-mylist[[j]]
							k<-k+1
						} else {
							k<-k+1
						}	
					} else {
						k<-Inf
					}
				}	
			}	
		}
	j<-j+1
	k<-1
	}
print(newlist)
}		