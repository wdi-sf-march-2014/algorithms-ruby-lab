
    #TODO: Put all the items in bags with no bag weighing more than MAX_BAG_WEIGHT
    #Return the Bags in an array
    #Return each bag as an array of items
    #Note: there's no need to balance or optimize the bagging

module TraineeGroceryBagger

  MAX_BAG_WEIGHT = 10

  def self.pack (items)
    if items == nil || items == []
    	return nil
    end

    array_of_bags = [[]]
    current_bag_index = 0
    current_bag_weight = 0

    items.each {|current_item|
      if ((current_bag_weight+current_item[:weight]) <= MAX_BAG_WEIGHT)
    		array_of_bags[current_bag_index].push(current_item)
    		current_bag_weight += current_item[:weight]
      else
        current_bag_index += 1
        array_of_bags[current_bag_index] = []
        current_bag_weight = 0
        array_of_bags[current_bag_index].push(current_item)
        current_bag_weight += current_item[:weight]
    	end
    }
    return array_of_bags
  end

end

