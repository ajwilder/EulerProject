sum_of_squares = 0
sum = 0

(1..100).each do |num|
  sum_of_squares = sum_of_squares + num * num
  sum = sum + num
end

puts sum_of_squares
puts sum * sum
puts sum * sum - sum_of_squares
