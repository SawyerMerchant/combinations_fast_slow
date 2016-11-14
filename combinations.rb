require 'benchmark'

def fact(n)
  return 1 if n == 0
  return n if n <= 2
  n * fact(n-1)
end

def choose1(n,k)
  return 0 if n < k
  fact(n) / ( fact(k) * fact(n-k) )
end




def choose2(n,k)
  (1..n).to_a.combination(k).size
end





# puts "   User      System      Total      Real"
# puts Benchmark.measure{ choose1(10_000, 5)}

# puts Benchmark.measure{ choose2(100_000_000, 5)}



puts choose2(52, 7)

