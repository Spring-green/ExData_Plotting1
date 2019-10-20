# Project1- Explanatory data
# Electric power consumption 

#Readig data into R
household<- read.table ("C:/Users/Betty/Documents/household_power_consumption.txt",header=TRUE, sep=";")


# subsettig for 2007 
household_2017<- subset(household, household$Date=="1/2/2007" | household$Date=="2/2/2007")


# Creating graph1
png(filename = "plot1.png", width = 480, height = 480, units="px")
hist(as.numeric(as.character(household_2017$Global_active_power)), 
     main="Plot1-Global Active Power",xlab="Global Active Power(Kilowatts)",col="red")
dev.off()

