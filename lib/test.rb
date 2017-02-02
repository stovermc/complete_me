class Node
  attr_accessor :node, :next

  def initialize(node)
    @node = node
  end

  def self.node_list(node, msg = nil)
    msg ||= ""
    return msg[0..-4] if node.nil?
    node_list(node.next, msg << "#{node.node} ->")

  end
end
ir
# require 'pry'
#
# class Node
#   attr_accessor :data, :next_node
#
#   def initialize(value = nil)
#     @data = value
#     @next_node = nil
#   end
# end
#
# binding.pry
# ""
# require 'pry'
# class CompleteMe
#   attr_reader :root
#   def initialize
#     @root = nil
#
#   end
#
#   def insert(word)
#     value = word.split("")
#     root = Node.new()
#     x = value.each do |char|
#       if @root.nil?
#         @root = Node.new(char)
#       else
#         next_node(char)
#       end
#     end
#   end
#   def next_node(char)
#     current_node = @root
#     until current_node.next_node == nil
#       current_node = current_node.next_node
#
#     end
#     current_node.next_node = Node.new(char)
#   end
#   def populate(words)
#     @words << words.split("\n")
#     @words.each{|word|count +=1}
#   end
#   def suggest
#   end
# end
#
# class Node
#   attr_accessor :data, :next_node
#
#   def initialize(value = nil)
#     @data = value
#     @next_node = nil
#   end
# end
#
# binding.pry
# ""

# class Node
#   attr_reader :key
#   def initialize(key, value)
#     @value = value
#     @children = []
#     @count
#   end
#
#   def value
#
#     value = value[count]
#   end
#   def children
#     children = key.split("")
#   end
# end
#
# check = Node.new("dog")



# Create a node based on the first letter of the input string.
# look for
