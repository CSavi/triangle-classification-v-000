class Triangle
  
  attr_accessor :equilateral, :isosceles, :scalene, :x, :y, :z
  
  def initialize(equilateral, isosceles, scalene)
    @equilateral = equilateral
    @isosceles = isosceles
    @scalene = scalene
  end   
  
  def kind 
    if 
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
