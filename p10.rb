def sieve(limit)
  bits = [true]*limit
  bits[0] = false
  bits[1] = false
  (2..Math.sqrt(limit)).each do |x|
    if bits[x]
      (x**2).step(limit, x).each do |y|
        bits[y] = false
      end
    end
  end
  return bits.each_with_index.to_a.select{|x,i| x}.collect{|x,i| i}
end

print sieve(2000000).reduce(:+)
