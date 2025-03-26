module Enumerable
  # Your code goes here
  def my_each_with_index
    index = 0
    for item in self
      yield(item, index)
      index += 1
    end
  end

  def my_select
    new_array = []
    for item in self
        if yield(item)
            new_array << item
        end
    end
    new_array
  end

  def my_all?
    for item in self
        return false unless yield(item)
    end
    true
  end

  def my_any?
    for item in self
        return true if yield(item)
    end
    false
  end

  def my_none?
    for item in self
      return false if yield(item)
    end
    true
  end

  def my_count
    count = 0
    for item in self
      if block_given?
      count += 1 if yield(item)
      else
        count += 1
      end
    end
    count
  end

  def my_map
    new_array = []
    for item in self
        new_array << yield(item)
    end
    new_array
  end

  def my_inject(accumulator = nil)
    if accumulator.nil?
      accumulator = self[0]
      index = 1
    else
      index = 0
    end

    for i in index...self.length
      accumulator = yield(accumulator, self[i])
    end
    
    accumulator
  end
end

# You will first have to define my_each
# on the Array class. Methods defined in
# your enumerable module will have access
# to this method
class Array
  # Define my_each here
  def my_each
      for item in self
          yield(item)
      end
  end
end