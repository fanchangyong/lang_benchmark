var util = require("util")

function fib(num){
	if(num==0) return 0;
	if(num==1) return 1;
	return fib(num-1) + fib(num-2)
}

var count = process.argv[2] || 0;
var result = fib(parseInt(count));

var str = util.format("result: %d",result)
console.log(str)
