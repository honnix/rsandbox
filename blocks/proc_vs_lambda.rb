def double(callable_object)
  callable_object.call * 2
end

l = lambda { return 10 }
double(l)

def another_double
  p = Proc.new { return 10 }
  result = p.call
  result * 2
end

another_double

p = Proc.new { return 10 }
# this fails with a LocalJumpError
# double(p)

p = Proc.new { 10 }
double(p)

p = Proc.new { |a, b| [a, b] }
p.arity
p.call(1, 2, 3)
p.call(1)

p = lambda { |a, b| [a, b] }
p.arity
# this fails with an ArgumentError
# p.call(1, 2, 3)
# p.call(1)
