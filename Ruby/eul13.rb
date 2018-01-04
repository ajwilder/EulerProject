sum = 0
File.open('../euler13nums.txt').each do |line|
  sum += line.to_i
end
puts sum
