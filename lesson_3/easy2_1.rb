# See if "Spot" is present in this hash
ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10 }

puts ages.has_key?("Spot")
# Bonus: What are two other methods that'll work for this
puts ages.include?("Spot")
puts ages.member?("Spot")
