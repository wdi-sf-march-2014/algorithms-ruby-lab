def bag_weight bag
  bag.inject(0) { |memo, item| memo + item[:weight] }
end

def find_count_in_all_bags(item, bags)
  bags.inject(0) do |countInAllBags, bag|
    countInAllBags + bag.inject(0) do |countInThisBag, itemInBag|
        if itemInBag == item
          countInThisBag + 1
        else
          countInThisBag
        end
    end
  end
end