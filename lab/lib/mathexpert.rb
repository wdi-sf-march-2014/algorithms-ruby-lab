module MathExpert

  #http://en.wikipedia.org/wiki/Factorial

  #5! = 5 *  4 *  3 *  2 *  1 = 120
  #answer = (n) * (n-1) * (n-2) * (n-3) * (n-4) * (n-5) ...

  #iterative
  def self.calculate_factorial_iterative n
    factorial = 1
    n.times do |x|
    factorial *= (n - x)
    end
      factorial
  end

  

  #recursive
  def self.calculate_factorial_recursive n
      return 1 if n == 1
      return n * self.calculate_factorial_recursive(n-1)
  end
  
end


