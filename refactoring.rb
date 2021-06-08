=begin
We’re going to reinforce our knowledge of Ruby best practices by refactoring some existing code. 
As mentioned, refactoring is the process by which we improve a code’s structure, appearance, and/or performance without modifying its overall behavior.

The code in the editor is a Ruby method, first_n_primes, that takes a number n and generates a list of the first n prime numbers.
Unfortunately, our poor author hasn’t yet mastered all the tools available in Ruby. But we can fix that!
=end

#problem statement
require 'prime'   # This is a module. We'll cover these soon!

def first_n_primes(n)

  unless n.is_a? Integer
    return "n must be an integer."
  end

  if n <= 0
    return "n must be greater than 0."
  end
  
  return Prime.first n
end

first_n_primes(10)


#my solution
require 'prime' 

def first_n_primes(n)
  return "n must be an integer." unless n.is_a? Integer
  return "n must be greater than 0." if n <= 0
  Prime.first n
end

first_n_primes(10)
