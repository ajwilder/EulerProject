=begin
Let d(n) be defined as the sum of proper divisors of n (numbers less than n which divide evenly into n).
If d(a) = b and d(b) = a, where a ≠ b, then a and b are an amicable pair and each of a and b are called amicable numbers.

For example, the proper divisors of 220 are 1, 2, 4, 5, 10, 11, 20, 22, 44, 55 and 110; therefore d(220) = 284. The proper divisors of 284 are 1, 2, 4, 71 and 142; so d(284) = 220.

Evaluate the sum of all the amicable numbers under 10000.

=end
$LOAD_PATH << '.'

require 'helpers'

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
  return output.uniq.sort - [n]
end


amicables = []
n = 2
while n < 10000
  sum = factors(n).reduce(:+)
  if n != sum && factors(sum).reduce(:+) == n
    amicables.push(n, sum)
  end
  n += 1
end

puts amicables.uniq.reduce(:+)
