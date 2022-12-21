setwd("T:/Year 12/RProjectMeasuringClimateChange")

tempdata <- read.csv("NorthernHemisphere.csv", skip = 1, na.strings = "***")

str(tempdata)

#plot(tempdata$Year,tempdata$J.D, xlab="Year", ylab="Temperature Anomoly", type="l")
#abline (a=0, b=0, h=0, "1950 - 1980 average")
#text(2000, -0.1, "1951-1980 average") 

#print(length(tempdata$DFJ))

#plot(tempdata$Year, tempdata$DJF, xlab="Year", ylab="Temperature Anomoly", type="l", col = "red")
#lines(tempdata$Year, tempdata$MAM,xlab="Year", ylab="Temperature Anomoly", type="l", col = "black")
#lines(tempdata$Year, tempdata$JJA,xlab="Year", ylab="Temperature Anomoly", type="l", col = "green")
#lines(tempdata$Year, tempdata$SON,xlab="Year", ylab="Temperature Anomoly", type="l", col = "blue")

tempdata$Period <- 
  factor(NA, levels = 
    c("1921-1950", "1951-1980", "1981-2010"), 
    ordered = TRUE)