def factors(x)
  factors = []
  (2..Math.sqrt(x)).each do |y|
    while x%y == 0
      x /= y
      factors.push y
    end
  end
  if x != 1
    factors.push y
  end
  return factors
end

print factors(600851475143).max
