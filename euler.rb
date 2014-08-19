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

  def self.problem05(limit)
    divisible = 1
    primes=Prime.take_while {|prime| prime < limit }
    while limit > 1
      primes.each do |prime|
        power = Math.log(limit)/Math.log(prime)
        if power - power.floor == 0
          divisible *= prime**power
          primes.delete(prime)
          break
        end
      end
      limit -= 1
    end
    divisible.to_i
  end

  def self.problem06(limit)
    sum_of_squares=0
    square_of_sum=0
    while limit > 0
      sum_of_squares += limit ** 2
      square_of_sum += limit
      limit -= 1
    end
    square_of_sum = square_of_sum ** 2
    square_of_sum - sum_of_squares
  end

end


### Answers! ###

print "Problem 01 answer: "
p Euler.problem01(1000)

print "Problem 02 answer: "
p Euler.problem02(4000000)

print "Problem 03 answer: "
p Euler.problem03(600851475143)

print "Problem 04 answer: "
p Euler.problem04(999)

print "Problem 05 answer: "
p Euler.problem05(20)

print "Problem 06 answer: "
p Euler.problem06(100)
