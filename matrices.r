# Construct a matrix with 3 rows containing the numbers 1 up to 9, filled row-wise.

matrix(1:9, byrow = TRUE, nrow = 3)



# Use c(new_hope, empire_strikes, return_jedi) to combine the three vectors into one vector. Call this vector box_office.
# Construct a matrix with 3 rows, where each row represents a movie. Use the matrix() function to do this. The first argument is the vector box_office, containing all box office figures. Next, you'll have to specify nrow = 3 and byrow = TRUE. Name the resulting matrix star_wars_matrix.

# Box office Star Wars (in millions!)
new_hope <- c(460.998, 314.4)
empire_strikes <- c(290.475, 247.900)
return_jedi <- c(309.306, 165.8)

# Create box_office
box_office <- c(new_hope, empire_strikes, return_jedi)

# Construct star_wars_matrix
star_wars_matrix <- matrix(box_office, nrow = 3, byrow = TRUE)



# Use colnames() to name the columns of star_wars_matrix with the region vector.
# Use rownames() to name the rows of star_wars_matrix with the titles vector.
# Print out star_wars_matrix to see the result of your work.

# Box office Star Wars (in millions!)
new_hope <- c(460.998, 314.4)
empire_strikes <- c(290.475, 247.900)
return_jedi <- c(309.306, 165.8)

# Construct matrix
star_wars_matrix <- matrix(c(new_hope, empire_strikes, return_jedi), nrow = 3, byrow = TRUE)

# Vectors region and titles, used for naming
region <- c("US", "non-US")
titles <- c("A New Hope", "The Empire Strikes Back", "Return of the Jedi")

# Name the columns with region
colnames(star_wars_matrix) <- region

# Name the rows with titles
rownames(star_wars_matrix) <- titles

# Print out star_wars_matrix
star_wars_matrix



# Calculate the worldwide box office figures for the three movies and put these in the vector named worldwide_vector.

# Construct star_wars_matrix
box_office <- c(460.998, 314.4, 290.475, 247.900, 309.306, 165.8)
region <- c("US", "non-US")
titles <- c("A New Hope", 
                 "The Empire Strikes Back", 
                 "Return of the Jedi")
               
star_wars_matrix <- matrix(box_office, 
                      nrow = 3, byrow = TRUE,
                      dimnames = list(titles, region))

# Calculate worldwide box office figures
worldwide_vector <- rowSums(star_wars_matrix)



# Add worldwide_vector as a new column to the star_wars_matrix and assign the result to all_wars_matrix. Use the cbind() function.

# Construct star_wars_matrix
box_office <- c(460.998, 314.4, 290.475, 247.900, 309.306, 165.8)
region <- c("US", "non-US")
titles <- c("A New Hope", 
            "The Empire Strikes Back", 
            "Return of the Jedi")
               
star_wars_matrix <- matrix(box_office, 
                      nrow = 3, byrow = TRUE,
                      dimnames = list(titles, region))

# The worldwide box office figures
worldwide_vector <- rowSums(star_wars_matrix)

# Bind the new variable worldwide_vector as a column to star_wars_matrix
all_wars_matrix <- cbind(star_wars_matrix, worldwide_vector)



# Use rbind() to paste together star_wars_matrix and star_wars_matrix2, in this order. Assign the resulting matrix to all_wars_matrix.

# star_wars_matrix and star_wars_matrix2 are available in your workspace
star_wars_matrix  
star_wars_matrix2 

# Combine both Star Wars trilogies in one matrix
all_wars_matrix <- rbind(star_wars_matrix, star_wars_matrix2)



# Calculate the total revenue for the US and the non-US region and assign total_revenue_vector. You can use the colSums() function.
# Print out total_revenue_vector to have a look at the results.

# all_wars_matrix is available in your workspace
all_wars_matrix

# Total revenue for US and non-US
total_revenue_vector <- colSums(all_wars_matrix)
  
# Print out total_revenue_vector
total_revenue_vector



# Select the non-US revenue for all movies (the entire second column of all_wars_matrix), store the result as non_us_all.
# Use mean() on non_us_all to calculate the average non-US revenue for all movies. Simply print out the result.
# This time, select the non-US revenue for the first two movies in all_wars_matrix. Store the result as non_us_some.
# Use mean() again to print out the average of the values in non_us_some.

# all_wars_matrix is available in your workspace
all_wars_matrix

# Select the non-US revenue for all movies
non_us_all <- all_wars_matrix[,2]
  
# Average non-US revenue
mean(non_us_all)
  
# Select the non-US revenue for first two movies
non_us_some <- all_wars_matrix[1:2,2]
  
# Average non-US revenue for first two movies
mean(non_us_some)



# Divide all_wars_matrix by 5, giving you the number of visitors in millions. Assign the resulting matrix to visitors.
# Print out visitors so you can have a look.

# all_wars_matrix is available in your workspace
all_wars_matrix

# Estimate the visitors
visitors <- all_wars_matrix / 5
  
# Print the estimate to the console
visitors



# Divide all_wars_matrix by ticket_prices_matrix to get the estimated number of US and non-US visitors for the six movies. Assign the result to visitors.
# From the visitors matrix, select the entire first column, representing the number of visitors in the US. Store this selection as us_visitors.
# Calculate the average number of US visitors; print out the result.

# all_wars_matrix and ticket_prices_matrix are available in your workspace
all_wars_matrix
ticket_prices_matrix

# Estimated number of visitors
visitors <- all_wars_matrix / ticket_prices_matrix

# US visitors
us_visitors <- visitors[,1]

# Average number of US visitors
mean(us_visitors)