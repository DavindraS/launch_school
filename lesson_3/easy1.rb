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
