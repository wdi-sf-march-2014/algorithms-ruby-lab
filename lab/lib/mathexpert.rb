module MathExpert

  #http://en.wikipedia.org/wiki/Factorial

  #5! = 5 *  4 *  3 *  2 *  1 = 120
  #answer = (n) * (n-1) * (n-2) * (n-3) * (n-4) * (n-5) ...

  # iterative
  def self.calculate_factorial_iterative (n)
    # TODO: Implement factorial using a loop
    factorial = 1
    x = n
    while x > 0
      factorial = factorial * x
      x -= 1
    end
    return factorial
  end

  #recursive
  def self.calculate_factorial_recursive (n)
    #TODO: Implement factorial using recursion
    if n > 0
      return (n * calculate_factorial_recursive(n-1))
    else
      return 1
    end
  end


end

p MathExpert.calculate_factorial_recursive(4)
p MathExpert.calculate_factorial_iterative(5)