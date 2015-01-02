# Daily Programmer Easy Challenge #38 July 13, 2013
# Summary:
# Implement Dijkstra's algorithm in any way you can.
# http://en.wikipedia.org/wiki/Dijkstra's_algorithm

# Class for building the graph to traverse with the algorithm

class Vertex
  def initialize(name, distance)
  	@name = name
  	@distance = distance  # distance to source
    @previous = nil
    @neighbors = Array.new  # array of pairs [neighbor vertex, distance to that vertex]
    @visited = false
  end
  attr_reader :name
  attr_accessor :distance
  attr_accessor :previous
  attr_accessor :neighbors
  attr_accessor :visited
  def to_s
    s = "Info for node #{name}:\n"
  	s << "Distance to source: #{distance}\n"
  end
end

# Building the graph based on the diagram from Wikipedia, using letters instead of
# numbers to name the verticies

a = Vertex.new("a", 0)
b = Vertex.new("b", "infinity")
c = Vertex.new("c", "infinity")
d = Vertex.new("d", "infinity")
e = Vertex.new("e", "infinity")   # e is the destination node
f = Vertex.new("f", "infinity")

a.neighbors = [[b, 7], [c, 9], [f, 14]]
b.neighbors = [[a, 7], [c, 10], [d, 15]]
c.neighbors = [[a, 9], [b, 10], [d, 11], [f, 2]]
d.neighbors = [[b, 15], [c, 11], [e, 6]]
e.neighbors = [[d, 6], [f, 9]]
f.neighbors = [[a, 14], [e, 9]]

# Dijkstra's algorithm

unvisited_set = [b, c, d, e, f]

node = a
while not e.visited   # end algorithm when destination is marked visited
  node.neighbors.each do |neighbor|
    if unvisited_set.include?(neighbor[0])
      temp_distance = node.distance + neighbor[1] # adds distance to neighbor to current distance
      if neighbor[0].distance == "infinity" || temp_distance < neighbor[0].distance
        neighbor[0].distance = temp_distance
        neighbor[0].previous = node
      end
    end
  end
  node.visited = true
  unvisited_set.delete(node)
  node = unvisited_set[0]
  unvisited_set.each do |x|   # find smallest distance to set current node
    if node.distance == "infinity"
      node = x
    elsif x.distance != "infinity" && (x.distance < node.distance)
      node = x
    end
  end
end

puts "The shortest distance is: #{e.distance}"

best_path = [e]
current_node = e
while (not current_node.previous.nil?)
  best_path.push(current_node.previous)
  current_node = current_node.previous
end
best_path.reverse!
puts "The shortest path is: "
best_path.each do |node|
  puts node.name
end