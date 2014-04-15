
# Get the idea of the sort from WikiPedia
# http://en.wikipedia.org/wiki/Bubble_sort

module Sorter

def self.sort_array(numbers)
	numbers.each_index do |i|
		(numbers.length - i - 1).times do |compare|
			if numbers[compare] > numbers[compare + 1]
				numbers[compare], numbers[compare +1] = numbers[compare + 1], numbers[compare]
			end
		end
	end
    return numbers
  end


  def self.swap_items_in_array items, indexA, indexB
    #TODO: Swap the items at indexA and indexB and return the items
    temp = []
    temp << items[indexA]
    items[indexA] = items[indexB]
    items[indexB] = temp[0]
    return items

  end

end