def divisors(n)
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

def abundant?(n)
  divisors(n).reduce(:+) > n
end

def abundants(n)
  abundant_nums = []
  x = 2
  while x < n
    if abundant?(x)
      abundant_nums.push(x)
    end
    x += 1
  end
  return abundant_nums
end

$nums = abundants(28123)
def sum_abundant?(n)
  index1 = 0
  while $nums[index1] < n
    current = $nums[index1]
    index2 = index1
    while $nums[index2] < n
      if $nums[index2] + current == n
        return true
      end
      index2 += 1
    end
    index1 += 1
  end
  return false
end

count = 1
output = 0

while count < 28123
  if !sum_abundant?(count)
    output += count
  end
  count += 1
end

puts output
