# See if the name Dino appears in the string
advice = "Few things in life are as important as house training your pet dinosaur."

puts advice.include?("Dino") # My original solution
puts advice.match?("Dino") # Official solution

# These two look similar and will return true if we use 'dino'
