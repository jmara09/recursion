def merge_sort(array, left = [], right = [])
  return 'Invalid empty array' if array.empty?

  if array.length == 1
    array
  else
    left = merge_sort(array.slice(0, array.length / 2))
    right = merge_sort(array.slice(array.length / 2, array.length))
    merge(left, right)
  end
end

def merge(left, right, array = [])
  loop do
    if left[0] < right[0]
      array << left[0]
      left.shift
    else
      array << right[0]
      right.shift
    end
    break if left.empty? || right.empty?
  end
  array + left + right
end
