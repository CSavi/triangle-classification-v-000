require 'pry'
class Triangle
  
  attr_accessor :equilateral, :isosceles, :scalene, :x, :y, :z, :first_angle, :second_angle, :third_angle
  
  def initialize(equilateral, isosceles, scalene)
    @equilateral = equilateral
    @isosceles = isosceles
    @scalene = scalene
  end   
  
  def kind 
    if (x == y && y == z) && (first_angle == second_angle && second_angle == third_angle)
      return equilateral
    elsif 
      return isosceles
    elsif
      return scalene 
    end   
      
  end   
  
  class TriangleError < StandardError 
  end   
end
