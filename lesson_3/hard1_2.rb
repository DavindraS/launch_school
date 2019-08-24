# exercise: what is the result of the last line

=begin
  greetings = { a: 'hi' }
  informal_greeting = greetings[:a]
  informal_greeting << ' there'

  puts informal_greeting  #  => "hi there"
  puts greetings

  My answer:
  1. greetings is pointing to the hash { a: 'hi' }
  2. informal_greeting is pointing to the array [:a]
    2a. The informal_greeting array index 0 is pointing to the string 'hi' that
        the greetings[a] hash is pointing to
  3. informal_greeting appens ' there' to the same string object
  5. We print the string object that informal_greeting variable is pointing to
  6. We print out the hash { a: 'hi there' }, since they were all pointing to
     the same string object

  The last line will print out the hash {a: 'hi there'}
=end

greetings = { a: 'hi' }
informal_greeting = greetings[:a]
informal_greeting << ' there'

puts informal_greeting  #  => "hi there"
puts greetings
