text = IO.read("p8.txt").split("\n").join
print (0..text.length-4).to_a.collect{|i| text[i..(i+4)].split('').collect{|x| x.to_i}.reduce(:*)}.max