####Course Project, Part Three ####
#### Step 1. Import the three data sets of stock prices: T.csv, VZ.csv,
# and TMUS.csv. The file name for each stock’s data set is its ticker symbol. 
# T.csv is the data for AT&T. Name this data frame ATT. 
# VZ.csv is the data for Verizon. Name this data frame VERIZON. 
# TMUS.csv is the data for T-Mobile. Name this data frame TMOBILE.
#
# When you use the import feature in RStudio, it prints the code 
# in the Console pane. Copy that code into the project script. 

ATT <- read.csv("~/workspace/T.csv", stringsAsFactors=FALSE)
VERIZON <- read.csv("~/workspace/VZ.csv", stringsAsFactors=FALSE)
TMOBILE <- read.csv("~/workspace/TMUS.csv", stringsAsFactors=FALSE)


#### Step 2. Create a scatterplot to compare the Opening stock 
# prices of AT&T and VERIZON. Put ATT on the x-axis and VERIZON 
# on the y-axis.

plot(ATT$Open,VERIZON$Open)


#### Step 3. Modify your code from the previous 
# step to create a new scatterplot of Opening stock prices. 
# Add arguments that label the x-axis AT&T and the y-axis VERIZON.

plot(ATT$Open,VERIZON$Open, xlab="AT&T",ylab="VERIZON")

#### Step 4. Modify your code from the previous
# step to create a new scatterplot of Opening stock prices.  
# Add an argument to title your plot "Opening Stock Prices."

plot(ATT$Open,VERIZON$Open, xlab="AT&T",ylab="VERIZON",
    main="Opening Stock Prices")

#### Step 5. Create another scatterplot to compare the Closing 
# stock prices of ATT and VERIZON. Put AT&T on the x-axis and 
# VERIZON on the y-axis. Add labels as in the previous 
# scatterplot, but with titles that match these data. 

plot(ATT$Close,VERIZON$Close, xlab="AT&T",ylab="VERIZON",
     main="Closing Stock Prices")


#### Step 6. Modify the code you used in the previous step to 
# create a scatterplot of Closing stock prices that plots the 
# points as squares. 
# (Remember, you can search points in the Help Menu to see a 
# list of the point types you can use.)

plot(ATT$Close,VERIZON$Close, xlab="AT&T",ylab="VERIZON",
     main="Closing Stock Prices",pch=0)

#### Step 7. Take the plots from Step 4 and Step 6 and display 
# them side by side.

par(mfrow = c(1, 2))
plot(ATT$Open,VERIZON$Open, xlab="AT&T",ylab="VERIZON",
     main="Opening Stock Prices")
plot(ATT$Close,VERIZON$Close, xlab="AT&T",ylab="VERIZON",
     main="Closing Stock Prices",pch=0)

#### Step 8. Export this graph as a JPEG file named "Scatterplots"



#### Step 9. Use the Broom symbol next to the Export menu to 
# clear the previous graphs. If you continue to make graphs without 
# making any changes, you will continue to plot two graphs 
# side by side. Change the par() setting back to plotting one 
# graph at a time with the following code: 
par(mfrow=c(1,1))


#### Step 10. Convert the Date variables into a format that you 
# can use in your plots. Convert the Date variable for each data frame.

ATT$Date <- as.Date(ATT$Date,'%Y-%m-%d')
VERIZON$Date <- as.Date(VERIZON$Date,'%Y-%m-%d')
TMOBILE$Date <- as.Date(TMOBILE$Date,'%Y-%m-%d')

#### Step 11. Create a scatterplot of the Date against the 
# Opening stock price for ATT. Place the date on the x-axis 
# and the opening stock price on the y-axis. 

plot(ATT$Date,ATT$Open)

#### Step 12. Modify the code from the previous step to make a 
# line plot of Date vs Opening stock price for ATT.

plot(ATT$Date,ATT$Open, type="l")

#### Step 13. Modify the code from the previous step to  
# add proper labels to the line plot. Make the 
# horizontal label Date, the vertical label Price, and 
# add the title "Opening Stock Prices".

plot(ATT$Date,ATT$Open, type="l",xlab = "Date",ylab = "Price",
     main = "Opening Stock Prices")

#### Step 14. Modify the limit of the y-axis in your 
# plot by adding a new argument to the your code: ylim = c(0,120). 

plot(ATT$Date,ATT$Open, type="l",xlab = "Date",ylab = "Price",
     main = "Opening Stock Prices", ylim=c(0,120))

#### Step 15. Use the lines() function to add a line to this 
# plot for the TMOBILE Opening Prices. Color the line blue and 
# use the lty argument to make it a dashed line.

lines(TMOBILE$Date, TMOBILE$Open, lty = 2, col="blue")

#### Step 16. Add a third line to the plot that represents the 
# Opening Prices for VERIZON. The line should be red and dotted.

lines(VERIZON$Date, VERIZON$Open, lty = 3, col="red")

#### Step 17. Create a legend for this plot. Instead of using 
# the locator() function to determine the location of the legend, 
# the first two values in the legend function can be replaced 
# with a single keyword: "bottomright", "bottomleft", "topleft", 
# and "topright". Place the legend in the top left corner.

legend("topleft",
       legend =  c("ATT", "TMOBILE", "VERIZON"), 
       col = c("black", "blue", "red"), 
       lty = c(1, 2, 3))



#### Step 18. Export this graph as a JPEG named "TimeSeries".



#### This is the end of Part Three of the course project. ####
#### Don't forget to submit your work! ####