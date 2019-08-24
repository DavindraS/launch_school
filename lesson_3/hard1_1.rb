# exercise: what do I expect to happen when the greeting variable is referenced

=begin
  if false
    greeting = “hello world”
  end

  greeting

  My answer:
  I expect some error about greeting not being initialized or nil. The greeting
  variable is first seen in the if block, and it's assigned a value in the
  block, so it's scoped inside the if block. As soon as we leave that,
  we can't reference it.

  Correct answer:
  greeting is nil because when you initialize a local variable in an if block,
  even if the if block isn't executed, the local variable is initialized to nil.

  If greeting was unintialized, then an exception would be raised
=end

if false
  greeting = “hello world”
end

p greeting
