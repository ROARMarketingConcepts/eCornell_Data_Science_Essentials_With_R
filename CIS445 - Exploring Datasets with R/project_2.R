####Course Project, Part Two ####
#### Step 1. First, import the GOOGL.csv data set. Name the 
# imported data set GOOGLE. You can use the same directions 
# to import a .csv file that you used to import a .txt file. 
#
# When you use the import feature in RStudio, it prints the code 
# in the Console pane. Copy that code into the project script. 

GOOGL <- read.csv("~/workspace/GOOGL.csv", comment.char="#", stringsAsFactors=FALSE)


#### Step 2. Double-click on the GOOGLE data frame in the 
# Environment tab. If you examine the first two rows, 
# you will see that there are two negative values. These 
# are incorrect, and you’ll have to fix them. Replace the 
# value for the cell in the first row with 52.082081.

GOOGL$High[1] <- 52.082081

#### Step 3. Replace the incorrect value in the second 
# row with its correct value of 50.300301.

GOOGL$Low[2] <- 50.300301

#### Step 4. Now that you've corrected the data frame, add a 
# new variable column to the GOOGLE data frame that contains 
# the average of the High and Low Values for each day. Assign 
# the name AVE to this column of averages.

GOOGL$AVE <- (GOOGL$High+GOOGL$Low)/2

#### Step 5. Remember, each column in a data frame can only 
# hold one type of data. However, different columns can hold 
# different data types. For instance, the first column of the GOOGLE 
# data frame holds character/string data, while the rest hold 
# some type of numerical values. You will now add a new column 
# to the GOOGLE data frame that holds only logical values 
# (TRUE/FALSE). 
# Determine on which days the Closing 
# price was greater than the average of the High and Low prices 
# for that day. Do this by creating a comparison to determine 
# if the values in the Close variable are greater than the values 
# in the AVE variable. Assign each of these logical TRUE/FALSE 
# values to a new column in the GOOGLE data frame called AboveAVE.

GOOGL$AboveAVE <- GOOGL$Close > GOOGL$AVE

#### Step 6. An interesting fact about logical data is that 
# R will treat a TRUE as the number 1 and a FALSE as a 0. 
# Therefore, if we wanted to count how many days the Close 
# values are higher than the AVE values, we could use the sum 
# function on the AboveAVE column. If we wanted the fraction 
# of the days that Close was greater than AVE, we could use 
# the mean function on the AboveAVE column. 
# Determine the fraction of the days that the Close values 
# are greater than the AVE values. Assign this value to a 
# variable called fracAbove.

fracAbove <- mean(GOOGL$AboveAVE)


##### Step 7. Use the fracAbove variable to determine the 
# percentage of the days on which the Close values are above 
# the AVE values. Assign this value to a variable called percAbove.

percAbove = 100*fracAbove

#### Step 8. The percentage of the Close values that are 
# greater than AVE values has more decimal places than we 
# care about. Round this to just one decimal place using 
# the round() function.
## Hint: Once you've looked up the round() function, use this code: 
round(percAbove, digits=1) 
# Then, look at the console to to see the result.


#### Step 9. When the variable AboveAVE is TRUE, the Closing 
# Daily price is greater than the average of the High and
# Low daily price. Create a new data frame that contains just
# the observations where the Closing daily price 
# is greater than the average of the High and Low daily prices. 
# Call this data frame GOOGLEAboveAVE.

GOOGLEAboveAVE <- GOOGL[GOOGL$AboveAVE == TRUE,]

#### Step 10. You want to save the data frame GOOGLEAboveAVE 
# to your computer. To do this, you will need to know where 
# it is being saved. Determine this location.

getwd()

#### Step 11. Save the GOOGLEAboveAVE data frame as a file 
# named "GOOGLEAboveAVE.csv". By default, it will save the file 
# using spaces to separate data values and with row names. 
# Add the argument needed to save this file with commas separating 
# its values and the argument that will tell R not to include 
# the row names. 

write.table(GOOGLEAboveAVE, file = "GOOGLEAboveAVE.csv", sep = ",", row.names = FALSE)


#### This is the end of Part Two of the course project. ####
#### Don't forget to submit your work! ####