=begin
  Programmatically determine if 42 lies between 10 and 100 (use range)
  (10..100).include?(42) # This is my original answer
  (10..100).cover?(42) # official answer
  There is a difference between these two is that cover compares the input
  and checks whether its lower than the end and higher than the beginning,
  while include iterates through the entire range to find whether the input
  is one of them. Cover seems faster for this case.
=end
