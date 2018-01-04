# Checks if number is palindrome
def is_palindrome?(num)
  digit_array = num.to_s.split('')
  length = digit_array.length
  i = 0
  while i <= length / 2
    if digit_array[i] != digit_array[length - i - 1]
      return false
    end
    i = i + 1
  end
  return true
end

x = 999
y = 999
max = 0
while x > 99
  y = 999
  while y > 99
    n = x * y
    if is_palindrome?(n) && n > max
      max = n
    end
    y = y - 1
  end
  x = x - 1
end

puts max
