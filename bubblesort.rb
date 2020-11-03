# frozen_string_literal: true

# A really bad bubbly sort
def bubble_sort(arr)
  counter = 0
  loop do
    (0...arr.length - 1).each do |i|
      if arr[i] < arr[i + 1]
        counter += 1
      else
        var = arr[i]
        arr[i] = arr[i + 1]
        arr[i + 1] = var
        counter = 0
      end
      puts counter
      p arr
    end
    break if counter == 3
  end
  p arr
end

bubble_sort([4, 3, 78, 2, 0, 2])
