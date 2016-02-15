library(lubridate)
source("GetFilteredData.R")
#NOTE! This must run in the same directory as the ZIP file.
data.filtered = GetFilteredData()

png(filename = "plot3.png", width  = 480, height = 480)

datetime = dmy(data.filtered$Date) + hms(data.filtered$Time)
plot(xaxis, data.filtered$Sub_metering_1, 
     main   = "", 
     xlab   = "",
     ylab   = "Energy sub metering",
     type="l")
lines(xaxis, data.filtered$Sub_metering_2, col="red")
lines(xaxis, data.filtered$Sub_metering_3, col="blue")
legend("topright", 
       col=c("black","orange","blue"), 
       lty=1,
       legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3")
      )

dev.off()