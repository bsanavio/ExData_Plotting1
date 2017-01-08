###Create PLOT1
hist(table$Global_active_power, main="Global Active Power", xlab = "Global Active Power (kilowatts)", col="red")
###Save PLOT1.png and close device
dev.copy(png,"plot1.png", width=480, height=480)
dev.off()
