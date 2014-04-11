
# Get the idea of the sort from WikiPedia
# http://en.wikipedia.org/wiki/Bubble_sort

# procedure bubbleSort( A : list of sortable items )
# n = length(A)
# repeat
# swapped = false
# for i = 1 to  n-1 inclusive do
# /* if this pair is out of order */
# if A[i-1] > A[i] then
#   /* swap them and remember something changed */
#   swap( A[i-1], A[i] )
#   swapped = true
# end if
# end for
# until not swapped
# end procedure

module Sorter

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