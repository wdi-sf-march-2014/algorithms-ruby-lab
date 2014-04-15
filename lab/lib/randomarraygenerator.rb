module RandomArrayGenerator
  def self.generate_random_array(size, min, max)

    #TODO: Generate an array of (size) random integers (Between min and max inclusive)
  #   size = 5
		# min = 1
		# max = 25
		if size < 0
			return nil
		elsif min > max
			return nil
		else
			my_array = []
			size.times do 
				my_array << (min..max).to_a.sample
			end
		end
		my_array
	end

end