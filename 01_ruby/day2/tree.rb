class Tree
    # Defines instance variable, an accessor, and a setter
    attr_accessor :children, :node_name

    # Called upon instantiation
    def initialize(name, children=[])
        @children = children
        @node_name = name
    end

    def visit_all(&block)
        visit &block
        children.each {|c| c.visit_all &block}
    end
    

    def visit(&block)
        block.call self
    end
end

ruby_tree = Tree.new( "MotherNode", [Tree.new("Subnode One"), Tree.new("Subnode Two")])

puts 'Visiting a node:'
ruby_tree.visit {|node| puts node.node_name}
puts 'Visiting entire tree:'
ruby_tree.visit_all {|node| puts node.node_name}
