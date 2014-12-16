function fib(n)
	if n==0 then
		return 0
	elseif n==1 then
		return 1
	end
	return fib(n-1) + fib(n-2)
end

local num = 0
if(#arg>0) then
	num = tonumber(arg[1])
end

print("Result:",fib(num))
