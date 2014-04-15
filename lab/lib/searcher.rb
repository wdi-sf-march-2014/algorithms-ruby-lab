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

    #TODO: Give it a go!
    #Plan out you algorithm

    false
  end

end

example_array = [10, 21, 34, 99, 104, 195]

s_i = mid + 1
e_i = len - 1
target = number to find


def binary_search(arr, target, s_i, e_i)
	#base case  = found the target or s_i = e_i
	mid = s_i + e_i / 2
	mid_val = arr[mid] #i.e. get me the value at mid, will return 34 in the first case



