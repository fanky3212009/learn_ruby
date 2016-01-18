def add(a, b)
  a + b
end

def subtract(a, b)
  a - b
end

def sum(arr)
  arr.reduce(0, :+)
end

def multiply(arr)
  arr.reduce(1, :*)
end

def factorial(num)
  if num != 0
    (1..num).reduce(:*)
  else
    1
  end
end
