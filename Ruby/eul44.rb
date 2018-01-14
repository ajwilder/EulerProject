def pentagonal(num)
  num * (3 * num - 1) / 2
end

def pentagonal_array(n)
  x = 1
  array = []
  while x <= n
    array.push(pentagonal(x))
    x += 1
  end
  array
end

z = pentagonal_array(3000)

i = 0
output = []
l = z.length
max = z[l - 1]
while i < l - 2
  j = i + 1
  while z[i] + z[j] <= max
    diff = (z[i] - z[j]).abs
    if z.include?(z[i] + z[j]) && z.include?(diff)
      output.push([i,j,z[i],z[j]])
    end
    j += 1
  end
  i += 1
end

puts output.to_s
