module RandomArrayGenerator
  def self.generate_random_array(size, min, max)

    if size < 0 || min > max
      nil
    else
      if size == 0
        []
      else
        Array.new(size){ rand(min..max) }
      end
    end
  end
end
