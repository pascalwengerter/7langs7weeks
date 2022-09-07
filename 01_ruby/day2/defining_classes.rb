puts 4.class                                                # Integer
puts 4.class.superclass                                     # Numeric
puts 4.class.superclass.superclass                          # Object
puts 4.class.superclass.superclass.superclass               # BasicObject
puts 4.class.superclass.superclass.superclass.superclass    # nil

puts '- - - - - - - -'

puts 4.class                                                    # Integer
puts 4.class.class                                              # Class
puts 4.class.class.superclass                                   # Module
puts 4.class.class.superclass.superclass                        # Object
puts 4.class.class.superclass.superclass.superclass             # BasicObject
puts 4.class.class.superclass.superclass.superclass.superclass  # nil
