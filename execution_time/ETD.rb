# O(n^2) - quadratic

def my_min_1a(arr)
  smallest = arr.first

  (0...arr.length-1).each do |idx|
    (idx+1...arr.length).each do |idx2|
      if arr[idx] < arr[idx2] && smallest > arr[idx]
        smallest = arr[idx]
      elsif arr[idx2] < arr[idx] && smallest > arr[idx2]
        smallest = arr[idx2]
      end
    end
  end

  smallest
end

# O(log n) ?

def my_min_1b(arr)
  sorted = arr.sort
  sorted.first
end

# O(n)

def my_min_2(arr)
  min = arr.first

  arr.each { |num| min_num = num if num < min_num }

  min
end

# O(n^2) ACTUALLY O(n^3) - polynomial
def largest_contiguous_subarr_1(arr)
  subsets = all_subsets(arr)
  max_total = subsets.first.reduce(:+)

  subsets.each do |set|
    max_total = set.reduce(:+) if set.reduce(:+) > max_total
  end

  max_total
end

def all_subsets(arr)
  sets = []
    (0...arr.length).each do |start_pos|
     sub_sets = []
      (start_pos...arr.length).each do |end_pos|
       sub_sets << arr[start_pos..end_pos]
      end
      sets += sub_sets
    end

  sets
end

def largest_contiguous_subarr_2(arr)
  largest = arr.first
  current = arr.first

  return arr.max if arr.all? { |num| num < 0 }

  (1...arr.length).each do |i|
    current = 0 if current < 0
    current += arr[i]
    largest = current if current > largest
  end

  largest
end
