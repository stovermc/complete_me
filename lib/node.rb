class Node
  attr_reader :value,

  def initialize(value = nil)
    @value = value
    @children = {}
  end

  def insert(word)
    first_letter = word[0]
    rest_of_word = word[1..-1]

    unless children[first_letter]
      children[first_letter] = Node.new(first_letter)
    end

    if rest_of_word.size = 0
      children


  end
end


try  = CompleteMe.new

#   def next_node(value)
#     current_node = root
#     until current_node.next_node == nil do
#       current_node = current_node.next_node
#     end
#     current_node.next_node = Node.new(value)
#   end
# end
