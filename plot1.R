powerFile <- "household_power_consumption.txt"  ##  name for text data
tbl <- read.table(powerFile, header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".") ## read the data in table
subSettbl <- tbl[tbl$Date %in% c("1/2/2007","2/2/2007") ,]


globalActivePower <- as.numeric(subSettbl$Global_active_power)
png("plot1.png", width=480, height=480)
hist(globalActivePower, col="red", main="Global Active Power", xlab="Global Active Power (kilowatts)")
dev.off() 