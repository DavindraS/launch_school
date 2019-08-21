# shorten this sentence, remove everythings starting from house
# Make the return value "Few things in life are as important as "
# leave advice variable as "house training your pet dinosaur."
advice = "Few things in life are as important as house training your pet dinosaur."
p advice.slice!(0, advice.index('house'))
p advice

# If we use slice, the advice string will not be modified and will contain
# the original string
