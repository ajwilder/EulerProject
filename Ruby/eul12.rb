
# returns array of all factors of n
def factors(n)
  x = 1
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

def euler12(x)
  n = 1
  trinum = 0
  loop do
    trinum += n
    if factors(trinum).length >= x
      return trinum
    end
    n += 1
  end
end

puts euler12(500)
