# The following code will result in an error, why and how to solve it
puts "the value of 40 + 2 is " + (40 + 2)

=begin
  You are trying to add the integer 42 to the string, so it's spitting out
  an error. Two ways we can fix this is converting the integer to a string
  and using string iterporlation.
=end

# Fix 1:
puts "the value of 40 + 2 is " + (40 + 2).to_s

# Fix 2:
puts "The value of 40 + 2 is #{40 + 2}"
