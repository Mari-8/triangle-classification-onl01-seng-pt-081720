require 'pry'
class Triangle
  
  attr_accessor :l_one, :l_two, :l_three 
  
  def initialize(l_one, l_two, l_three)
    @l_one = l_one 
    @l_two = l_two 
    @l_three = l_three
    @all_sides = [@l_one, @l_two, @l_three]
  end 
  
  
  def valid_triangle
    if @l_one + @l_two > @l_three && @l_one + @l_three > @l_two && @l_two + @l_three > @l_one || @l_one.positive? && @l_two.positive? && @l_three.positive? 
   end
  end 
  
  def kind 
     @all_sides.sort!
    if valid_triangle && valid_triangle2 
      puts true 
    else 
      raise TriangleError 
    end 
  end 
  
    if @l_one == @l_two && @l_two == @l_three && @l_three == @l_one
      :equilateral 
    elsif @l_one != @l_two && @l_two != @l_three && @l_three != @l_one
     :scalene
    else 
      :isosceles
  end 
end 
  
  def valid_triangle 
     x + y > z && x + z > y && y + z > x 
  end 
  
  def valid_triangle_two 
    x.positive? && y.positive? && z.positive?
  end 
  
  class TriangleError < StandardError 
    def message 
     "this triangle is invalid"
   end 
  
  
  
end
