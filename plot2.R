# Project1- Explanatory data
# Electric power consumption 

#Readig data into R
household<- read.table ("C:/Users/Betty/Documents/household_power_consumption.txt",header=TRUE, sep=";")

# subsettig for 2007 
household_2017<- subset(household, household$Date=="1/2/2007" | household$Date=="2/2/2007")

#converting the Date and Time variables to Date/Time classes in R using the strptime() and as.Date() functions
household_2017$Date <- as.Date(household_2017$Date, format="%d/%m/%Y")
household_2017$Time <- strptime(household_2017$Time, format="%H:%M:%S")

# Date for Obs 66637 to 68076 (row 1 to 1440) = 2007-02-01
# Date for obs 68077 to 69516 (1441 to 2880) = 2007-02-02
household_2017[1:1440,"Time"] <- format(household_2017[1:1440,"Time"],"2007-02-01  %H:%M:%S")
household_2017[1441:2880,"Time"] <- format(household_2017[1441:2880,"Time"],"2007-02-02  %H:%M:%S")

# Creating graph2
png(filename = "plot2.png", width = 480, height = 480, units="px")
plot(household_2017$Time, as.numeric(as.character(household_2017$Global_active_power)), 
     type ="l",xlab="", ylab="Global Active Power (Kilowatts)")
dev.off()

