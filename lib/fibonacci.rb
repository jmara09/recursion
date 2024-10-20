def fibs(length, array = [])
  return array if length.zero?

  length.times do |index|
    if index + 1 == 1
      array.push(0)
    elsif index + 1 == 2
      array.push(1)
    else
      array.push(array[index - 1] + array[index - 2])
    end
  end
  array
end

def fibs_rec(length, array = [], index = length - 1)
  if length.between?(1, 2)
    array = length == 1 ? [0] : [0, 1]
  else
    array = fibs_rec(length - 1)
    array[index] = array[index - 1] + array[index - 2]
  end
  array
end
