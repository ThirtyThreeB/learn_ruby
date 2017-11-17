def add(num1, num2)
  num1+num2
end

def subtract(num1, num2)
  num1-num2
end

def sum(arr)
  total = 0
  arr.each do |i|
  total+=i
  end
total
end

def multiply(arr)
  total = 1
  arr.each do |i|
  total*=i
  end
total
end

def power(x,y)
  x**y
end

def factorial(x)
total=0
  if x==0 || x==1
    total=1
  else
    total=x
    while x>1
    total=total*(x-1)
    x=x-1
    end
  end
total
end
