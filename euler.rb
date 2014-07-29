require 'prime'

class Euler

  def self.problem01(limit)
    res= 0
    (1...limit).each{|x| res+=x if x%3==0 || x%5==0}
    return res
  end

  def self.problem02(limit)
    fib = [0,1]
    sum = 0
    while fib.inject(:+) < limit
      fib << fib.inject(:+)
      fib.slice!(0)
      sum+= fib.last if fib.last%2==0
    end
    return sum
  end

  def self.problem03(limit)
    primes = []
    Prime.each(100000) do |prime|
      if limit % prime == 0
        primes << prime
      end
    end
    primes.max
  end

  def self.problem04(limit)
    first=limit
    i=9
    while i > 0
      while first > i*limit/10
        second = limit
        while second > i*limit/10
          result = first*second
          return result if result.to_s == result.to_s.reverse
          second-=1
        end
        first -= 1
      end
    i-=1
    end
  end

end


### Answers! ###

print "Q1 answer: "
p Euler.problem01(1000)

print "Q2 answer: "
p Euler.problem02(4000000)

print "Q3 answer: "
p Euler.problem03(600851475143)

print "Q4 answer: "
p Euler.problem04(999)
