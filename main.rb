module Enumerable
    # Your code goes here
  end
  
  # You will first have to define my_each
  # on the Array class. Methods defined in
  # your enumerable module will have access
  # to this method
  class Array
    # Define my_each here
    def my_each
       for item in self
        yield item
       end
    end
  
    def my_each_with_index
      index = 0
      for item in self
       yield item, index
       index += 1
      end
    end
  
    def my_select
      select = []
      for item in self
        if yield item
          select << item
        end
      end
      select
    end
  
    def my_all?
      select = []
      for item in self
        if yield item
          select << item
        end
      end
      select.length == self.length  
    end
  
    def my_any?
      select = []
      for item in self
        if yield item
          select << item
        end
      end
      select.length > 0
    end
  
    def my_none?
      select = []
      for item in self
        if yield item
          select << item
        end
      end
      select.length == 0
    end
  
    def my_count
      if block_given?
        select = []
        for item in self
          if yield item
            select << item
          end
        end
        select.length
      else self.length
      end
    end
  
    def my_map
      map = []
      for item in self
        map << yield(item)
      end
      map
    end
  
    def my_inject(accumulator = 0)
      for item in self
        accumulator = yield(accumulator, item)
      end
      accumulator
    end
  end
  