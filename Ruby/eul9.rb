def pythagorean?(a,b,c)
  if a * a + b * b == c * c
    true
  else
    false
  end
end



def euler9(n)
  a = 1
  while a < n
    b = a + 1
    while b + a < n
      c = n - b - a
      if c > b && pythagorean?(a,b,c)
        return "#{a},#{b},#{c}"
      end
      b = b + 1
    end
    a = a + 1
  end
end

puts euler9(1000)
puts 200 * 375 * 425
