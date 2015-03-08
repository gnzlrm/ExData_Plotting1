source('load_data.R')

constructPlot1 <- function() {
    electric.data <- loadData()
    png(filename = 'plot1.png', width = 480, height = 480, bg = 'transparent')
    hist(electric.data$Global_active_power, main = "Global Active Power", 
         xlab = "Global Active Power (kilowatts)", col = "red", axes = F)
    axis(2, at = c(0, 200, 400, 600, 800, 1000, 1200))
    axis(1, at = c(0, 2, 4, 6))
    dev.off()
    print('[+] Plot has been saved to file: ./plot1.png')
}