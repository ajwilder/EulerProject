# returns array of all factors of n
def factors(n)
  x = 2
  y = n
  output = []
  while x <= y
    if n % x == 0
      y = n / x
      output.push(x, y)
    end
    x = x + 1
  end
  return output.uniq.sort
end

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


# returns array of prime factors
def prime_factors(n)
  output = []
  factors(n).each do |num|
    if is_prime?(num)
      output.push(num)
    end
  end
  return output
end


puts prime_factors(600851475143)
