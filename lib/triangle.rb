class Triangle
  class TriangleError < StandardError
    def message
      "this is not a triangle"
    end
  end
  
  attr_accessor :a, :b, :c
  
  def initialize(a, b, c)
    @a = a 
    @b = b 
    @c = c
  end
  
  def kind
    if (@a + @b < @c || @a + @c < @b || @b + @c < @a || @a <= 0 || @b <= 0 || @c <= 0 )
      begin
        raise TriangleError
      rescue TriangleError => error
          puts error.message
      end
    else if (@a == @b && @b == @c && @c == @a)
      :equilateral
    else if (@a == @b || @b == @c || @a == @c)
      :isosceles
    else
      :scalene
    end
  end
end