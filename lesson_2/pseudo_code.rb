# a method that returns the sum of two integers

=begin casual
Given two integers as arguments in a method

Perform the addition of the two variables.

(Because this is the last line of the method, the result of the
addition operation will be returned, so there's no need to explicitly
return something)
=end
=begin formal
START

argument1 + argument2

END
=end

# a method that takes an array of strings, and returns a string that is all
# those strings concatenated together

=begin casual
Given array of strings as arguments for a method

Create a variable that will hold the final string

Go through the array one by one
  - pop the element
  - add the popped element to the string using <<

Return the final string variable
=end
=begin formal
START

SET final = ""

WHILE array !empty
  SET final = array.pop

PRINT final

END
=end

# a method that takes an arr of ints, returns a new array with every other element
=begin casual
Given an array of integers

Create an new empty array
Starting with index 0
  - skip if index is odd
  - newarr[index] == currentarray[index]

return newarr
=end
=begin formal

Given an array of ints
START
SET newarr = []

FOR EACH arr index, value
  NEXT IF index is odd
  SET newarr[index] == value

RETURN newarr
=end
