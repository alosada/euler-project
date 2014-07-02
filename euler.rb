require 'prime'

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
    primes = []
    Prime.each(100000) do |prime|
      if limit % prime == 0
        primes << prime
      end
    end
    return primes.max

  end

end


### SIMPLE TESTS ###

print "Q1 test: Multiples of 3 & 5 are equal to 23: "
p Euler.multiples(10)==23
print "Q1 answer: "
p Euler.multiples(1000)

print "Q2 test: Sum of first 10 even fibonnacci numbers is 44: "
p Euler.sum_even_fib(89)==44
print "Q2 answer: "
p Euler.sum_even_fib(4000000)

print "Q3 test: Largest prime factor of 13195 is 29: "
p Euler.largest_prime(13195) == 29
print "Q3 answer: "
p Euler.largest_prime(600851475143)
