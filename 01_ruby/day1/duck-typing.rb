i = 0
a = ['100', 100.00, 100]

a.each do |digit|
    # No duck-typing prints literal values
    puts "#{digit}\n"

    # Duck-typing via `to_i` prints all three different types as integers
    puts digit.to_i
end
