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
  
  def valid_triangle?(x, y, z)
    sides = [x, y, z]
    false if sides.any? {|side| side == 0} 
    else 
    end 
    binding.pry
  end   
  
  class TriangleError < StandardError 
  end   
end
