###Create PLOT2
plot(table$Global_active_power~table$dateTime, type="l", ylab="Global Active Power (kilowatts)", xlab="")
###Save PLOT2.png and close device
dev.copy(png,"plot2.png", width=480, height=480)
dev.off()