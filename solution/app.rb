require_relative 'lib/sorter'


def gets_array_size
  array_size = -1
  begin
    puts "How many number should I put in the array to sort (0 - 3000)?"
    user_input = gets.chomp
    array_size = user_input.to_i unless user_input == ""
  end until (array_size >= 0 && array_size <= 3000)
  array_size
end

array_size = gets_array_size

numbers = Sorter.generate_random_array array_size

Sorter.sort_array numbers
