require 'byebug'

class Map 
  
  def initialize
    @map = []
  end

  def set(key,value)
     
    @map.each do |arr|
        if @map.empty? || !@map.include?([key,value])
          @map << [key,value]
        elsif arr[0] == key && arr.include?(el) 
            arr[0] = value 
        end 

    end
    @map
  end

  def get(key)
    @map.each do |arr|
      arr.each do |el|
        return el if el == key && arr.index(el) == 0
      end
    end
  end

  def delete(key)
    @map.each do |arr|
      arr.each do |el|
        arr.shift if el == key && arr.index(el) == 0 
      end
    end
  end 

  def show 
    @map
  end 


end

p 1111