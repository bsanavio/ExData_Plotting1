###Read data
table <- read.table("household_power_consumption.txt", header=TRUE, sep=";", na.strings = "?", colClasses = c('character','character','numeric','numeric','numeric','numeric','numeric','numeric','numeric'))

### Format date 
table$Date <- as.Date(table$Date, "%d/%m/%Y")

### Subset data (2007/02/01 to 2007/02/02)
table <- subset(table,Date >= as.Date("2007-2-1") & Date <= as.Date("2007-2-2"))

### Remove incomplete observation
table <- table[complete.cases(table),]

### Combine Date and Time column; Name the vector
dateTime <- paste(table$Date, table$Time)
dateTime <- setNames(dateTime, "DateTime")

### Remove Date and Time column from our table
table <- table[ ,!(names(table) %in% c("Date","Time"))]
### Add DateTime column to our table
table <- cbind(dateTime, table)
### Format dateTime Column appropriately
table$dateTime <- as.POSIXct(dateTime)

