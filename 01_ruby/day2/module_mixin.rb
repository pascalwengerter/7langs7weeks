module ToFile
    def filename
        "object_#{self.object_id}.txt"
    end

    # Writes output of `to_s` method to file
    def to_f
        File.open(filename, 'w') {|f| f.write(to_s)}
    end
end

class Person
    # Module is included in a "mixin-style"
    include ToFile
    attr_accessor :name

    def initialize(name)
        @name = name
    end

    def to_s
        name
    end
end

Person.new('matz').to_f
