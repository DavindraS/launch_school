# Question 1
=begin
  I would expect the code to print out the numbers in the array [1, 2, 2, 3]
  According to the docs, Array#uniq would return a new array with
  duplicate values removed. That means that it doesn't modify the original
  array.
=end

# Question 2
=begin
  ! at the end of a method usually means that it will modify the object calling
  ! also means NOT or negate, so != means not equal
  ? after a method name usually means that the method returns a boolean
  1. != means not equals, and its used with comparisons and branching
  2. ! before something means the opposite of what the thing is
  3. ! after a method means that the method changes the object that called it
  4. ? before something: I'm not sure this is allowed
  5. ? after something means that the thing will return a boolean
  6. !! means not not. ex. !!true = true. !true = false, so !false = true
=end

# Question 3
=begin
  To replace the word important with urgent, I would use the following code:
  advice.gsub!('important, 'urgent')
=end

# Question 4
=begin
  numbers.delete_at(1) will remove the element at index 1 in this case, 2
  numbers.delete(1) will remove all the number 1's in the array
=end

# Question 5
=begin
  Programmatically determine if 42 lies between 10 and 100 (use range)
  (10..100).include?(42) # This is my original answer
  (10..100).cover?(42) # official answer
  There is a difference between these two is that cover compares the input
  and checks whether its lower than the end and higher than the beginning,
  while include iterates through the entire range to find whether the input
  is one of them. Cover seems faster for this case.
=end

# Question 6
=begin
  Show two different ways to put "Four score and " in front of the string
  famous_words = "seven years ago..."

  1. famous_words.insert(0, "Four score and ")
  2. famous_words.prepend("Four score and ")
=end

# Question 7
=begin
  The answer is 42. The docs say that Kernel#eval evaluates the ruby expression
  in string. So when we call that on how_deep, number is evaluated to the integer
  2, and we add 8 5 times which gets us to 42.
=end

# Question 8
=begin
  Un-nest the array ["Fred", "Wilma", ["Barney", "Betty"], ["BamBam", "Pebbles"]]
  flintstones.flatten!
=end

# Question 9
=begin
  Turn this hash into an array with Barney's name and number
  flintstones = { "Fred" => 0, "Wilma" => 1, "Barney" => 2, "Betty" => 3, "BamBam" => 4, "Pebbles" => 5 }
  flintstones.keep_if{|k, v| k == "Barney"}.to_a.flatten! # my answer

  flintstones.assoc("Barney") # official and better answer
=end
