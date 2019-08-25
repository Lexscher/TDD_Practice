class Calculator

  def add(a, b)
    a + b
  end

  def subtract(a, b)
    a - b
  end

  def multiply(a, b)
    a * b
  end

  def divide(a, b)
    a / b
  end

  def factorial(a)
    return 1 if (a == 0)
    num = a
    i = 1
    while i < a
      num *= i
      i += 1
    end
    num
  end

end