require 'pry'
class Triangle
  
  attr_reader :x, :y, :z
  
  def initialize(x, y, z)
    @x = x
    @y = y
    @z = z
  end   
  
  def kind 
    valid_triangle
    if x == y && y == z
      :equilateral
    elsif x == y || y == z || x == z
      :isosceles
    else
      :scalene 
    end   
  end  
  
  def valid_triangle
    inequality_triangle = [(x + y > z), (y + z > x), (z + x > y)]
    [x, y, z].each do |side|
      
    false if sides.any? {|side| side == 0 || side < 0} 
    true if sides.all? {|side| side }
    end 
  end   
  
  class TriangleError < StandardError 
  end   
end
