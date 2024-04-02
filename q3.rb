class TreeNode
  attr_accessor :val, :left, :right
  def initialize(val = 0, left = nil, right = nil)
    @val = val
    @left = left
    @right = right
  end
end

def lowest_common_ancestor(root, p, q)

  if p.val > root.val && q.val > root.val
    lowest_common_ancestor(root.right, p, q)

  elsif p.val < root.val && q.val < root.val
    lowest_common_ancestor(root.left, p, q)
  else
    root
  end
end

# Example usage:
# Construct the BST
root = TreeNode.new(6)
root.left = TreeNode.new(2)
root.right = TreeNode.new(8)
root.left.left = TreeNode.new(0)
root.left.right = TreeNode.new(4)
root.left.right.left = TreeNode.new(3)
root.left.right.right = TreeNode.new(5)
root.right.left = TreeNode.new(7)
root.right.right = TreeNode.new(9)

p = root.left
q = root.right
lca = lowest_common_ancestor(root, p, q)
puts "Lowest Common Ancestor of #{p.val} and #{q.val}: #{lca.val}"
