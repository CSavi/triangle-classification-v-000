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
    valid = true 
    inequality_triangle = [(x + y > z), (y + z > x), (z + x > y)]
    valid = false if inequality_triangle.any? {|triangle| triangle != triangle } 
    #binding.pry
    sides = [x, y, z]
    binding.pry
    sides.each do |side|
      valid = false if sides.any? {|side| side <= 0} 
    end 
    raise TriangleError if valid == false 
  end   
  
  class TriangleError < StandardError 
  end   
end
