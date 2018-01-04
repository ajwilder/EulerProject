sum = 0
(1..999).each do |num|
  if num % 3 == 0 || num % 5 == 0
    sum += num
  end
end
puts sum
