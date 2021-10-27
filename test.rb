require_relative 'controllers/car_controller'
require_relative 'view/view'
require_relative 'services/factory'


factory = Factory.new
factory.create_car
car = CarController.new(factory)
car.start
car.gas
car.gas
car.gas
car.g_up
car.g_up
car.shift_speed
car.shift_odo
car.car_state
