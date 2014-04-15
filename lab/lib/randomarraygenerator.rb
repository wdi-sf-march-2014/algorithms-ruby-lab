module RandomArrayGenerator

  def self.generate_random_array(size, min, max)

  	if size > 0 && min < max
  		array = []
  		
  		size.times do |i|
  			array.push(rand(min..max))
  		end

  	elsif size == 0
  		array = []
  	end

  	return array

  end
end



    #TODO: Generate an array of (size) random integers (Between min and max inclusive)