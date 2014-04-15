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
  	# find middle index
  	middleIndex = (haystack.size/2).round
  	# if array.size <=2 manually check if needle is inside and return true / false
  	if haystack.size <= 2 
  		haystack.each do |x|
  			if x == needle
  				abort("true")
  			end
  		end
  		abort("false")
  	end
  	# if haystack[middleIndex] == needle   	
  		# return true
	if haystack[middleIndex] == needle
		abort("true")
	elsif (haystack[middleIndex] > needle)
  		# apply binary search to array from Middleindex to end
  		find_by_binary_search(needle, haystack.first(middleIndex+1))
  	else 
  		# apply binary search to array from beginning to Middleindex
  		find_by_binary_search(needle, haystack.last(middleIndex+1))
  	end
  end

end

stack = [3,4,6,7,8,8,69,56,9,5,96,5,95,69,65,9,568,6,3,65,7]
stack.sort!
p stack
value = Searcher.find_by_binary_search(69,stack)
p value




# module Test
# 	def self.loopingfun(x)
# 		while x > 20
# 			if x>100
# 				abort("over 100")
# 			else
# 				loopingfun(x+1)
# 			end
# 		end
# 		return "overOver"
# 	end
# end


# p Test.loopingfun(30)

