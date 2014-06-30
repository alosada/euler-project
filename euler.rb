### Q1 ####

class Euler

  def self.multiples(limit)
    res= 0
    (1...limit).each{|x| res+=x if x%3==0 || x%5==0}
    return res
  end

  def sum_even_fib(limit)

  end

end


### SIMPLE TESTS ###

print "Q1: Multiples of 3 & 5 are equal to 23: "
p Euler.multiples(10)==23

print "Q2: Sum of first 10 even fibonnacci numbers is 44: "
p Euler.sum_even_fib(89)==44
