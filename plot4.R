##plot 4
par(mfrow = c(2, 2), mar = c(4, 4, 2, 1), oma = c(0, 0, 2, 0))
with(hpcdata, {
        plot(Global_active_power ~ Dateconv, type = "l", ylab = "Global Active Power", xlab = "")
        plot(Voltage ~ Dateconv, type = "l", ylab = "Voltage", xlab = "datetime")
        plot(Sub_metering_1 ~ Dateconv, type = "l", ylab = "Energy sub metering", xlab = "")
        lines(Sub_metering_2 ~ Dateconv, col = 'Red')
        lines(Sub_metering_3 ~ Dateconv, col = 'Blue')
        legend("topright", col = c("black", "red", "blue"), lty = 1, lwd = 2, bty = "n", 
               legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))
        plot(Global_reactive_power ~ Dateconv, type ="l", ylab = "Global_reactive_power", xlab = "datetime")
})

##copy plot to PNG file
dev.copy(png, file = "plot4.png", width = 480, height = 480)
dev.off()
