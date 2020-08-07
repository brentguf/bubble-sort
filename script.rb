def bubble_sort(arr)
  sorted = false

  until sorted 
    swapped = false
    arr.each_with_index do |el, i| 
      if arr[i+1] && arr[i] > arr[i+1]
        temp = arr[i]
        arr[i] = arr[i+1]
        arr[i+1] = temp
        swapped = true
      end
    end
    
    if swapped == false 
      sorted = true
    end
  end

  arr
end

p bubble_sort([2,1])
# => [1,2]

p bubble_sort([3,2,1])
# => [1,2,3]

p bubble_sort([4,3,78,2,0,2])
# => [0,2,2,3,4,78]