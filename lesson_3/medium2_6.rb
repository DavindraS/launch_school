def color_valid(color)
  (color == "blue" || color == "green")? true : false # my solution
  # color == "blue" || color == "green" # official solution
end

puts color_valid("blue")
puts color_valid("green")
puts color_valid("purple")
puts color_valid("orange")
