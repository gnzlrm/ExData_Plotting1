source('load_data.R')

constructPlot2 <- function() {
    electric.data <- loadData()
    png(filename = "plot2.png", width = 480, height = 480, bg = "transparent")
    plot(x = electric.data$Datetime, y = electric.data$Global_active_power, type = "l",
         xlab = "", ylab = "Global Active Power (kilowatts)")
    dev.off()
    print('[+] Plot has been saved to file: ./plot2.png')
}