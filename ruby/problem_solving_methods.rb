# sequence = [0, 1]

# def fib(n)
#   fib_array = [0, 1]
#   repeat = n - 2
#   repeat.times do
#     fib_array << fib_array[-1] + fib_array[-2]
#   end
#   p fib_array
# end

# fib(100)


#take in array of values
# compare first value with second value. if first is greater than second, swap first with second.
# continue iterating through index values until there are no more comparisons to be made


def bubble_sort array
  n = array.length

  loop do
    swapped = false

    (n-1).times do |index|
      if array[index] > array[index + 1]
        array[index], array [index+1] = array[index+1], array[index]
        swapped = true
        p array
      end
    end

    break if not swapped
  end

  array
end

a = [2, 5, 1, 10, 3, 5]
p bubble_sort(a)



