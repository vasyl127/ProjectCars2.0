require_relative 'controllers/app_controller'
require_relative 'services/validator'

app = AppController.new
car = app.create_car


car.start
car.gas
car.car_state


# i=0
# while i==0
# 
#   print " Enter your command:"
#   string = gets.chop
#   Validator.valid?(string)
#
# end
