def add(a, b)
  a + b
end

def sum(arr)
  return 0 if arr.length == 0
  sum = 0
  arr.each do |s|
    sum += s
  end
  sum
end

def subtract(a, b)
  a - b
end
