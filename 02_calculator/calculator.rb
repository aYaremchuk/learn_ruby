def add(a, b)
  a + b
end

def subtract(a, b)
  a - b
end

def sum(array)
  sum = 0
  for number in array
    sum += number
  end
  sum
end

def multiply(*members)
  multiply = 1
  members.collect{ |item| multiply *=item }
  multiply
end

def power (number, power)
  number**power
end

def factorial (number)
  factorial = 1
  if number > 1
    n = 1
    while n <= number do
      factorial *= n
      n += 1
    end
  end
  factorial
end