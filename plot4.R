source('load_data.R')

constructPlot4 <- function() {
    electric.data <- loadData()
    png(filename = 'plot4.png', width = 480, height = 480, bg = "transparent")
    par(mfrow = c(2, 2))
    plot(x = electric.data$Datetime, y = electric.data$Global_active_power, type = "l",
         xlab = "", ylab = "Global Active Power")
    plot(x = electric.data$Datetime, y = electric.data$Voltage, type = "l",
         xlab = "datetime", ylab = "Voltage")
    plot(x = electric.data$Datetime, y = electric.data$Sub_metering_1, type = "l",
         xlab = "", ylab = "Energy sub metering")
    lines(x = electric.data$Datetime, y = electric.data$Sub_metering_2, col = "red")
    lines(x = electric.data$Datetime, y = electric.data$Sub_metering_3, col = "blue")
    legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), 
           lty = c(1, 1, 1), col = c("black", "red", "blue"), bty = "n")
    plot(x = electric.data$Datetime, y = electric.data$Global_reactive_power, type = "l",
         xlab = "datetime", ylab = "Global_reactive_power")
    dev.off()
    print('[+] Plot has been saved to file: ./plot4.png')
}