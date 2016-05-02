#Plot 3
with(hpcdata, {
        plot(Sub_metering_1 ~ Dateconv, type = "l",
        ylab = "Global Active Power (kilowatts)", xlab = "")
        lines(Sub_metering_2 ~ Dateconv, col = 'Red')
        lines(Sub_metering_3 ~ Dateconv, col = 'Blue')
})

legend("topright", col = c("black", "red", "blue"), lty = 1, lwd = 2, 
       legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))

##copy plot to PNG file
dev.copy(png, file = "plot3.png", width = 480, height = 480)
dev.off()
