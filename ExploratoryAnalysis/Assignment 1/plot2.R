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

# Plot 2 line plot of Global Active Power by Day of Week
png(file="plot2.png",width=480,height=480)
plot(t2$Global_active_power~t2$DateTime,type="l",
     ylab="Global Active Power (kilowatts)",xlab="")
dev.off()

