# fix the code to determine if an input string is an IP address

def an_ip_number?(input)
  (0..255).cover?(input.to_i)
end

def dot_separated_ip_address?(input_string)
  dot_separated_words = input_string.split(".")
  # if there are more or less digits than required, return false
  return false if dot_separated_words.size != 4

  while !dot_separated_words.empty?
    word = dot_separated_words.pop
    # if its not an ip number, then return false
    return false unless an_ip_number?(word)
  end
  true
end

puts dot_separated_ip_address?("10.4.5.11") == true
puts dot_separated_ip_address?("4.5.5") == false
puts dot_separated_ip_address?("1.2.3.4.5") == false
puts dot_separated_ip_address?("1000.1.1.1") == false
puts dot_separated_ip_address?("192.168.1.1") == true
puts dot_separated_ip_address?("255.256.0.1") == false
puts dot_separated_ip_address?("0.0.0.0") == true
puts dot_separated_ip_address?("255.255.255.255") == true
