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

# hash O(n)
def two_sum?(arr, target)
  count = Hash.new(0)

  arr.each do |n|
    count[n] += 0
  end

  current = nil

  count.each do |k, _v|
    if current.nil?
      current = k
      next
    end

    current += k
    return true if current == target
    current = k
  end
  false
end
