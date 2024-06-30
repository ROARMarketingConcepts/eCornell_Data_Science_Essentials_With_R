####Course Project, Part One ####
#### Step 1. Create a vector containing any 10 values 
# you choose. Assign it to a variable called X.

X <- c(2,4,6,8,10,12,14,16,18,20)

#### Step 2. Compute the length of the vector X. 
# Assign this value to a variable called n.

n <- length(X)

#### Step 3. Compute the average of the values attached to the 
# variable X. Assign this value to a variable called meanX. 

meanX <- mean(X)

#### Step 4. Square all of the values in the vector X 
# (Raise each value to the power of 2). Assign the 
# result to a variable called Squares.

Squares <- X^2

#### Step 5. Look up the sum() function in the Help window  
# by searching sum or running the command ?sum. 
# Read its description, then use it to 
# add together all of the values in the vector Squares. 
# Assign the result to a variable called TotalSquares.

TotalSquares <- sum(Squares)

#### Step 6. Square meanX, then multiply it by n. Assign 
# the result to a variable called meanXSq.

meanXSq <- n*meanX^2

#### Step 7. Subtract meanXSq from TotalSquares, then 
# divide the result by n-1. Put one set of parentheses
# around TotalSquares minus meanXSq and another set
# around n-1. Assign the result to a variable called Result1.

Result1 <- (TotalSquares-meanXSq)/(n-1)


#### Step 8. Result1 will most likely be computed to a large 
# number of decimal places. Use the round() function to 
# round your result to five decimal places. Then assign this 
# result to the variable Result1. This overwrites your 
# originally computed value with a rounded version. To use 
# the round() function, you’ll need to look it up in the 
# Help documentation.

# Since you haven't seen the round() function, we've provided 
# code to get you started.  
# Fill in the command with the appropriate 'digits = ' argument.
Result1 <- round( Result1 , digits=5 ) 


#### Step 9. var() is a built-in R function that will automatically complete all 
# the computations you did in Steps 3-7. Compute var(X). Assign the resulting 
# value to a variable called Result2.

Result2 <- var(X)

#### Step 10. Round Result2 to five decimal places, following 
# the same steps you followed in Step 8.

Result2 <- round( Result2 , digits=5 ) 

#### Step 11. Use a comparison to determine whether Result1 
# is the same as Result2. If all went well above, the comparison 
# will result in TRUE.

Result1 == Result2

#### This is the end of Part One of the course project. ####
#### Don't forget to submit your work! ####