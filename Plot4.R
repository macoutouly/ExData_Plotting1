Plot4<-function(){
    file<-read.table("household_power_consumption.txt",sep=";",header=TRUE,col.names=c("Date","Time","Global_active_power","Global_reactive_power","Voltage","Global_intensity","Sub_metering_1","Sub_metering_2","Sub_metering_3"),colClasses=c("character","character",rep("numeric",7)),na.strings="?")
    interest <-file[file$Date == "1/2/2007" | file$Date == "2/2/2007",]
    attach(interest)
    png(filename = "Rplot4.png")
    DayData<-strptime(paste(Date,Time),"%d/%m/%Y %H:%M:%S")
    par(mfrow=c(2,2))
    plot(DayData,Global_active_power,type = "l",xlab="",ylab="Global Active Power (kilowatts)")
    plot(DayData,Voltage,type = "l",xlab="datetime",ylab="Voltage")
    plot(DayData,Sub_metering_1,type = "l",xlab="",ylab="Energy sub metering",ylim=c(0,40))
    par(new=T)
    plot(DayData,Sub_metering_2,type = "l",col="red",xlab="",ylab="",ylim=c(0,40))
    par(new=T)
    plot(DayData,Sub_metering_3,type = "l",col="blue",xlab="",ylab="",ylim=c(0,40))
    legend("topright",legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),lwd=1,col=c("black","red","blue"))
    par(new=F)
    plot(DayData,Global_reactive_power,type = "l",xlab="datetime",ylab="Global_reactive_power")
    dev.off()
}