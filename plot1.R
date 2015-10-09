## This is a plot for Global Active Power
## Read the file
## Convert using strptime() and as.Date() functions.
## Missing values are ?
## Dates needed dates 2007-02-01 and 2007-02-02
plot1<-function() {
        pData <- read.table("household_power_consumption.txt",header=FALSE,sep=";",na.strings = "?",colClasses = "character",skip=66637,nrows=2880)
        names(pData) <- names(read.table("household_power_consumption.txt",header=TRUE,sep=";",na.strings = "?",colClasses = "character",nrows = 1))
        png(file="plot1.png", bg = "transparent",width = 480, height = 480, units = "px")
        hist(as.numeric(pData$Global_active_power),xlab = "Global Active Power (kilowatts)",col="red",main = "Global Active Power")
        dev.off()
}