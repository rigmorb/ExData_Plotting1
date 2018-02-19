
HPC <- read.table("/Users/Rigmor15/Documents/R_Coursera/R_ExploratoryDataAnalysis/Week1/household_power_consumption.txt",
                   header=TRUE, sep=";", na.strings="?", colClasses = c('character','character','numeric','numeric','numeric','numeric','numeric','numeric','numeric'))
HPC1 <- subset(HPC, Date %in% c("1/2/2007","2/2/2007"))
HPC1$Date <- as.Date(HPC1$Date, format="%d/%m/%Y")

hist(HPC1$Global_active_power, main="Global Active Power", 
     xlab="Global Active Power (kilowatts)", ylab="Frequency", col="Red")


dev.copy(png,"plot1.png", width=480, height=480)
dev.off()