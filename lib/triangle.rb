class Triangle
  # write code here
  attr_accessor :a, :b, :c
  def initialize(a,b,c)
    @a=a
    @b=b
    @c=c
  end

  def kind
    valid_triangle  

    if a==b && b==c
      :equilateral
    elsif a!=b && b!=c && a!=c
      :scalene
    else
      :isosceles
    end
  end

  def triangle_inequality?
    a+b>c && a+c>b && c+b>a
  end

  def positive_triangle?
    [a,b,c].all?(&:positive?)
  end

  def valid_triangle
   raise TriangleError unless triangle_inequality? && positive_triangle?
  end

  class TriangleError < StandardError
    # triangle error code
  end

  
end
