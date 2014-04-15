module RandomArrayGenerator
  def self.generate_random_array(size, min, max)
  	@size = []
  	@min = min
  	@max = max
#     #TODO: Generate an array of (size) random integers (Between min and max inclusive)
 	if size < 0 || min > max
		nil
		elsif size == 0
			return []
		else
			Array.new(size){rand(min..max)}
		end
	end
end



# it "should take 3 arguments (size, min, max)" do
#       expect(RandomArrayGenerator).to respond_to(:generate_random_array).with(3).arguments
#     end

#     it "should return nil if size is < 0" do
#       expect(RandomArrayGenerator.generate_random_array(-1, 1, 100)).to eq nil
#     end

#     it "should return nil if min > max" do
#       expect(RandomArrayGenerator.generate_random_array(3, 101, 100)).to eq nil
#     end

#     it "should return an array" do
#       expect(RandomArrayGenerator.generate_random_array(5, 1, 1000)).to be_a Array
#     end

#     it "should return [] if size == 0" do
#       expect(RandomArrayGenerator.generate_random_array(0, 1, 100)).to eq []
#     end


#     it "should return an array with length of the (size) parameter" do
#       expect(RandomArrayGenerator.generate_random_array(5, 1, 99).length).to eq 5
#     end

#     it "should return an array of integers" do
#       5.times do |x|
#         expect(RandomArrayGenerator.generate_random_array(5, 50, 51)[x]).to be_a Integer
#       end
#     end

#     it "should not return integers less than the min parameter" do
#       40.times do |x|
#         expect(RandomArrayGenerator.generate_random_array(40, 50, 51)[x]).to be >= 50
#       end
#     end

#     it "should not return integers greater than the max parameter" do
#       40.times do |x|
#         expect(RandomArrayGenerator.generate_random_array(40, 64, 66)[x]).to be <= 66
#       end
#     end

#     it "should return an array of random integers" do
#       array1 = RandomArrayGenerator.generate_random_array(10, 1, 300000)
#       array2 = RandomArrayGenerator.generate_random_array(10, 1, 300000)
#       expect(array1).not_to eq array2
#     end
#   end
# end