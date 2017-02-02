require 'minitest/autorun'
require "minitest/emoji"
require "./lib/complete_me"

class CompleteMeTest < Minitest::Test
  attr_reader :cm, :node
  def setup
    @node = Node.new
    @cm = CompleteMe.new

  end

  def test_if_CompleteMe_exists
    assert_instance_of Node, cm.root
  end

  def test_count_initial_value
    assert 0, cm.count
  end

  def test_inserts_single_word
    cm.insert("pizza")
    assert_equal 1, cm.count
  end
end

def test_find_starting_node_for_suggest
  cm.insert("pizza")
  assert_equal ["pizza"], cm.suggest("piz")
end

def test_populate_with_dictionary
  cm.populate(dictionary)
  assert_equal 235886, cm.count
end


def dictionary
  File.read("/usr/share/dict/words")
end
