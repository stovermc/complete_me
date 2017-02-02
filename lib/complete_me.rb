#Author: Mark Stover
#Project: Complete Me
# Insert a dictionary of words to the CompleteMe class. This builds a retrieval
# tree using hashes. Each node of the tree stores a letter as a key and another
# node as the value.

require 'pry'
class CompleteMe
  attr_reader :root
  attr_accessor :count, :suggestions

  def initialize
    @root = Node.new("")
    @count = 0
    @suggestions

  end

  def insert(word)
    root.insert(word)
    @count += 1
  end

  def populate(dictionary)
    words = dictionary.split("\n")
    words.each { |word| insert(word)}
  end

  def suggest(partial_word)
    suggestions = root.find_search_node(partial_word)
    puts suggestions
  end
end

class Node
  attr_reader :value
  attr_accessor :children, :true, :word, :search_node

  def initialize(value = nil)
    @value = value
    @children = {}
    @word = false
  end

  # def insert(word)
  #   letter = word[0]
  #   remaining_letters = word[1..-1]
  #
  #   unless children[letter]
  #     children[letter] = Node.new(letter)
  #   end
  #
  #   if remaining_letters.empty?
  #     children[letter].word = true
  #   else
  #   children[letter].insert(remaining_letters)
  #   end
  # end

  def find_search_node(partial_word)
    key_letter = partial_word[0]
    remaining_letters = partial_word[1..-1]

    if remaining_letters.empty?
      @search_node = children[key_letter]
      letters_collection = child_suggestion(search_node)
    else
      children[key_letter].find_search_node(remaining_letters)
    end
    return letters_collection
  end

  def child_suggestion(search_node)
    letters = children.map do |letter, node|
      node.child_suggestion(node)
    end
    return letters
  end
end



cm = CompleteMe.new
# dictionary = File.read("/usr/share/dict/words")
# cm.populate(dictionary)
cm.insert("cat")
cm.insert("car")
# cm.suggest("ca")
# cm.traverse
# completion.insert("pizzle")
# completion.count
# completion.insert("pizzeria")
# completion.insert("pizzicato")
# completion.insert("pize")


# binding.pry
""
