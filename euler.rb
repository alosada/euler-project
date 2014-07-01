### Q1 ####

class Euler

  def self.multiples(limit)
    res= 0
    (1...limit).each{|x| res+=x if x%3==0 || x%5==0}
    return res
  end

  def self.sum_even_fib(limit)
    fib = [0,1]
    sum = 0
    while fib.last < limit
      fib << fib.inject(:+)
      fib.slice!(0)
      sum+= fib.last if fib.last%2==0
    end
    return sum
  end

  def self.largest_prime(limit)

  end

end


### SIMPLE TESTS ###

print "Q1: Multiples of 3 & 5 are equal to 23: "
p Euler.multiples(10)==23

print "Q2: Sum of first 10 even fibonnacci numbers is 44: "
p Euler.sum_even_fib(89)==44

print "Q3: LArgest prime factor of 13195 is 29: "
p Euler.largest_prime(13196)==29
