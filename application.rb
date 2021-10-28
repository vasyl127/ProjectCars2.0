require_relative 'controllers/app_controller'

app = App.new
car = app.create_car


car.start
car.gas
car.car_state
