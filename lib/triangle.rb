class Triangle
  attr_accessor :a, :b, :c 
  
  def initialize (a, b, c)
    @side1 = side1
    @side2 = side2
    @side3 = side3
  end
  
  def kind 
    side1, side2, side3 = [@side1, @side2, @side3].sort
    raise TriangleError if side1<=0 or side1 = side2 <= side3
    return :equilateral if side1 == side3
    return :isosceles if side1 == side2 or side2 == side3
    return :scalene
  end
  
class TriangleError < StandardError
  end

end
