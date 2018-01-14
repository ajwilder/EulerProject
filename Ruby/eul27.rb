def is_prime?(n)
  if n <= 0
    return false
  end
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

def prime_test(a,b)
  x = 0
  loop do
    if !is_prime?(x * x + x * a + b)
      break
    end
    x += 1
  end
  return x
end

a = -1000
b = -1000
max_prime = 0
best_coeff = [0,0]

while a <= 1000
  b = -1000
  while b <= 1000
    c = prime_test(a,b)
    if c > max_prime
      max_prime = c
      best_coeff = [a,b]
    end
    b += 1
  end
  a += 1
end

puts max_prime
puts best_coeff.to_s
puts best_coeff[0] * best_coeff[1]
