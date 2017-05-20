def search_array(array, n)
  array.each
    if array.include? n
      p array.rindex(n)
    end
end

array1 = [2, 4, 6, 8]

search_array(array1, 5)

search_array(array1, 3)