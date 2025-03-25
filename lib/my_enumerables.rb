module Enumerable
  # Your code goes here
end

# You will first have to define my_each
# on the Array class. Methods defined in
# your enumerable module will have access
# to this method
class Array
  # Define my_each here
end

# class Array
#   def my_each
#       for item in self
#           yield(item)
#       end
#   end
  
#   def my_map
#       new_array = []
#       for item in self
#           new_array << yield(item)
#       end
#       new_array
#   end
  
#   def my_any?
#       for item in self
#           return true if yield(item)
#       end
#       false
#   end
  
#   def my_all?
#       for item in self
#           return false if yield(item)
#       end
#       true
#   end
  
#   def my_select
#       new_array = []
#       for item in self
#           if yield(item)
#               new_array << item
#           end
#       end
#       new_array
#   end
  
# end


# [1, 2, 3].my_each do |item|
#   puts item + 10
# end

# [1, 2, 3].my_map do |item|
#   puts item * 2
# end

# [1,2,3].my_any? do |item|
# item == 1
# end

# [1,2,3].my_all? do |item|
# item == 1
# end

# [1,2,3].my_select do |item|
# item == 1
# end

