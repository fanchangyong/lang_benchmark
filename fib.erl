-module(fib).

-export([start/1]).

fib(N)->
	case N of
		0->0;
		1->1;
		_->
			fib(N-1)+fib(N-2)
	end.

start(N)->
	Result=fib(N),
	io:format("Result: ~p~n",[Result]).
