def fibonacci(n)
  x = 1
  array = [1, 1]
  while x <= n
    array.push(array[x] + array[x-1])
    x += 1
  end
  array
end

x = 1
array = [1, 1]
while array[x].to_s.length < 1000
  array.push(array[x] + array[x-1])
  x += 1
end

puts array[4781].to_s.length 
