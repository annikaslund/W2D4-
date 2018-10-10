# brute force O(n^2)
def bad_two_sum?(arr, target)
  (0...arr.length).each do |i|
    (i+1...arr.length).each do |i2|
      return true if arr[i] + arr[i2] == target
    end
  end
  false
end
