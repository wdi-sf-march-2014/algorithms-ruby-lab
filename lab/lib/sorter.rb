
# Get the idea of the sort from WikiPedia
# http://en.wikipedia.org/wiki/Bubble_sort

module Sorter

  def self.sort_array numbers
    #TODO: Sort the array of numbers from low to high in the same array and return the array 
    n = 0
    (numbers.length**2).times do
	    if numbers[n+1] == nil
	    	numbers
	    elsif numbers[n] > numbers[n+1]
		    temp = numbers[n]
		    numbers[n] = numbers[n+1]
		    numbers[n+1] = temp
		    n = 0
		  else
		  	n += 1
	  	end
	  end
  	numbers
  end

  def self.swap_items_in_array items, indexA, indexB
    #TODO: Swap the items at indexA and indexB and return the items
    temp = items[indexA]
    items[indexA] = items[indexB]
    temp = items[indexB]
    items
  end

end