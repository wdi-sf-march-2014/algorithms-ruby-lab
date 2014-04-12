module Searcher

  # Expects needle to be an Integer
  # Expects haystack to be an array of integers
  # Expects haystack to be a sorted (low [0] to high [length])

  def self.find_by_binary_search(needle, haystack)
    # Kick off the recursive search and return the result
    binary_search_impl haystack, needle, 0, haystack.length - 1
  end


  # Internal function to hide recursion parameters from outside world :)

  def self.binary_search_impl (sorted_haystack, needle, lowerBound, upperBound)

    debug = sorted_haystack.slice(lowerBound..upperBound)

    if lowerBound <= upperBound
      # An actual use for integer arithmetic
      middleIndex = (lowerBound + upperBound) / 2

      middle_value = sorted_haystack[middleIndex]

      if needle == middle_value
        # We have found our needle!
        true
      else
        if needle > middle_value
          # Need to Look in the next higher block
          lowerBound = middleIndex + 1
        else
          # Need to Look in the next lower block
          upperBound = middleIndex - 1
        end

        # Recurse into ourselves and return the result
        binary_search_impl sorted_haystack, needle, lowerBound, upperBound
      end
    else
      # We've run out of places to look
      false
    end
  end

end