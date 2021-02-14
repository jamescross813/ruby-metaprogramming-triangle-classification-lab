class Triangle
  # triangle code
attr_reader :a, :b, :c
  @lengths = []

  def initialize(a, b, c)
   
    @a = a
    @b = b
    @c = c
  end

    def kind
       triangle?
      if @a == @b && @b == @c
        :equilateral
      elsif @a == @b || @b == @c || @a == @c
        :isosceles
      else
        :scalene
      end
    end

  def triangle?
    triangle = [(a + b > c), (a + c > b), (c + b > a)]
    [a, b, c].each do |side|
      triangle << false if side <= 0 
      raise TriangleError if triangle.include?(false)
    end
    
  end
    class TriangleError < StandardError
      # triangle error code
    end
end 