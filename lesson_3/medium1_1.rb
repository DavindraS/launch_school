# Write a one line program to cretate the following output 10 times, indenting
# each time

str = "The Flintstones Rock!"

10.times{ |i| puts str.rjust(i+str.length, " ")} # Original solution

10.times { |number| puts (" " * number) + "The Flintstones Rock!" } # Official
