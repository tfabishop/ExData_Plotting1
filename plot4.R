
setwd("C:/Users/bishop/Dropbox/DataSc/EDA")

rm(list=ls())

dat<-read.table(file="household_power_consumption.txt",sep=";",na.strings="?",header=TRUE)

head(dat)

dat$Date<-as.Date(dat$Date,"%d/%m/%Y")

head(dat)

dat1<-dat[dat$Date=="2007-02-01"|dat$Date=="2007-02-02",]


dat1$time <- paste(dat1$Date, dat1$Time)
dat1$times<-strptime(dat1$time, "%Y-%m-%d %H:%M:%S")


#Plot 4

png('plot4.png',width=480,height=480)
par(mfrow=c(2,2))
plot(dat1$times,dat1$Global_active_power,type="l",xlab=" ",ylab="Global Active Power")
plot(dat1$times,dat1$Voltage,type="l",xlab="datetime",ylab="Voltage")
plot(dat1$times,dat1$Sub_metering_1,type="n",xlab=" ",ylab="Energy sub metering")
lines(dat1$times,dat1$Sub_metering_1,type="l")
lines(dat1$times,dat1$Sub_metering_2,type="l",col="red")
lines(dat1$times,dat1$Sub_metering_3,type="l",col="blue")
legend("topright",bty = "n",lty=c(1,1),col=c("black","red","blue"),legend=c("Sub_metering_1","Sub_metering_3","Sub_metering_3"))
plot(dat1$times,dat1$Global_reactive_power,type="l",xlab="datetime",ylab="Global_Reactive_Power")

dev.off()


