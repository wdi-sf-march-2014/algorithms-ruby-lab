module TraineeGroceryBagger

  MAX_BAG_WEIGHT = 10

  # __Very__ simple Bagging Algorithm
  # What are some ways it could be improved?
  # How could we use less bags?

  def self.pack items
    bags = nil

    unless items.nil? || items.empty?

      # Set up empty bag list
      bags = []

      # Open the first bag
      currentBag = []
      bags << currentBag

      items.each do |item|

        #Check the weight of the current bag
        currentWeight = bag_weight currentBag

        if (currentWeight + item[:weight]) > MAX_BAG_WEIGHT

          # Open the new bag
          currentBag = []
          bags << currentBag
        end

        # Put Item in Bag
        currentBag << item
      end
    end
    bags
  end


  def self.bag_weight bag
    bag.inject(0) { |memo, item| memo + item[:weight] }
  end

end