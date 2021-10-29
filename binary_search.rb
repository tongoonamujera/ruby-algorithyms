module Binary_search
  def binary_search(arr, key)
    
    lower_bount, upper_bount = 0, arr.size - 1
    midpoint = upper_bount / 2
    while lower_bount < upper_bount
      if arr[midpoint] == key
        true
      elsif arr[midpoint] < key
        lower_bount = midpoint
        midpoint = upper_bount + lower_bount / 2
      else
        upper_bount = midpoint - 1
        midpoint = upper_bount + lower_bount / 2
      end
    end
    false
  end
end

include Binary_search

arr = [15,16,17,18,19]

puts binary_search(arr, 17)
