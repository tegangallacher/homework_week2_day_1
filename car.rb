class Car

  attr_reader :fuel_level, :speed

  def initialize(colour, model, fuel_level, speed)
     @colour = colour
     @model = model
     @fuel_level = fuel_level
     @speed = speed
  end

  def accelerate
    @fuel_level -= 5
    @speed += 10
  end 

  def brake
    return "not enough speed to brake"  if @speed <= 9 
     @speed -= 10
     return "braking"
  end

end

