sequence = [0, 1]

def fib(n)
  fib_array = [0, 1]
  repeat = n - 2
  repeat.times do
    fib_array << fib_array[-1] + fib_array[-2]
  end
  p fib_array
end

fib(100)