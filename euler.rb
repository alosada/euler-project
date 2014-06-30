### Q1 ####

class Euler

  def self.multiples(limit)
    res= 0
    (1...limit).each{|x| res+=x if x%3==0 || x%5==0}
    return res
  end

end


### SIMPLE TESTS ###

print "Multiples of 3 & 5 are equal to 23: "
p Euler.multiples(10)==23
