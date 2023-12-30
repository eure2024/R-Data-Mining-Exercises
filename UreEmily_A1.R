#Question 1

Auto <- read.csv("Auto.csv")

Auto <- read.csv("Auto.csv", header=T,na.strings="?") 

Auto=na.omit(Auto) 

fix(Auto)

#Question 2

dim(Auto)


#Question 4

summary(Auto)

#Question 5

sapply(Auto[,1:7],var)

#Question 6

pairs(Auto[,1:7])

pairs(~ mpg + cylinders + displacement + horsepower + weight + acceleration + year, Auto)

#Question 7
#Use the hist ( ) function to produce some histograms for four variables (cylinders, displacement, horsepower and weight). 
#You may find the command par(mfrow=c(2,2))

par(mfrow=c(2,2))

cylinders <- Auto$cylinders
hist(cylinders)

displacement <- Auto$displacement
hist(displacement)

horsepower <- Auto$horsepower
hist(horsepower)

weight <- Auto$weight
hist(weight)

#Question 8
#Auto[which.min(mpg),]
#Auto[which.max(mpg),]


mpg <- Auto$mpg
Auto[which.min(mpg),]


Auto[which.max(mpg),]

#Question 9
#Create a new qualitative variable, called “FourCylinder”, by binning the cylinders variable. We are
#going to divide cylinders into two groups based on whether the number of cylinders is equal to 4. After
#creating a new variable, you might use as.factor() function and summary () function to see how many
#cars have 4 cylinders?

FourCylinder <- rep("No", nrow(Auto))
FourCylinder[Auto$cylinders==4] <- "Yes"
FourCylinder <- as.factor(FourCylinder)

summary(FourCylinder)

#Question 10
#) Now remove the 10th through 85th observations. What is the range, mean and standard deviation of each
#quantitative predictor in the subset of the data that remains?



sapply(Auto[-c(10:84),1:7], mean)

sapply(Auto[-c(10:84),1:7], sd)

sapply(Auto[-c(10:84),1:7], range)


