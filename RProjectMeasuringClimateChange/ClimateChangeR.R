
setwd("C:/Users/tiafo/Desktop/RProject/RProjectMeasuringClimateChange")

tempdata <- read.csv("NorthernHemisphere.csv", skip = 1, na.strings = "***")
CO2data <- read.csv("CO2.csv")

str(tempdata)
str(CO2data)

#plot(tempdata$Year,tempdata$J.D, xlab="Year", ylab="Temperature Anomoly", type="l")
#abline (a=0, b=0, h=0, "1950 - 1980 average")
#text(2000, -0.1, "1951-1980 average") 

#print(length(tempdata$DFJ))

#plot(tempdata$Year, tempdata$DJF, xlab="Year", ylab="Temperature Anomoly", type="l", col = "red")
#lines(tempdata$Year, tempdata$MAM,xlab="Year", ylab="Temperature Anomoly", type="l", col = "black")
#lines(tempdata$Year, tempdata$JJA,xlab="Year", ylab="Temperature Anomoly", type="l", col = "green")
#lines(tempdata$Year, tempdata$SON,xlab="Year", ylab="Temperature Anomoly", type="l", col = "blue")

#tempdata$Period <- 
#  factor(NA, levels = 
#    c("1921-1950", "1951-1980", "1981-2010"), 
#    ordered = TRUE)

#JJA <- data.frame(anomaly=tempdata$JJA, year=tempdata$Year)

#slice0 <- subset(tempdata, Year>1921 & Year<=1950)
#slice1 <- subset(tempdata, Year>1951 & Year<=1980)
#slice2 <- subset(tempdata, Year>1981 & Year<=2010)

#freq_table <- table(slice1)

#xBreaks <- round(seq(-0.3, 1.05, 0.05), 2)

#hist(slice1$anomaly, breaks = xBreaks, plot=TRUE, xlab="Temperature Anomaly/°C", main="Temperature Anomaly Frequencies Comparison")
#legend("topright", c("1951 - 1980"), col = c("black"), lwd = 2)

#hist(slice2$anomaly, breaks = xBreaks, plot=TRUE, xlab="Temperature Anomaly/°C", main="Temperature Anomaly Frequencies Comparison")
#legend("topright", c("1981 - 2010"), col = c("black"), lwd = 2)

#temp_51to80 <- unlist(slice1[,2:13])
#perc <- quantile(temp_51to80, c(0.3, 0.7))   
#p30 <- perc[1]
#p70 <- perc[2]
#print(p30)
#print(p70)

#print(mean(slice2$DJF))
#print(mean(slice2$MAM))
#print(mean(slice2$JJA))
#print(mean(slice2$SON))

slice1 <- subset(C02data, Year>1959)
df_date <- as.Date(paste(slice1$Year, slice1$Month, "01"), format = "%Y %m %d")

plot(df_date, slice1$Interpolated, xlab="Year", ylab="CO2 levels", type="l", col = "red")
lines(df_date, slice1$Trend, xlab="Year", ylab="CO2 levels", type="l", col = "blue")
legend("right", c("Interpolated", "Trend"), col = c("red", "blue"), lwd = 2)
title("A Graph To Show How CO2 Levels Have Changed Over Time")

