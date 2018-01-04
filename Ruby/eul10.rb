# tells if number is prime
def is_prime?(n)
  x = Math.sqrt(n)
  y = 2
  while y <= x
    if n % y == 0
      return false
    end
    y = y + 1
  end
  return true
end


# returns all primes below a certain integer
def primes_below(n)
  a = 2
  output_array = []
  while a < n
    if is_prime?(a)
      output_array.push(a)
    end
    a = a + 1
  end
  return output_array
end

puts primes_below(10).reduce(:+)
