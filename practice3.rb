def solution(a, b, c)
  out_str = ""
  max_heap = []

  # create heap
  [[a, "a"], [b, "b"], [c, "c"]].each do |count, char|
    if count != 0
      max_heap << [count, char]
    end
  end
  max_heap.sort!

  while true
    if max_heap.empty?
      break
    end

    count1, char1 = max_heap.pop

    if out_str.length >= 2 and out_str[-1] == out_str[-2] and out_str[-2] == char1 # if there are 3 consecutive characters
      if max_heap.empty?
        break
      end
      count2, char2 = max_heap.pop # use another character
      count2 = -count2

      out_str = out_str + char2
      count2 -= 1

      if count2 > 0
        max_heap << [count2, char2]
      end
    else # else there are not 3 consecutive characters, use the popped character
      out_str = out_str + char1
      count1 -= 1
    end

    if count1 > 0
      max_heap << [count1, char1]
    end

    max_heap.sort!
  end

  return out_str
end

# puts solution(1, 1, 7)  # => "ccaccbcc"
# puts solution(1, 3, 1)  # => return "abbcb", "bcbab", "bacbb"
# puts solution(0, 1, 8)  # => "ccbcc"
