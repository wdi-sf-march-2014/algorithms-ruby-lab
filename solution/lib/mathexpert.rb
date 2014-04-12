module MathExpert

  #http://en.wikipedia.org/wiki/Factorial

  #5! = 5 *  4 *  3 *  2 *  1 = 120
  #answer = (n) * (n-1) * (n-2) * (n-3) * (n-4) * (n-5) ...

  #iterative
  def self.calculate_factorial_iterative n

    result  = 1

    for x in (2..n)
      result *= x
     end

    result
  end

  #recursive
  def self.calculate_factorial_recursive n
    if n > 1
      n * calculate_factorial_recursive( n - 1 )
    else
      n
    end
  end



end