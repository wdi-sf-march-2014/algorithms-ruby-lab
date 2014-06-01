
# Get the idea of the sort from WikiPedia
# http://en.wikipedia.org/wiki/Bubble_sort

module Sorter

  # def self.sort_array numbers
  #   #TODO: Sort the array of numbers from low to high in the same array and return the array
  #   numbers
  # end

  # def self.swap_items_in_array items, indexA, indexB
  #   #TODO: Swap the items at indexA and indexB and return the items
  # end

  def self.sort_array numbers
      #bubble sorting
      (numbers.length - 1).times do |iteration|
        (numbers.length - 1).times do |idx|
          swap_items_in_array(numbers, idx, idx + 1) if numbers[idx] > numbers[idx + 1]
        end
      end
      numbers
    end

    def self.swap_items_in_array items, indexA, indexB
      tempItem = items[indexA]
      items[indexA] = items[indexB]
      items[indexB] = tempItem
      items
    end
end