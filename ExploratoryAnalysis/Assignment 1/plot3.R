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

#drop the large table
rm(t1)

# add date/time variable for plotting using the lubridate package
library(lubridate)
t2$DateTime<-dmy_hms(paste(t2$Date,t2$Time))

# Plot 3 line plots of Sub_metering variables
png(file="plot3.png",width=480,height=480)
plot(t2$Sub_metering_1~t2$DateTime,type="l",col="black",
     ylab="Energy sub metering",xlab="")
points(t2$Sub_metering_2~t2$DateTime,type="l",col="red")
points(t2$Sub_metering_3~t2$DateTime,type="l",col="blue")
legend("topright",lty=1,col=c("black","red","blue"),
       legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"))
dev.off()

