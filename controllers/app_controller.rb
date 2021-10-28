require_relative 'car_controller'
require_relative 'garage_controller'
require_relative '../view/view'
require_relative '../services/factory'



class App
  attr_reader :factory, :garage

  def initialize
    @factory = Factory.new
    @garage = GarageController.new
  end

  def create_car
    factory.create_car
    garage.add_car(factory.car)
    car = CarController.new(garage.get_car(0))
    return car
  end

end
