#### Course Project, Part Four ####

## Run the following lines of code to import data 
#  into R and process it
library(readxl)
credit<- read_excel("credit.xlsx")

#### Step 1.Examine the credit data set with the head() function.

head(credit)

#### Step 2. The billing amount BILL_AMT for each customer is a 
# percentage of a customer’s credit limit, LIMIT_BAL. 
# Create a column in the credit data set called BILL_PCT 
# that contains this percentage. Determine this percentage 
# by dividing BILL_AMT by LIMIT_BAL and multiplying by 100. 

credit$BILL_PCT <- 100*(credit$BILL_AMT/credit$LIMIT_BAL)

#### Step 3. Create a new data frame, OverLimit,that includes 
# only those customers whose BILL_PCT is 100% or greater.

Overlimit <- credit[which(credit$BILL_PCT >= 100),]

#### Step 4. In the future, we will need to know the number 
# of observations in OverLimit. Determine the number of observations 
# in the new data frame OverLimit. Assign this value to a 
# variable called n.

n <- nrow(Overlimit)

#### Step 5. Classify customers by how much they have exceeded  
# their LIMIT_BAL. Start by creating a column that will hold this 
# determination. Add a column to the OverLimit data frame 
# called SEVERE. All of its values should be set to NA. You 
# will change these values as you classify the LIMIT_BAL of 
# each customer. 

Overlimit$SEVERE <- NA


#### Step 6. When you use the head() function, you can see 
# the first few observations in a data frame. If you examine 
# the ID numbers, you can see that the ID numbers no longer 
# match up with the row numbers. When we created a sample of 
# customers before, we could refer to the customer in Row #1 as 
# having ID#1. This is no longer true. Now, if we want to refer 
# to a specific customer, we need to be careful when we reference 
# them. 
# Use the head() function to examine the OverLimit data frame. 
# Notice that the customer in Row #1 is the customer with ID#6, 
# and the customer in Row #6 is the customer with ID#130.

head(Overlimit)

#### Step 7. Create a variable OBS, short for "observation" and 
# assign the value of 1 to it.

OBS <- 1


#### Step 8. Next, we will use an if-else statement to classify 
# a customer as "severely over" their credit limit if their 
# BILL_PCT > 110. Use an if-else statement to classify the 
# first customer as either "YES" (severely over their limit) 
# or "NO" (not severely over). 
# Store the result in the first row of the SEVERE column of 
# the OverLimit data frame. 
# 
# (Hint: Refer to the first observation in the data frame using 
# the OBS variable you created in the previous step. This will make it 
# easier to refer to other customers in the data frame in the next step.)


if(Overlimit$BILL_PCT[OBS] > 110){
  Overlimit$SEVERE[OBS] <- "YES"
  } else {
  Overlimit$SEVERE[OBS] <-  "NO"
  }

#### Step 9. Use a for loop to repeat the classification process 
# you did in Step 8 for each customer in the OverLimit data frame. 
# You will need to create a vector that contains whole numbers 
# from 1 up to the number of rows in OverLimit. If there were 10 
# rows, we could create this vector as 1:10. However, you 
# determined that this vector has n rows in Step 4. Therefore, 
# you can represent this vector as 1:n.

for(OBS in 1:2123){
  
  if(Overlimit$BILL_PCT[OBS] > 110){
    Overlimit$SEVERE[OBS] <- "YES"
  } else {
    Overlimit$SEVERE[OBS] <-  "NO"
  }
}


#### Step 10. Use the subset() function to create a new data 
# frame called SeverelyOver that contains only those customers 
# who are severely over their limit. 
# To do this, use a comparison based on the SEVERE variable in 
# the OverLimit data frame.

SeverelyOver <- subset(Overlimit, SEVERE == "YES",
  select=ID:SEVERE)

#### Step 11. Using the nrow() function, determine the number of 
# customers in SeverelyOver. Assign the variable nSO to this result.

nSO <- nrow(SeverelyOver)

#### Step 12. The credit card company wants to randomly select
# a group of 100 customers to contact. Use the sample() 
# function to randomly select 100 customers from the data frame. 
# Call the resulting list of row numbers rowNumbers.

SeverelyOver$row_num <- NA
SeverelyOver$row_num <- seq.int(nrow(SeverelyOver))
rowNumbers <- sample(SeverelyOver$row_num, size = 100)

#### Step 13. Use rowNumbers to extract ID numbers from the 
# SeverelyOver$ID variable. Call this variable of ID numbers 
# letterIDs. These are the customers that the company
# will contact.

contact_customers <- SeverelyOver[which(SeverelyOver$row_num %in% rowNumbers),]
letterIDs <- contact_customers$ID

#### This is the end of Part Four of the course project. ####
#### Don't forget to submit your work! ####