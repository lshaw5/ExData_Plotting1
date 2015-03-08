data<- read.table("C:/Users/leonb_000/Desktop/Statistical Analysis/household_power_consumption.txt", sep=";", header=T, quote= "", strip.white=TRUE, stringsAsFactors = F, na.strings= "?")

# Subset Data
data<- subset(data, (data$Date == "1/2/2007" | data$Date== "2/2/2007")) 
# Change to Date Format
data$Date <- as.Date(data$Date, format = "%d/%m/%Y")

data$DateTime <- as.POSIXct(paste(data$Date, data$Time))

# Create Plot 2
png("plot2.png", width=480, height= 480)

plot(data$DateTime, data$Global_active_power, type= "l", lwd=1, ylab= "Global Active Power (kilowatts)", xlab="")

dev.off()
