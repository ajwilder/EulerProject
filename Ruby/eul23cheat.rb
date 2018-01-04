@abundant = []

def perfect_num(n)
    arr = []

    (1..Math.sqrt(n)).each do |x|

        arr << x if n%x == 0
        arr << n/x if n%x == 0 && x != n/x && n/x != n
     end

     @abundant << n if arr.inject(:+) > n

end

(1..28123).each do |x|
    perfect_num(x)
end

abundant_sum =[]

@abundant.each do |x|
    @abundant.each do |y|
        abundant_sum<< x + y
    end
end


p ((1..28123).to_a - abundant_sum).inject(:+) #4179871
