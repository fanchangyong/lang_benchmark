
fn fib(n: i32) -> i32{
	if n==0 {
		return 0;
	}
	if n==1 {
		return 1;
	}
	return fib(n-1)+fib(n-2);
}

fn main(){
	let n = 44;
	let result = fib(n);
	println!("result of {} is:{}",n,result);
}
