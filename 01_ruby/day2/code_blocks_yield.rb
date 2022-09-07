# A code block is a function without a name
3.times {puts 'You fool!'}

animals = ['lion', 'penguin', 'whale']
animals.each {|animal| puts animal}

# Open up the existing Fixnum class and adds custom method
class Fixnum
    def doubletime
        i = self
        while i > 0
            i = i - 1
            # Invoke code block using `yield`
            yield
            yield
            # Cleaner alternative
            # 2.times {yield}
        end
    end
end

3.doubletime {puts 'Double fool!'}

# Passing around code blocks & invoking them

def call_block(&block)
    # Invoke executable code
    block.call
end

def pass_block(&block)
    # Pass around exectuable code
    call_block(&block)
end

pass_block {puts 'Hello, block'}
