module MathExpert

  #http://en.wikipedia.org/wiki/Factorial

  #5! = 5 *  4 *  3 *  2 *  1 = 120
  #answer = (n) * (n-1) * (n-2) * (n-3) * (n-4) * (n-5) ...

  #iterative: 
  #TODO: Implement factorial using a loop

  def self.calculate_factorial_iterative(n)
    # fac = 0

    # n.times do |i|
    # fac += n * (n-(i+1))
    # end
    # return fac

    # n.times do |i|
    # n *= (n-(i+1))

    # i = n
    # fac = n  
    # while i > 0 do
    #   fac = fac * (n -= 1)
    #   i -= 1
    # end
    # return fac

    # i = n
    # fac = 1 
    # while i > 0 do
    #   fac = fac * n
    #   n -= 1
    # end
    # return fac

    if n == 0 
      1
    else
      factorial = 1
      n.times do |x|
        factorial *= (n - x)
      end
      return factorial
    end
  end

  #recursive

  def self.calculate_factorial_recursive(n)
    if n == 0 
      1
    else
      n * self.calculate_factorial_recursive(n-1)
    end
  end


end