# returns true if number x can be evenly divided by all numbers 1 - n
def multiples_of(x, n)
  i = n
  while i > 0
    if x % i != 0
      return false
    end
    i = i - 1
  end
  return true
end

def smallest_evenly_divisible_by(n)
  x = 1
  loop do
    if multiples_of(x, n)
      return x
    end
    x = x + 1
  end
end

puts smallest_evenly_divisible_by(20)
