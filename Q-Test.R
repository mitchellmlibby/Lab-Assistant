# Q-Test ------------------------------------------------------------------

Q_90_confidence_matrix <- matrix(nrow = 2, ncol = 8)
rownames(x = Q_90_confidence_matrix) <- c("number of observations" , "critical value")
Q_90_confidence_matrix[1,] <- c(3:10)
Q_90_confidence_matrix[2,]<- c(0.94,0.76,0.64,0.56,0.51,0.47,0.44,0.41)

#creates a 10 observation matrix for testing outliers at 90% confidence


Q_test <- function(N, suspect, neighbor, lowest_value, highest_value){
  Q <- (abs((suspect)-(neighbor))/(highest_value - lowest_value))
  print(Q)
  Q_c <- Q_90_confidence_matrix[2,N]
  print(Q_c)
  if (Q < Q_c)
    print("not outlier")
  else
    print("outlier present")
}
#calculates and assigns the Q of the data set, the Q critical at 90% confidence and asks is the suspect is an outlier?

Q_test(N = 5, suspect = 0.045 ,neighbor = -0.023,lowest_value = -0.012,highest_value = 1.455)
#runs Q_test



