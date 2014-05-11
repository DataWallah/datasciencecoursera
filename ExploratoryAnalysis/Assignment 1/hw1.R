#
# Assignment 1 for Exploratory Data Analysis class
#

# Make sure data is in current directory
# Data comes from here: https://archive.ics.uci.edu/ml/datasets/Individual+household+electric+power+consumption
#
t1<-read.table("household_power_consumption.txt",header=TRUE,sep=";",
               na.strings="?",stringsAsFactors=FALSE)

# select the required dates

t2<-subset(t1,t1$Date %in% c("1/2/2007","2/2/2007"))

#drop the large table and write the smaller table (for archival purposes)
rm(t1)
write.csv(t2,"hpc_small.csv")

# add date/time variable for plotting using the lubridate package
library(lubridate)
t2$DateTime<-dmy_hms(paste(t2$Date,t2$Time))

# Plot 1 histogram of Global Active Power
png(file="plot1.png",width=480,height=480)
hist(t2$Global_active_power,col="red",main="Global Active Power",
     xlab="Global Active Power (kilowatts)")
dev.off()

# Plot 2 line plot of Global Active Power by Day of Week
png(file="plot2.png",width=480,height=480)
plot(t2$Global_active_power~t2$DateTime,type="l",
     ylab="Global Active Power (kilowatts)",xlab="")
dev.off()

# Plot 3 line plots of Sub_metering variables
png(file="plot3.png",width=480,height=480)
plot(t2$Sub_metering_1~t2$DateTime,type="l",col="black",
     ylab="Energy sub metering",xlab="")
points(t2$Sub_metering_2~t2$DateTime,type="l",col="red")
points(t2$Sub_metering_3~t2$DateTime,type="l",col="blue")
legend("topright",lty=1,col=c("black","red","blue"),
       legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"))
dev.off()

# Plot 4 two existing plots and 2 new plots (voltage and reactive power)
png(file="plot4.png",width=480,height=480)
par(mfrow=c(2,2))
plot(t2$Global_active_power~t2$DateTime,type="l",
     ylab="Global Active Power (kilowatts)",xlab="")

plot(t2$Voltage~t2$DateTime,type="l",ylab="Voltage",xlab="datetime")

plot(t2$Sub_metering_1~t2$DateTime,type="l",col="black",
     ylab="Energy sub metering",xlab="")
points(t2$Sub_metering_2~t2$DateTime,type="l",col="red")
points(t2$Sub_metering_3~t2$DateTime,type="l",col="blue")
legend("topright",lty=1,col=c("black","red","blue"),bty="n",
       legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"))

with(t2,plot(Global_reactive_power~DateTime,type="l",xlab="datetime"))
dev.off()
