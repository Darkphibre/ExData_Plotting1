source("GetFilteredData.R")
#NOTE! This must run in the same directory as the ZIP file.
data.filtered = GetFilteredData()

png(filename = "plot4.png")

par(mfrow = c(2,2))
datetime = dmy(data.filtered$Date) + hms(data.filtered$Time)

#Plot1
plot(datetime, data.filtered$Global_active_power, 
     main   = "", 
     xlab   = "",
     ylab   = "Global Active Power",
     type="l")

#Plot2
plot(datetime, data.filtered$Voltage, 
     main   = "", 
     ylab   = "Voltage",
     type="l")


#Plot3
plot(datetime, data.filtered$Sub_metering_1, 
     main   = "", 
     xlab   = "",
     ylab   = "Global Active Power (kilowatts)",
     type="l")
lines(datetime, data.filtered$Sub_metering_2, col="red")
lines(datetime, data.filtered$Sub_metering_3, col="blue")
legend("topright", 
       col=c("black","orange","blue"), 
       lwd=2,
       legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3")
      )

#Plot4
plot(datetime, data.filtered$Global_reactive_power, 
     main   = "", 
     ylab   = "Global_reactive_power",
     type="l")

dev.off()