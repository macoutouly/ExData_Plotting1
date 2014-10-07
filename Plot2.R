Plot2<-function(){
    file<-read.table("household_power_consumption.txt",sep=";",header=TRUE,col.names=c("Date","Time","Global_active_power","Global_reactive_power","Voltage","Global_intensity","Sub_metering_1","Sub_metering_2","Sub_metering_3"),colClasses=c("character","character",rep("numeric",7)),na.strings="?")
    interest <-file[file$Date == "1/2/2007" | file$Date == "2/2/2007",]
    png(filename = "Rplot2.png")
    DayData<-strptime(paste(interest$Date,interest$Time),"%d/%m/%Y %H:%M:%S")
    plot(DayData,interest$Global_active_power,type = "l",xlab="",ylab="Global Active Power (kilowatts)")
    dev.off()
}