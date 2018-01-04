module EulerHelpers
  #return an array of all fibonacci numbers below n
  def self.fibonacci(n)
    array = [1,2]
    loop do
      new_num = array[-1] + array[-2]
      break if new_num > n
      array.push(new_num)
    end
    return array
  end

  # returns array of all factors of n
  def self.factors(n)
    x = 2
    y = n
    output = []
    while x <= y
      if n % x == 0
        y = n / x
        output.push(x, y)
      end
      x = x + 1
    end
    return output.uniq.sort
  end


  def self.divisors(n)
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

  # tells if number is prime
  def self.is_prime?(n)
    x = Math.sqrt(n)
    y = 2
    while y <= x
      if n % y == 0
        return false
      end
      y = y + 1
    end
    return true
  end


  # returns array of prime factors
  def self.prime_factors(n)
    output = []
    factors(n).each do |num|
      if is_prime?(num)
        output.push(num)
      end
    end
    return output
  end

  # Checks if number is palindrome
  def self.is_palindrome?(num)
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

  # returns true if number x can be evenly divided by all numbers 1 - n
  def self.multiples_of(x, n)
    i = n
    while i > 0
      if x % i != 0
        return false
      end
      i = i - 1
    end
    return true
  end

  #returns true if the three numbers are a pythagorean triplet
  def self.pythagorean?(a,b,c)
    if a * a + b * b == c * c
      true
    else
      false
    end
  end
end
