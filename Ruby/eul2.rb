def fibonacci(n)
  array = [1,2]
  loop do
    new_num = array[-1] + array[-2]
    break if new_num > n
    array.push(new_num)
  end
  return array
end

sum = 0
fibonacci(4000000).each do |num|
  if num % 2 == 0
    sum += num
  end
end

puts sum
