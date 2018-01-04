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

count = 0
prime = 0
x = 2
while count < 10001
  if is_prime?(x)
    count = count + 1
    prime = x
  end
  x = x + 1
end

puts count
puts prime
