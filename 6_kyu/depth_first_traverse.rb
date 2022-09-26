class Node
  attr_accessor :r_node, :l_node
  
  def initialize(r_node = nil, l_node = nil)
    self.r_node = r_node
    self.l_node = l_node
  end
  
  def height(node = self, count = 1, max_count = 0)
    return max_count if node.r_node.nil? && node.l_node.nil?
    
    max_count = count unless count < max_count
    
    max_count = self.height(node.r_node, count + 1, max_count) unless node.r_node.nil?
    max_count = self.height(node.l_node, count + 1, max_count) unless node.l_node.nil?
    max_count
  end
end
