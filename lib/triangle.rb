class Triangle
  attr_accessor = :s1, :s2,:s3

  def initialize(s1,s2,s3)
    @s1 = s1
    @s2 = s2
    @s3 = s3
  end

  def kind
    valid =(@s1 && @s2 && @s3) > 0 &&
    @s2 + @s3 > @s1 &&
    @s1 + @s2 > @s3 &&
    @s1 + @s3 > @s2 &&
    @s2 + @s3 > @s1
    raise TriangleError unless valid
        if @s1.eql?(@s2) && @s2.eql?(@s3)
          :equilateral
        elsif @s1.eql?(@s2) || @s2.eql?(@s3) || @s1.eql?(@s3)
          :isosceles
        else
          :scalene
      end
  end
  class TriangleError < StandardError
    def error
      "Triangle Error"
    end
  end
end