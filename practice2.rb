def solution(tree, max_val = -1)
  if tree.nil?
    return 0
  end

  root, left, right = tree
  if root >= max_val
    visible = 1
  else
    visible = 0
  end

  max_val = [max_val, root].max

  visible += solution(left, max_val)
  visible += solution(right, max_val)

  return visible
end

# tree1 = [5, [3, [20, nil, nil], [21, nil, nil]], [10, [1, nil, nil], nil]]
# tree2 = [8, [2, [8, nil, nil], [7, nil, nil]], [6, nil, nil]]

# p solution(tree1)
# p solution(tree2)
