require 'pry'
class Array
  def keep
    new_arr = []
    self.each do |f| 
      if yield f
        new_arr << f
      end
    end
    new_arr
  end
end