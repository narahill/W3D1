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


end 