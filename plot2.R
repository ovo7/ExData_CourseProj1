##dataset
hpcds <- read.csv("household_power_consumption.txt", header = T, sep = ';', na.strings = "?", nrows = 2075259,
                  check.names = F, stringsAsFactors = F, comment.char = "", quote = '\"')

hpcds$Date <- as.Date(hpcds$Date, format = "%d/%m/%Y")

#subsetting data
hpcdata <- subset(hpcds, subset = (Date >= "2007-02-01" & Date <= "2007-02-02"))
rm(hpcds)

##converting date
dateconv <- paste(as.Date(hpcdata$Date), hpcdata$Time)
hpcdata$Dateconv <- as.POSIXct(dateconv)

##generating plot 2
plot(hpcdata$Global_active_power ~ hpcdata$Dateconv, type = "l", ylab = "Global Active Power (kilowatts)", xlab = "")

##copy plot to PNG file
dev.copy(png, file = "plot2.png", width = 480, height = 480)
dev.off()
