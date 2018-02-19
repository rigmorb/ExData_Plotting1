hpc <- read.csv("/Users/Rigmor15/Documents/R_Coursera/R_ExploratoryDataAnalysis/Week1/household_power_consumption.txt", header=T, sep=';', na.strings="?", nrows=2075259, check.names=F, stringsAsFactors=F, comment.char="", quote='\"')
hpc1 <- subset(hpc, Date %in% c("1/2/2007","2/2/2007"))
hpc1$Date <- as.Date(hpc1$Date, format="%d/%m/%Y")
datetime <- paste(as.Date(hpc1$Date), hpc1$Time)
hpc1$Datetime <- as.POSIXct(datetime)

## Plot 2
with(hpc1, {
        plot(Global_active_power~Datetime, type="l",
             ylab="Global Active Power (kilowatts)", xlab="")
})

dev.copy(png,"plot2.png", width=480, height=480)
dev.off()