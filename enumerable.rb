module Enumerable
    def my_each
        for value in self do
            
            yield value
        
        end
    end
    
    def my_each_with_index

        for index in (0...self.length) do
            yield self[index], index
        end
    end
    
    def my_select
        arr = []
        self.my_each do |value|
            arr << value if (yield(value) == true)
        end
            
        return arr
    end

    def my_all?(arg)
        
        self.my_each do |value|
            return false if (yield(value) == false)
        end  
        return true
    end


    def my_any?

        self.my_each do |value|
            return true if ((yield(value) != false) && (yield(value) != nil))
        end
        return false    
    end


    def my_none?

        self.my_each do |value|
        return false if (!(yield(value) == false) && !(yield(value) == nil))
            
        return true    
        end
    end 
    
    def my_count(arg = nil)
        count = 0
        if (block_given?)
            self.my_each do |value|
                count += 1 if (yield(value) == true)
            end    
            
        elsif (arg != nil) then
            count = arg
        else count = self.length
        end
        return count    
    end


    def my_map
        arr = []
        if (block_given?)
            self.my_each do |value|
                arr << yield(value)
            end
        end        
        return arr
    end

    def my_inject(proc,&block)
        start = self[0]  

        if (block.() && !proc)
            return start if self.length <= 1

            self.my_each  {|value| start = block.call(start, value)}
        elsif(!block_given? && proc )
            return start if self.length <= 1
            
            self.my_each  {|value| start = proc.call(start, value)}
        else
            return start if self.length <= 1

            self.my_each {|value| start = block.call(start, value)}

            self.my_each {|value| start = proc.call(start, value)}
        end    
        return start
    end

   
end


