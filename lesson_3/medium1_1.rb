# Write a one line program to cretate the following output 10 times, indenting
# each time

str = "The Flintstones Rock!"

10.times{ |i| puts str.rjust(i+str.length, " ")} # Original solution
# Using rjust only adds the padding if the length of the string is more than i
# so in this case, to always make it greater than i, I just added the length+i
10.times { |number| puts (" " * number) + "The Flintstones Rock!" } # Official
