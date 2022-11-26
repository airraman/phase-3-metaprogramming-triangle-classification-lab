require 'pry'

class Triangle

  attr_accessor :length1, :length2, :length3

  def initialize(length1, length2, length3)
    @length1 = length1
    @length2 = length2
    @length3 = length3
    self.kind

  end 

  def kind
    if (length1 == length2 && length2 == length3)
       equilateral
    elsif (length1 == length2 or length2 == length3 or length1 == length3 ) 
       isosceles
    elsif (length1 != length2 && length2 != length3 && length1 != length3 )
       scalene
    elsif (lenth1 == 0 or length2 == 0 or length3 == 0)
      raise TriangleError
    else 
      begin 
        raise TriangleError
      rescue TriangleError => error
        puts error.message
      end
    end
  end

  class TriangleError < StandardError
    def message
      "Please provide a valid triangle"
    end
  end

end

shape = Triangle.new(20, 20, 20)

binding.pry