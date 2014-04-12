require 'rspec'

describe MathExpert do
  describe "#calculate_factorial_iterative" do
    it "should take 1 argument (1)" do
      expect(MathExpert).to respond_to(:calculate_factorial_iterative).with(1).arguments
    end
    it "should return 24 for 4" do
      expect(MathExpert.calculate_factorial_iterative(4)).to eq 24
    end
    it "should return 120 for 5" do
      expect(MathExpert.calculate_factorial_iterative(5)).to eq 120
    end
    it "should return 39916800 for 11" do
      expect(MathExpert.calculate_factorial_iterative(11)).to eq 39916800
    end
  end
  describe "#calculate_factorial_recursive" do
    it "should take 1 argument (1)" do
      expect(MathExpert).to respond_to(:calculate_factorial_recursive).with(1).arguments
    end
    it "should return 24 for 4" do
      expect(MathExpert.calculate_factorial_recursive(4)).to eq 24
    end
    it "should return 120 for 5" do
      expect(MathExpert.calculate_factorial_recursive(5)).to eq 120
    end
    it "should return 39916800 for 11" do
      expect(MathExpert.calculate_factorial_recursive(11)).to eq 39916800
    end
  end
end

describe RandomArrayGenerator do
  describe "#generate_random_array" do
    it "should take 3 arguments (size, min, max)" do
      expect(RandomArrayGenerator).to respond_to(:generate_random_array).with(3).arguments
    end

    it "should return nil if size is < 0" do
      expect(RandomArrayGenerator.generate_random_array(-1, 1, 100)).to eq nil
    end

    it "should return nil if min > max" do
      expect(RandomArrayGenerator.generate_random_array(3, 101, 100)).to eq nil
    end

    it "should return an array" do
      expect(RandomArrayGenerator.generate_random_array(5, 1, 1000)).to be_a Array
    end

    it "should return [] if size == 0" do
      expect(RandomArrayGenerator.generate_random_array(0, 1, 100)).to eq []
    end


    it "should return an array with length of the (size) parameter" do
      expect(RandomArrayGenerator.generate_random_array(5, 1, 99).length).to eq 5
    end

    it "should return an array of integers" do
      5.times do |x|
        expect(RandomArrayGenerator.generate_random_array(5, 50, 51)[x]).to be_a Integer
      end
    end

    it "should not return integers less than the min parameter" do
      40.times do |x|
        expect(RandomArrayGenerator.generate_random_array(40, 50, 51)[x]).to be >= 50
      end
    end

    it "should not return integers greater than the max parameter" do
      40.times do |x|
        expect(RandomArrayGenerator.generate_random_array(40, 64, 66)[x]).to be <= 66
      end
    end

    it "should return an array of random integers" do
      array1 = RandomArrayGenerator.generate_random_array(10, 1, 300000)
      array2 = RandomArrayGenerator.generate_random_array(10, 1, 300000)
      expect(array1).not_to eq array2
    end
  end
end

describe Sorter do

  before :each do
    @four_items = [4, 6, 3, 2]
    @four_items_copy = @four_items.clone
    @four_items_sorted = @four_items_copy.sort
  end

  describe "#swap_items_in_array" do
    it "should take 3 arguments" do
      expect(Sorter).to respond_to(:swap_items_in_array).with(3).arguments
    end

    it "should return the array" do
      expect(Sorter.swap_items_in_array(@four_items, 1, 2)).to be @four_items
    end

    it "should do nothing if both indices are the same" do
      expect(Sorter.swap_items_in_array(@four_items, 2, 2)).to eq @four_items_copy
    end
  end

  describe "#sort_array" do
    it "should take 1 argument" do
      expect(Sorter).to respond_to(:sort_array).with(1).argument
    end

    it "should return the same array object that was passed in" do
      expect(Sorter.sort_array(@four_items)).to be @four_items
    end

    it "should sort the array from lowest to highest" do
      expect(Sorter.sort_array(@four_items)).to eq @four_items_sorted
    end

    it "should not use the build in sort method" do
      @four_items.stub(:sort)
      @four_items.stub(:sort_by)
      @four_items.stub(:sort!)
      expect(Sorter.sort_array(@four_items)).to eq @four_items_sorted
    end

    ## This line demonstrates the use of xit to pend a test
    xit "should sort a very large array from lowest to highest" do
      puts "Trying to sort a bit array of numbers!"
      large_array = RandomArrayGenerator.generate_random_array(3000, 1, 300000)
      large_array_sorted = large_array.sort

      startTime = Time.now
      print "Here we go....."
      expect(Sorter.sort_array(large_array)).to eq large_array_sorted
      endTime = Time.now
      puts "..... Done! in #{endTime - startTime} ms"
    end

  end

end



=begin
The TraineeGroceryBagger packs your Items at the store into Bags

* Each Item has a weight of between 1 and 10 lbs

