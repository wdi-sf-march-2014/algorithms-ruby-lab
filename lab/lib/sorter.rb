
# Get the idea of the sort from WikiPedia
# http://en.wikipedia.org/wiki/Bubble_sort

module Sorter

  def self.sort_array (numbers)
    #TODO: Sort the array of numbers from low to high in the same array and return the array
    change = false
    for x in 0..(numbers.size-1)
    	for y in 0..(numbers.size-2)
    		if numbers[y] > numbers [y+1] 
    			swap_items_in_array(numbers,y,y+1)
    			change = true
    		end
    	end
    	if !(change) 
    		return (numbers)
    	end
    	change = false
    end
    numbers
  end

  def self.swap_items_in_array (items, indexA, indexB)
    #TODO: Swap the items at indexA and indexB and return the items
    if indexA != indexB
	    temp = items[indexA]
	    items[indexA] = items[indexB]
	    items[indexB] = temp
	end
	return items
  end

end

p Sorter.swap_items_in_array([3,5,6,6,77,7], 0,3)
a = [12,0,5,4,63,7,357,45,7,45,8,245,2,45,43,56,34,56,3]
p Sorter.sort_array (a)