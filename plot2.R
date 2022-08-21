#reading data
dframe1 <- read.csv("household_power_consumption.txt", na.strings = "?", sep = ";")
#copying plot to png file
png("plot2.png")
#creating plot2
        x <-as.Date(dframe1$Date, tryFormats="%d/%m/%Y")
        df <- subset(dframe1,x=="2007-02-02"| x=="2007-02-01")
        plot(df$Global_active_power, type="l", ylab="Global Active Power (kilowatts)", xlab="", xlim=c(0,3000), xaxt="n")
        axis(side=1, at=c(0,1440, 2880), labels=c("Thursday", "Friday", "Saturday"))
#dev.copy(png, file="plot2.png")
dev.off()



