module RandomArrayGenerator
  def self.generate_random_array(size, min, max)

    #TODO: Generate an array of (size) random integers (Between min and max inclusive)
    array = []
    if size == 0 
    	return array
    end
    if size > 0 && max > min
	    for n in 1..size do
	    	array.push(rand(max+1-min)+min)
	    end
	    return array
	end
  end
end


# p RandomArrayGenerator.generate_random_array(-1, 10, 20)

