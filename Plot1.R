Plot1<-function(){
    file<-read.table("household_power_consumption.txt",sep=";",header=TRUE,col.names=c("Date","Time","Global_active_power","Global_reactive_power","Voltage","Global_intensity","Sub_metering_1","Sub_metering_2","Sub_metering_3"),colClasses=c("character","character",rep("numeric",7)),na.strings="?")
    interest <-file[file$Date == "1/2/2007" | file$Date == "2/2/2007",]
    png(filename = "Rplot1.png")
    hist(interest$Global_active_power,col="red",main="Global Active Power", xlab="Global Active Power (kilowatts)")
    dev.off()
}