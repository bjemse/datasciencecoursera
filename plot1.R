#reading data
dframe1 <read.csv("household_power_consumption.txt", na.strings = "?", sep = ";")
x <-as.Date(dframe1$Date, tryFormats="%d/%m/%Y")
df <- subset(dframe1,x=="2007-02-02"| x=="2007-02-01")
        #sending plot to png file             
        png("plot1.png")
                #creating plot&
                hist(df$Global_active_power, col="red", main ="Global Active Power",
                xlab="Global Active Power (kilowatts)")
#turning off device
dev.off()
