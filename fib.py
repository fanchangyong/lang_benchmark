import sys
import string

def fib(n):
  if(n==0): return 0
  if(n==1): return 1
  return fib(n-1) + fib(n-2)

n=0
if(len(sys.argv)>1): n=string.atoi(sys.argv[1])

result=fib(n)
print "result: ",result
