library(lubridate)
source("GetFilteredData.R")
#NOTE! This must run in the same directory as the ZIP file.
data.filtered = GetFilteredData()

png(filename = "plot2.png", width  = 480,  height = 480)

datetime = dmy(data.filtered$Date) + hms(data.filtered$Time)
plot(datetime, data.filtered$Global_active_power, 
     main   = "", 
     xlab   = "",
     ylab   = "Global Active Power (kilowatts)",
     type="l")

dev.off()