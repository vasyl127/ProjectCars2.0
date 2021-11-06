require_relative 'car_controller'
require_relative 'garage_controller'
require_relative '../view/view'
require_relative '../services/factory'



class AppController
  attr_reader :factory, :garage

  def initialize
    @factory = Factory.new
    @garage = GarageController.new
  end

  def create_car(value)
    factory.create_car
    garage.add_car(factory.car)
    car = CarController.new(garage.get_car(value))
    car
  end

end
