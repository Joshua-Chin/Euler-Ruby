print (900..999).collect{|x| (900..999).collect{|y| x*y}}.flatten.select{|x| x.to_s == x.to_s.reverse}.max
