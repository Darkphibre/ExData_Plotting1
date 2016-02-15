GetFilteredData <- function()
{
        #Read the data from the zip file, then filter it.
        data.raw <- read.table(
                unz("exdata-data-household_power_consumption.zip", "household_power_consumption.txt"),
                header=T, sep = ";", na.strings = "?")
        #Dates are store DMY
        data.raw[data.raw$Date=="1/2/2007" | data.raw$Date=="2/2/2007",]
}