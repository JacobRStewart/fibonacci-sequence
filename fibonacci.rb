
def fib(n)
  return 0 if n == 0
  return 1 if n == 1
	array = [0,1]
	while array.length < n
		array << array[-1] + array[-2]
	end
	array
end

p fib(10)

def fib_rec(n, array=[0,1])
	return array if n == 0 || n == 1
	return array if array.length == n
	fib_rec(n, (array << array[-1] + array[-2]))
end

p fib_rec(15)
