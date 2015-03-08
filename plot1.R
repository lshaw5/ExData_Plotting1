data<- read.table("C:/Users/leonb_000/Desktop/Statistical Analysis/household_power_consumption.txt", sep=";", header=T, quote= "", strip.white=TRUE, stringsAsFactors = F, na.strings= "?")

#Subset Data
data<- subset(data, (data$Date == "1/2/2007" | data$Date== "2/2/2007")) 

#Create Plot 1
png("plot1.png", width=480, height= 480)

hist(data$Global_active_power, col= "red", xlab= "Global Active Power (kilowatts)", ylab= "Frequency", main= "Global Active Power")

dev.off()