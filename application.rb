require_relative 'controllers/app_controller'
require_relative 'services/validator'

app = AppController.new
car1 = app.create_car(0)
car2 = app.create_car(1)



car1.car_state
car2.car_state
