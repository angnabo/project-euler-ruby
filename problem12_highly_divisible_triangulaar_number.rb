# The sequence of triangle numbers is generated by adding the natural numbers. So the 7th triangle number would be 1 + 2 + 3 + 4 + 5 + 6 + 7 = 28. The first ten terms would be:
#
# 1, 3, 6, 10, 15, 21, 28, 36, 45, 55, ...
#
# Let us list the factors of the first seven triangle numbers:
#
#  1: 1
#  3: 1,3
#  6: 1,2,3,6
# 10: 1,2,5,10
# 15: 1,3,5,15
# 21: 1,3,7,21
# 28: 1,2,4,7,14,28
# We can see that 28 is the first triangle number to have over five divisors.
#
# What is the value of the first triangle number to have over five hundred divisors?

def triangilar_nums
  n = 0
  (1..100000000).each do |i|
    n = factors(i*(i+1)/2)
    if  n.length >= 500
      return i*(i+1)/2
    end
  end
end

def factors(n)
  factors = []
  (1..Math.sqrt(n)).each do |i|
    if n % i == 0
      factors << i
      factors << n/i
    end
  end
  return factors
end

puts triangilar_nums
