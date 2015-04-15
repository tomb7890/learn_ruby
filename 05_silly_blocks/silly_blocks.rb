def reverser
    yield.reverse
end

def adder(x=nil)
  operand = yield
  operand = operand + 1
end
