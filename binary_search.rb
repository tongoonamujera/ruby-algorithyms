def binary_search(arr, key)
  # return nil if arr.empty?

  lower_bount, upper_bount = 0, arr.size - 1
  while (lower_bount <= upper_bount)
    midpoint = (upper_bount) / 2
    if arr[midpoint] > key
      upper_bount = midpoint - 1
    elsif arr[midpoint] < key
      lower_bount = midpoint + 1
    else
      midpoint
    end
  end
  - 1
end

arr = [15,16,17,18,19]

puts binary_search(arr, 15)
