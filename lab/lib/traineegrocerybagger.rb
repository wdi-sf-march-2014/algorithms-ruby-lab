module TraineeGroceryBagger

  MAX_BAG_WEIGHT = 10

  def self.pack items
    bags = nil if items == nil 
    bags = nil if items == [] 
   	
   	while items.length > 0 do
	   	tot_wt = 0 
	    while tot_wt <= 10 do |i|
	    	# choose the next item, and put it in the bag if it 
	    	# doesn't make the bag total weight more than 10
	    	# else start a new bag
	    	if tot_wt + item[i] 


	    	else
	    end 
	end


    if bag[i] = 



    #TODO: Put all the items in bags with no bag weighing more than MAX_BAG_WEIGHT
    #Return the Bags in an array
    #Return each bag as an array of items
    #Note: there's no need to balance or optimize the bagging

    return bags
  end

end