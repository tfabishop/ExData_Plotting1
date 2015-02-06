
setwd("C:/Users/bishop/Dropbox/DataSc/EDA")

rm(list=ls())

dat<-read.table(file="household_power_consumption.txt",sep=";",na.strings="?",header=TRUE)

head(dat)

dat$Date<-as.Date(dat$Date,"%d/%m/%Y")

head(dat)

dat1<-dat[dat$Date=="2007-02-01"|dat$Date=="2007-02-02",]


#Plot 1

png('plot1.png',width=480,height=480)

hist(dat1$Global_active_power,main="Global Active Power",xlab="Global Active Power (kilowatts)",col="red")

dev.off()

