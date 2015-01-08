use std::os;

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
	let mut n : i32 = 0;
    if os::args().len()>1 {
        let arg1 = os::args()[1].trim().parse::<i32>();
        n = match arg1{
            Some(arg1) => arg1,
            None => {
                0
            }
        }
    }
	let result = fib(n);
	println!("result of {} is:{}",n,result);
}
