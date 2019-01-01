# Project 1: Bubble Sort
# Sorting algorithms are some of the earliest that you typically get exposed to in Computer Science. It may not be immediately obvious how important they are, but it shouldn’t be hard to think of some examples where your computer needs to sort some massive datasets during everyday operations.

# One of the simpler (but more processor-intensive) ways of sorting a group of items in an array is bubble sort, where each element is compared to the one next to it and they are swapped if the one on the left is larger than the one on the right. This continues until the array is eventually sorted.

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
    break unless swapped
  end
  arr
end

bubble_sort([4, 3, 78, 2, 0, 2])
