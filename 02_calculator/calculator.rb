
def add(a,b)
  return a + b
end

def sum( arr )
    return 0 if arr.length == 0
    sum = 0
    arr.each do |s|
      sum = sum + s
    end

    return sum
end

def subtract(a,b)
  return a - b
end
