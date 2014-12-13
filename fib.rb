
def fib(num)
	if num==0 then
		return 0
	end

	if num==1 then
		return 1
	end

	return fib(num-1) + fib(num-2)
end

n=0

if ARGV[0] then
	n=ARGV[0].to_i
end

result=fib(n)
puts "result: #{result}"
