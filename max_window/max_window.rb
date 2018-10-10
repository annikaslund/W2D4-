def max_windowed_range(array, window_size)
  current_max_range = nil

  array.each_with_index do |el, i|
    break if i == array.length - 1
    window = array[i...i+window_size]
    range = window.max - window.min
    current_max_range = range if current_max_range.nil? || range > current_max_range
  end

  current_max_range
end
