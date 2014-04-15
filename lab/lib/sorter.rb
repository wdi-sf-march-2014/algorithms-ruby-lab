module Sorter

	def self.swap_items_in_array (items, indexA, indexB)

		x = items[indexA]
		items[indexA] = items[indexB]
		items[indexB] = x
		items
  end

  def self.sort_array (numbers)

  	n = numbers.length-1

  	until n == 0
  		if numbers[n] > numbers[n-1]
  			n -= 1
  		else
  			self.swap_items_in_array(numbers,n,n-1)
  			n = numbers.length-1
  		end
  	end

  	return numbers

  end

end