* Each Bag can only hold up to 10 lbs

* TraineeGroceryBagger.pack divides your Items up into Bags and returns an
array of all the bags

* Each item is represented as a Hash with :item and :weight keys

* Each bag is represented as an array of items

* Each item must be in one bag and one bag only


=end


describe TraineeGroceryBagger do
  describe "#pack" do
    let(:basic_items) {
      [
          {item: 'mangoes', weight: 2},
          {item: 'nectarines', weight: 1},
          {item: 'peaches', weight: 3},
          {item: 'avocado', weight: 4},
      ] }

    let(:heavy_items) {
      [
          {item: 'broccoli', weight: 10},
      ]
    }

    let(:more_items) {
      [
          {item: 'brussels sprouts', weight: 2},
          {item: 'pumpkin', weight: 7},
          {item: 'basil', weight: 1},
          {item: 'marjoram', weight: 1},

          {item: 'bread, ', weight: 2},
          {item: 'muffins', weight: 5},

          {item: 'baked beans', weight: 6},
          {item: 'coffee', weight: 8},
          {item: 'jam', weight: 2},
          {item: 'mayonnaise', weight: 9},
          {item: 'pasta', weight: 10},
          {item: 'pasta sauce', weight: 4},
          {item: 'tea', weight: 3},


          {item: 'cream', weight: 1},
          {item: 'eggs', weight: 2},
          {item: 'milk', weight: 4},
          {item: 'sour cream', weight: 5},

          {item: 'chips', weight: 2},
          {item: 'pizza', weight: 3},

          {item: 'cotton balls', weight: 10},

          {item: 'paper towels', weight: 2},
          {item: 'rubber gloves', weight: 1},
      ]
    }

    let(:all_items) { basic_items.concat more_items }

    it "should take 1 argument (items_array)" do
      expect(TraineeGroceryBagger).to respond_to(:pack).with(1).argument
    end

    it "should return nil if items_array is nil" do
      expect(TraineeGroceryBagger.pack(nil)).to eq nil
    end

    it "should return nil if items_array is empty" do
      expect(TraineeGroceryBagger.pack([])).to eq nil
    end

    describe "4 items weighing 10 lbs total" do
      let(:basic_items_packed) { TraineeGroceryBagger.pack basic_items }
      it "should return an array of bags" do
        expect(basic_items_packed).to be_a Array
      end
      it "should return an array of one bag" do
        expect(basic_items_packed.length).to be 1
      end
      it "should return an array of one bag which should itself be an array" do
        expect(basic_items_packed[0]).to be_a Array
      end
      it "should return an array of one bag containing all 4 items" do
        expect(basic_items_packed[0]).to include *basic_items
      end
    end

    describe "1 item weighing 10 lbs total" do
      let(:basic_items_packed) { TraineeGroceryBagger.pack heavy_items }
      it "should return an array of one bag" do
        expect(basic_items_packed.length).to be 1
      end
      it "should return an array of one bag containing the 1 item" do
        expect(basic_items_packed[0]).to include *heavy_items
      end
    end

    describe "5 items weighing 20 lbs total" do
      let(:basic_heavy_items) { heavy_items.concat basic_items }
      let(:basic_heavy_items_packed) {
          TraineeGroceryBagger.pack basic_heavy_items
      }

      it "should return an array of bags each weighing less than 10 lbs" do
        basic_heavy_items_packed.each do |bag|
          expect(bag_weight(bag)).to be <= 10
        end
      end

      it "should place each item in one (and only one) bag" do
        basic_heavy_items.each do |item|
          expect(find_count_in_all_bags(item, basic_heavy_items_packed)).to be 1
        end
      end

    end

    describe "All the items" do
      let(:all_items) { more_items.concat heavy_items.concat basic_items }
      let(:all_items_packed) {
        TraineeGroceryBagger.pack all_items
      }

      it "should return an array of bags each weighing less than 10 lbs" do
        all_items_packed.each do |bag|
          expect(bag_weight(bag)).to be <= 10
        end
      end

      it "should place each item in one (and only one) bag" do
        all_items.each do |item|
          expect(find_count_in_all_bags(item, all_items_packed)).to be 1
        end
      end

    end
  end
end





describe Searcher do

  before :all do
    @four_items = [2, 3, 5, 9]
    numbers = Array.new(100){ rand(1..10000) }.sort
    randIndex = rand(0..99)
    @findItem = numbers[randIndex]
  end

  describe "#find_by_binary_search" do
    it "should take 2 parameters" do
      expect(Searcher).to respond_to(:find_by_binary_search).with(2).arguments
    end
    it "should find a number that exists" do
      Searcher.find_by_binary_search(3, @four_items).should eq true
    end
    it "should find not a number that doesn't exist" do
      Searcher.find_by_binary_search(1, @four_items).should eq false
    end
  end

end
