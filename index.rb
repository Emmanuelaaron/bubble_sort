def bubble_sort(my_array)
  i = 0
  j = 0
  until i == my_array.length 
    j = i + 1
    while j < my_array.length
      my_array[i], my_array[j] = my_array[j], my_array[i] if my_array[i] > my_array[j]
      j += 1
    end
    i += 1
  end
  my_array
end


def bubble_sort_by(my_array)
  i = 0
  j = 0
  until i == my_array.length
    j = i + 1
    while j < my_array.length
      my_array[i], my_array[j] = my_array[j], my_array[i] if yield(my_array[i], my_array[j]).positive?
      j += 1
    end
    i += 1
  end
  my_array
end
