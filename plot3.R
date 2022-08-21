#reading data
dframe1 <- read.csv("household_power_consumption.txt", na.strings = "?", sep = ";")
#sending plot to png file
png("plot3.png")
        #creating plot3
        x <-as.Date(dframe1$Date, tryFormats="%d/%m/%Y")
        df <- subset(dframe1,x=="2007-02-02"| x=="2007-02-01")
        plot(df$Sub_metering_1, type="l", ylab="Energy sub metering", xlab="", xlim=c(0,3000), xaxt="n")
        axis(side=1, at=c(0,1440, 2880), labels=c("Thursday", "Friday", "Saturday"))
        points(df$Sub_metering_2, type="l", col="red")
        points(df$Sub_metering_3, type="l", col="blue")
        legend("topright",lty=1, col=c("black", "red", "blue"), legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))
#turning ogg png device
dev.off()

