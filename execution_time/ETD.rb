def my_min(arr)
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

def my_min(arr)
  sorted = arr.sort
  sorted.first
end
