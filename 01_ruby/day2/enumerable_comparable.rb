# A class wanting to be `enumerable` must implement `each`, and a class wanting to be `comparable` must implement the spaceship operator, `<=>`.

puts 'begin' <=> 'end'
puts 'same' <=> 'same'
puts 'end' <=> 'begin'

a = [5, 3, 4, 1]
puts a.sort
puts a.any? {|i| i > 6} # false
puts a.any? {|i| i > 4} # true
puts a.all? {|i| i > 4} # false
puts a.all? {|i| i > 0} # true

puts a.collect {|i| i * 2}
puts a.select {|i| i % 2 == 0}
puts a.max
puts a.member?(2)

puts a.inject(0) {|sum, i| sum + i}         # 13
puts a.inject(15) {|sum, i| sum + i}        # 28
puts a.inject {|product, i| product * i}    # 60
