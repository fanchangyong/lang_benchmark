all: fib_c fib_c_o3 fib_go fib.class fib.beam fib_rs

fib_c_o3:fib.c
	gcc -O3 -o fib_c_o3 fib.c

fib_c:fib.c
	gcc -o fib_c fib.c

fib_rs:fib.rs
	rustc -O -o fib_rs fib.rs

fib_go:fib.go
	go build -o fib_go fib.go

fib.class:fib.java
	javac fib.java

fib.beam:fib.erl
	erlc fib.erl

.phony: run clean

run:all
	@echo "**C with O3**"
	@time -p ./fib_c_o3 ${n}

	@echo "\n\n**C **"
	@time -p ./fib_c ${n}

	@echo "\n\n**Rust **"
	@time -p ./fib_rs ${n}

	@echo "\n\n**Go**"
	@time -p ./fib_go ${n}

	@echo "\n\n**Java**"
	@time -p java fib ${n}

	@echo "\n\n**Nodejs**"
	@time -p node fib.js ${n}

	@echo "\n\n**Lua**"
	@time -p lua fib.lua ${n}

	@echo "\n\n**Ruby**"
	@time -p ruby fib.rb ${n}

	@echo "\n\n**Python**"
	@time -p python fib.py ${n}


clean:
	rm -f fib_c_o3 fib_c fib_go fib.class fib.beam \
		erl_crash.dump fib_rs
