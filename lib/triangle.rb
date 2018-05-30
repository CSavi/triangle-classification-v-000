require 'pry'
class Triangle
  
  attr_accessor :x, :y, :z, :first_angle, :second_angle, :third_angle
  
  def initialize(x, y, z)
    @x = x
    @y = y
    @z = z
  end   
  
  def kind 
    if x == y && y == z
      equilateral
    elsif x == y && y > z
      isosceles
    else
      scalene 
    end   
      
  end   
  
  class TriangleError < StandardError 
  end   
end
