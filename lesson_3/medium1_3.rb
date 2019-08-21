def factors(number)
  divisor = number
  factors = []
  while divisor > 0 do
    factors << number / divisor if number % divisor == 0
    divisor -= 1
  end
  factors
end

p factors(0)
p factors(20)
p factors(50)

 # Bonus 1: the purpose of that line is to figure out if its an integer factor
 # Bonus 2: the purpose is to return the factors array to whoever called
