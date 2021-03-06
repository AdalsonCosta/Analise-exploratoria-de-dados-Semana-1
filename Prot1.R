# Análise exploratória de dados Semana 1
dataset <- read.table("household_power_consumption.txt", 
	header = TRUE, sep = ";", na.strings = "?")
subdata <- dataset[dataset$Date %in% c("1/2/2007", "2/2/2007"),] 
# Subset the data data from the dates 2007-02-01 and 2007-02-02
datetime <- strptime(paste(subdata$Date, subdata$Time), "%d/%m/%Y %H:%M:%S") 
#Convert the Date/Time variables to Date/Time classes, 
#bring data and time in one variable

#Plot 1
hist(subdata$Global_active_power, col = "red", 
	main = "Global Active Power", 
	xlab = "Global Active Power (kilowatts)")
dev.copy(png, file = "plot1.png") # create my plot to a PNG file
dev.off() # close the png device
