def bubble_sort(arr)
  iterate = arr.length - 1
  loop do
    swapped = false
    iterate.times do |i|
      next unless arr[i] > arr[i + 1]

      temp = arr[i + 1]
      arr[i + 1] = arr[i]
      arr[i] = temp
      swapped = true
    end
    break if swapped == false
  end
  arr
end

bubble_sort([4, 3, 78, 2, 0, 2])
