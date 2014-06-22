print (1..100).reduce(:+)**2 - (1..100).reduce{|a, b| a + b**2}
