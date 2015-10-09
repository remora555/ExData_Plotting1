## This is a plot for Global Active Power
## Read the file
## Convert using strptime() and as.Date() functions.
## Missing values are ?
## Dates needed dates 2007-02-01 and 2007-02-02
plot3<-function() {
        pData <- read.table("household_power_consumption.txt",header=FALSE,sep=";",na.strings = "?",colClasses = "character",skip=66637,nrows=2880)
        names(pData) <- names(read.table("household_power_consumption.txt",header=TRUE,sep=";",na.strings = "?",colClasses = "character",nrows = 1))
        x <- strptime(paste(pData$Date,pData$Time),"%d/%m/%Y %H:%M:%S")
        png(file="plot3.png", bg = "transparent",width = 480, height = 480, units = "px")
        plot(x,as.numeric(pData$Sub_metering_1),type = "l",xlab = "",col="black",ylab = "Energy sub metering")
        lines(x,as.numeric(pData$Sub_metering_2),col="red")
        lines(x,as.numeric(pData$Sub_metering_3),col="blue")
        legend("topright",lty = 1,c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),col=c("black","red","blue"))
        dev.off()
}