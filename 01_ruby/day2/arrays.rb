animals = ['lion', 'penguin', 'whale']

puts animals

puts animals [0] # Returns first
puts animals[20] # Returns nil (out of scope)

# Syntactic sugar
puts animals[-2] # Returns second from end

# Range
puts animals[0..1] # Returns items at requested positions, inclusive

# Arrays don't need to be homogenous
a = ['foo', [0, false], 100.00]
puts "\n #{a} \n #{a[1][0]}"
