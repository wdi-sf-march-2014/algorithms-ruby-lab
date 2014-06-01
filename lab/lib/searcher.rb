=begin

OK - Don't stress out, but this one is pretty darn hard.

Note: I'm not expecting you necessarily to be able to complete the assignment
but have a go, the process of trying will be beneficial

You can think of this one as similar to the number guessing game where the host picks a
number between 1 and 100
Then you guess a number and the host tells you if it's higher or lower or correct!

The most efficient way to play the game is to pick the halfway '50' and based on the host's
answer then divide the upper or lower half in half, so your second guess is either '25' or '75'
and repeat the process again and again until you get the answer.

The big difference is that you are picking a position in the array, rather than the number itself

That doesn't matter to the logic tho, the array is sorted so middle index is still on average
the best place to start

Here's a sample in C
http://en.wikipedia.org/wiki/Binary_search_algorithm#Algorithm

There are two versions, the second one is "Iterative" which might be easier to build

=end


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