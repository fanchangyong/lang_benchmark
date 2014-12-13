package main

import "fmt"
import "os"
import "strconv"

func fib(n int) int {
	if n == 0 {
		return 0
	} else if n == 1 {
		return 1
	}
	return fib(n-1) + fib(n-2)
}

func main() {
	arg_num := len(os.Args)
	var num int
	if arg_num < 2 {
		num = 0
	} else {
		num, _ = strconv.Atoi(os.Args[1])
	}
	result := fib(num)
	fmt.Printf("result: %d\n", result)
}
