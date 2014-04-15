module MathExpert

  #5! = 5 *  4 *  3 *  2 *  1 = 120

  #iterative
  def self.calculate_factorial_iterative(n)
    f = 1
    while n > 0 do
      f = f*n
      n -= 1
    end
    return f
  end


  #recursive
  def self.calculate_factorial_recursive(n)
    n = n*self.calculate_factorial_recursive(n-1) unless n == 1
    return n
  end

end