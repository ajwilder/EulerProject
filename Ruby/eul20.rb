=begin
n! means n × (n − 1) × ... × 3 × 2 × 1

For example, 10! = 10 × 9 × ... × 3 × 2 × 1 = 3628800,
and the sum of the digits in the number 10! is 3 + 6 + 2 + 8 + 8 + 0 + 0 = 27.

Find the sum of the digits in the number 100!

=end

def factorial(n)
  x = 1
  output = 1
  while x <= n
    output *= x
    x = x+1
  end
  return output
end

puts factorial(100).to_s.split('').map(&:to_i).reduce(:+)
