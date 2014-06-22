fib = Enumerator.new do |f|
  f0 = 0
  f1 = 1
  while true
    f << f0
    f0, f1 = f1, f0 + f1
  end
end

print fib.take_while {|x| x <= 4000000}.select {|x| x%2 == 0}.reduce(:+)
