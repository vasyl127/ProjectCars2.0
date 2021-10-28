
class Garage
  attr_reader :cars

  def initialize
    @cars = Array.new
  end

  def add_to_garage(car)
    @cars << car
  end

  def get_all_cars
    cars
  end

  def get_car(value)
    cars[value]
  end
end
