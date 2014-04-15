module TraineeGroceryBagger

  def self.pack(items)
    if items == nil
    	bags = nil
    elsif items.length == 0
    	bags = nil
    else
    	bags = []
	    bag_index = 0
	    bags[bag_index] = []
	    current_bag_weight = 0
			item_index = items.length-1
   		
   		until item_index < 0 do 

	    	if (current_bag_weight + items[item_index][:weight]) > 10
	    		bag_index += 1
	    		bags[bag_index] = []
	    		current_bag_weight = 0
	    	end
				
				bags[bag_index].push(items[item_index])
				current_bag_weight += items[item_index][:weight]
				item_index -= 1
			end

			return bags
  	end
  end
end
