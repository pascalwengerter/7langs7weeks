# 01
puts 'Hello, world.'

# 02
puts 'Hello, Ruby.'.index('Ruby.')

# 03
name = 'Steve'
x = 1
until x == 11 do
    print "#{name}\n"
    x = x + 1
end

# 04
(1..10).each do |digit|
    puts "This is sentence number #{digit}"
end

# 05
result = rand(10)
puts 'Guess the correct number from zero to ten:'
input = gets
if result == input.to_i
    puts 'You were right!'
else
    puts "You were wrong, the correct guess was #{result}"
end
