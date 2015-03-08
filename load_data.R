require('data.table')

loadData <- function() {
    if (!file.exists('household_power_consumption.txt')) {
        stop("Please, locate your current working directory in the same folder as the 
             household_power_consumption.txt file.")
    }
    print("[-] Reading data from household_power_consumption.txt file...")
    electric.data <- fread("grep '^Date\\|^[1-2]/2/2007' household_power_consumption.txt", 
                           na.strings = '?')
    print("[+] Done.")
    electric.data <- cbind(Datetime = paste(electric.data$Date, electric.data$Time), 
                           electric.data)
    electric.data$Datetime <- as.POSIXct(electric.data$Datetime, format = '%d/%m/%Y %H:%M:%S')
    electric.data
}