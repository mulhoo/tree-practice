class TreeNode
  attr_reader :key, :value
  attr_accessor :left, :right

   def initialize(key, val)
    @key = key
    @value = val
    @left = nil
    @right = nil
   end
end

class Tree
  attr_reader :root
  def initialize
    @root = nil
  end

  # Time Complexity: 
  # Space Complexity: 
  def add(key, value)
    @root = add_helper(@root, key, value)
  end

  # Time Complexity: 
  # Space Complexity: 
  def find(key)
    current = @root
    return nil if current.nil?

    until current.key == key
      (current.key > key) ? (current = current.left) : (current = current.right)
    end

    return current.value
  end

  # Time Complexity: 
  # Space Complexity: 
  def inorder
    return list if node.nil
  end

  # Time Complexity: 
  # Space Complexity: 
  def preorder
    raise NotImplementedError
  end

  # Time Complexity: 
  # Space Complexity: 
  def postorder
    raise NotImplementedError
  end

  # Time Complexity: 
  # Space Complexity: 
  def height
    raise NotImplementedError
  end

  # Optional Method
  # Time Complexity: 
  # Space Complexity: 
  def bfs
    raise NotImplementedError
  end

  # Useful for printing
  def to_s
    return "#{self.inorder}"
  end


  ##HELPERS
  def add_helper(node, key, value)
    return TreeNode.new(key, value) if node.nil?

    if key < node.key
      node.left = add_helper(node.left, key, value)
    else
      node.right = add_helper(node.right, key, value)
    end
    return node
  end


end
