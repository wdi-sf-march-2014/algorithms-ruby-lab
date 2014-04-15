module RandomArrayGenerator

  def self.generate_random_array(size, min, max)

    #TODO: Generate an array of (size) random integers (Between min and max inclusive)
    return nil if size < 0
    return nil if min > max
    arr = []
    size.times do 
    arr << (rand(max - min)) + min
	end
	return arr
  end
end
