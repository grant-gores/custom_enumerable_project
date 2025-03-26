module Enumerable
  # Your code goes here
  def my_each_with_index
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
        return false if yield(item)
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
  end

  def my_count
  end

  def my_map
    new_array = []
    for item in self
        new_array << yield(item)
    end
    new_array
  end

  def my_inject
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