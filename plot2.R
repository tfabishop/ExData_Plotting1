
setwd("C:/Users/bishop/Dropbox/DataSc/EDA")

rm(list=ls())

dat<-read.table(file="household_power_consumption.txt",sep=";",na.strings="?",header=TRUE)

head(dat)

dat$Date<-as.Date(dat$Date,"%d/%m/%Y")

head(dat)

dat1<-dat[dat$Date=="2007-02-01"|dat$Date=="2007-02-02",]


#Plot 2

dat1$time <- paste(dat1$Date, dat1$Time)
dat1$times<-strptime(dat1$time, "%Y-%m-%d %H:%M:%S")

png('plot2.png',width=480,height=480)

plot(dat1$times,dat1$Global_active_power,type="l",xlab=" ",ylab="Global Active Power (kilowatts)")

dev.off()

