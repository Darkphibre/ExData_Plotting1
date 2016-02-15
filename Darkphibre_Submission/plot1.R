source("GetFilteredData.R")
#NOTE! This must run in the same directory as the ZIP file.
data.filtered = GetFilteredData()

png(filename = "plot1.png", width  = 480, height = 480)

hist(data.filtered$Global_active_power, 
     main   = "Global Active Power", 
     col    = "Red",
     xlab   = "Global Active Power (kilowatts)")

dev.off()