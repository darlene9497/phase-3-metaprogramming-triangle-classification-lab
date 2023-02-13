class Triangle
  def initialize(x1, x2, x3)
    @x1 = x1
    @x2 = x2
    @x3 = x3
  end
  def kind
   def equilateral?
    @x1 == @x2 && @x2 == @x3
  end
   def isosceles?
    @x1 == @x2 || @x2 == @x3 || @x1 == @x3
  end
   def scalene?
    @x1 != @x2 && @x2 != @x3 && @x1 != @x3
  end
    if @x1 == 0 || @x2 == 0 || @x3 == 0
      raise TriangleError
    elsif @x1 < 0 || @x2 < 0 || @x3 < 0
      raise TriangleError
    elsif @x1 + @x2 <= @x3 || @x1 + @x3 <= @x2 || @x2 + @x3 <= @x1
      raise TriangleError
    elsif equilateral?
      :equilateral
    elsif isosceles?
      :isosceles
    elsif scalene?
      :scalene
    end
  end
  class TriangleError < StandardError
  end
 
end

