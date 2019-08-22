=begin
  puts rps(rps(rps("rock", "paper"), rps("rock", "scissors")), "rock")

  So let's start from the inside out:
  rps(rps("paper", "rock"), "rock")
  rps("paper", "rock")
  "paper"
=end
