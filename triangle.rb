# Triangle Project Code.

# Triangle analyzes the lengths of the sides of a triangle
# (represented by a, b and c) and returns the type of triangle.
#
# It returns:
#   :equilateral  if all sides are equal
#   :isosceles    if exactly 2 sides are equal
#   :scalene      if no sides are equal
#
# The tests for this method can be found in
#   about_triangle_project.rb
# and
#   about_triangle_project_2.rb
#
def triangle(a, b, c)
  # WRITE THIS CODE
  
  begin
    c1 = (a==b) ? 1 : 0
    c2 = (b==c) ? 1 : 0
    c3 = (a==c) ? 1 : 0
    
    result = c1+c2+c3
    
    if (result == 3)
      return :equilateral
    elsif (result == 1)
      return :isosceles 
    else
      return :scalene
    end  
    
    if ((a<=0)||(b<=0)||(c<=0))
      raise TriangleError, "No triangle side could be 0 or minus."
    end
    
    if ((a+b<=c)||(a+c<=b)||(b+c<=a))
      raise TriangleError, "Not a triangle."
    end
    
  rescue TriangleError
    raise
  end
end

# Error class used in part 2.  No need to change this code.
class TriangleError < StandardError
end
