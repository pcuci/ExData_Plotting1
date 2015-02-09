datafile <- file("../data/household_power_consumption.txt")
energydata <- read.table(text = grep("^[1,2]/2/2007", readLines(datafile), value = TRUE), col.names = c("Date", "Time", "Global_active_power", "Global_reactive_power", "Voltage", "Global_intensity", "Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), sep = ";", header = TRUE)

hist(energydata$Global_active_power, col="red", main="Global Active Power", xlab="Global Active Power (kilowats)")
dev.copy(png, file="plot1.png", width=480, height=480)
dev.off()