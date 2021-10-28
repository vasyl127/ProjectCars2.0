require_relative "../model/garage"

class GarageController
  attr_reader :garage

  def initialize
    @garage = Garage.new
  end

  def get_car(value)
    garage.get_car(value)
  end

  def get_all_cars
    garage.get_all_cars
  end

  def update_car

  end

  def add_car(car)
    garage.add_to_garage(car)
  end

  def remove_car

  end

end
