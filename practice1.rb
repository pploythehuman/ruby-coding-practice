def solution(num)
  num_arr = num.to_s.chars.map(&:to_i) # turns num to arr
  num_arr.sort!.reverse!

  return num_arr.join.to_i
end

# p solution(353)
