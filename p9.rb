for a in 1..1000/3
  b = 1000 * (a-500) / (a-1000)
  if b == b.to_i
    c = Math.sqrt(a**2+b**2)
    if c == c.to_i and a+b+c == 1000
      print a*b*c
    end
  end
end
