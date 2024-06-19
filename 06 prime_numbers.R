is_prime <- function(n) {
  if (n <= 1) {
    return(FALSE)
  }
  for (i in 2:sqrt(n)) {
    if (n %% i == 0) {
      return(FALSE)
    }
  }
  return(TRUE)
}

# Example usage
n <- 29
if (is_prime(n)) {
  cat(n, "is a prime number\n")
} else {
  cat(n, "is not a prime number\n")
}
