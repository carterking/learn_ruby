def add(x,y)
    x + y
end

def subtract(x,y)
    x - y
end

def sum(x)
    x.inject(0){|sum,z| sum + z }
end

def multiply(*nums)
    nums.inject(:*)
end

def power(x,y)
    x ** y
end

def factorial(x)
    y = x
    total = 1
    while y > 0
        total = total * y
        y = y - 1
    end
    return total
end
