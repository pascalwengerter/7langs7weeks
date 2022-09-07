numbers = {1 => 'one', 2 => 'two'}

puts numbers
puts numbers[1]

stuff = {:array => [1,2,3], :string => 'Hello there!'}
puts stuff[:string]
puts stuff[0] # Returns nil


# Symbols don't get recreated on each usage
puts :string.object_id
puts 'string'.object_id
puts :string.object_id
puts 'string'.object_id

# Optional parameters as hash
def true_or_not(options={})
    if options[:profession] == :lawyer
        'almost true' 
    else
        true
    end
end

# Returns true
puts true_or_not
# Provides optional argument to return string
puts true_or_not(:profession => :lawyer)
