module MathExpert

  #http://en.wikipedia.org/wiki/Factorial

  #5! = 5 *  4 *  3 *  2 *  1 = 120
  #answer = (n) * (n-1) * (n-2) * (n-3) * (n-4) * (n-5) ...

  #iterative
  def self.calculate_factorial_iterative n
    factorial = 1
    n.times do |x|
    factorial *= (n-x)
  end
    factorial
  end


  #   return 1 if n.zero?
  #   1.upto(n).inject(:*)
  # end

  #   result  = 1

  #   for n in (1..4)
  #     result *= n
  #   end
    
  #   result
  # end
    #TODO: Implement factorial using a loop

  #recursive
  def self.calculate_factorial_recursive n

    return 1 if n == 1
    return n * calculate_factorial_recursive(n-1)

  end

end
    #TODO: Implement factorial using recursion


 # end