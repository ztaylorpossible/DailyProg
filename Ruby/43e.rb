=begin
Daily Programmer Easy Challenge #43 July 23, 2013
Summary:
Today is a common interview question.
Given a binary tree t and two elements of the tree, m and n, with m < n, find the lowest
element of the tree (farthest from the root) that is an ancestor of both m and n.
=end

class Node
  def initialize(value)
  	@value = value
  	@left = nil
  	@right = nil
  	@depth = 0
  end
  attr_reader :value
  attr_accessor :left
  attr_accessor :right
  attr_accessor :depth
  def to_s
  	value.to_s
  end
end

class BST
  def initialize(root)
  	@root = root
  end

  def add(new_node, root)
  	new_node.depth += 1
    if new_node.value < root.value
      if root.left.nil?
      	root.left = new_node
      else
      	add(new_node, root.left)
      end
    elsif new_node.value > root.value
      if root.right.nil?
      	root.right = new_node
      else
      	add(new_node, root.right)
      end
    end
  end
  attr_reader :root

  def to_s
  	root.value.to_s
  end
end

# Tree taken from diagram on http://en.wikipedia.org/wiki/Binary_search_tree

tree = BST.new(Node.new(8))
tree.add(Node.new(3), tree.root)
tree.add(Node.new(1), tree.root)
tree.add(Node.new(6), tree.root)
tree.add(Node.new(4), tree.root)
tree.add(Node.new(7), tree.root)
tree.add(Node.new(10), tree.root)
tree.add(Node.new(14), tree.root)
tree.add(Node.new(13), tree.root)

puts "Enter a number in the tree (1, 3, 4, 6, 7, 8, 10, 13, 14): "
m = gets.chomp.to_i
puts "Enter another number from the tree: "
n = gets.chomp.to_i

# ensure m < n
if m > n
  temp = n
  n = m
  m = temp
end

target = tree.root
while not (m < target.value && target.value < n)
  if (!target.left.nil? && target.left.value == m) || (!target.right.nil? && target.right.value == n)
    break
  end
  if target.value > m
    target = target.left
  elsif target.value < n
    target = target.right
  end
end

puts "The lowest common ancestor is #{target}"
