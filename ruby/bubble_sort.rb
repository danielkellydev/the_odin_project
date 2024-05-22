def bubble_sort(array)
  array_length = array.size
  return array if array_length <= 1

  loop do 
    swapped = false

    (array_length-1).times do |i|
      if array[i] > array[i+1]
        array[i], array[i+1] = array[i+1], array[i]
        swapped = true
      end
    end

    break if not swapped 
  end

  array
end

puts (bubble_sort([6, 4, 7, 2, 9, 3]))