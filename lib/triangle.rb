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
    if 
    else 
    end   
  end   
  
  class TriangleError < StandardError 
  end   
end
