module RandomArrayGenerator
  def self.generate_random_array(size, min, max)

    #TODO: Generate an array of (size) random integers (Between min and max inclusive)
  	if max > min && size >= 0
  		array = Array.new(size)
			range = (min..max).to_a
			n = 1
			while n <= size
				take = range.shuffle.pop
				array << take
				n += 1	
			end
		else
			return nil
		end
		return array.compact
	end
end
