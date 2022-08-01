class Array

    def my_each(&prc)
        i=0
        while i<self.length
        
            prc.call(self[i])

        i+=1
        end 
        return self
    end
    
    def my_select(&prc)
        new_array = []
        self.my_each { |ele| new_array << ele if prc.call(ele) == true}
        new_array
    end
     
    def my_reject(&prc)
        new_array=[]
        self.my_each{ |ele| new_array<< ele if prc.call(ele)==false}
        new_array
    end 

    def my_any?(&prc)
        self.my_each{|ele| return true if prc.call(ele)}
        return false 
    end 

    def my_all?(&prc)
        self.my_each{|ele| return false if !prc.call(ele)}
        return true
    end 

    #self [1, 2, 3, [4, [5, 6]], [[[7]], 8]]
    def my_flatten

        flattened = []

        self.my_each do |sub_self|
            if sub_self.is_a?(Array)
                flattened += sub_self.my_flatten
            else
                flattened << sub_self
            end
        end

        return flattened
    end

end 