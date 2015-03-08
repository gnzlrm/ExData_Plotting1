source('load_data.R')

constructPlot3 <- function() {
    electric.data <- loadData()
    png(filename = "plot3.png", width = 480, height = 480, bg = "transparent")
    plot(x = electric.data$Datetime, y = electric.data$Sub_metering_1, type = "l",
         xlab = "", ylab = "Energy sub metering")
    lines(x = electric.data$Datetime, y = electric.data$Sub_metering_2, col = "red")
    lines(x = electric.data$Datetime, y = electric.data$Sub_metering_3, col = "blue")
    legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), 
           lty = c(1, 1, 1), col = c("black", "red", "blue"))
    dev.off()
    print('[+] Plot has been saved to file: ./plot3.png')
}