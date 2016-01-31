#problem one
#gen sequence and find numbers divisible by three or five
nums <- c(1:999)
divide_three <- nums[nums %% 3 == 0]
divide_five <- nums[nums %% 5 == 0]
#smash together those vectors and find unique values
to_sum <- c(divide_three, divide_five)
final_add <- unique(to_sum)
#double check they're less than 1000 and sum
totals <- final_add[final_add < 1000]
sum(final_add)

#problem 2
#generate fibonacci sequence
len <- 1000000
fibo <- numeric(len)
fibo[1] <- 1
fibo[2] <- 2
for(i in 3:length(fibo)) {
  fibo[i] <- fibo[i-1] + fibo[i-2]
}
# find values less than 4 million
fibo <- fibo[fibo <= 4000000]
# find evens and sum
fibo_even <- fibo[fibo %% 2 == 0]
sum(fibo_even)

#problem 3
#find max prime factor
library(gmp)
max(factorize(600851475143))

#problem 4
#find max palindrome that is a product of two three digit numbers
library(stackoverflow)
numset <- c((100*100):(999*999))
min(numset)
max(numset)
#convert to chars and flip
charset <- as.character(numset)
charrev <- strReverse(charset)
#find palindromes
palindromes <- charset[charset == charrev]
palindromes <- as.numeric(palindromes)

