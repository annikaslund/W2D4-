# brute force O(n^2)
def bad_two_sum?(arr, target)
  (0...arr.length).each do |i|
    (i+1...arr.length).each do |i2|
      return true if arr[i] + arr[i2] == target
    end
  end
  false
end

# sorting O(n log n)
def okay_two_sum?(arr, target)
  sorted_arr = arr.sort
  mid = sorted_arr.length / 2

  small_nums = sorted_arr.reject { |n| n > target }
  return false if small_nums.length <= 1
  small_nums[-1] + small_nums[-2] == target
end
