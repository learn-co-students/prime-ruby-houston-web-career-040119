# Add  code here!
def prime?(number)
  if number <= 1
    is_it_prime = FALSE #1, 0, and any negitive number are not prime numbers
  else
    i = 1   #start a counter 
    is_it_prime = TRUE #true until proven wrong
    until i == number
      if (number%i == 0) & (i != 1) #is the number divisible by the counter?
        is_it_prime = FALSE  #... if so then it's not a prime number 
        break     #then get out of the loop, for big numbers who cares how long we run?
      end
      i+=1  #increment the counter 
    end
  end
  is_it_prime
end 