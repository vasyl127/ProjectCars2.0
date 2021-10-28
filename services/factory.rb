require_relative '../view/view'
require_relative '../model/car'


class Factory
  attr_reader :max_rpm, :torque, :max_gear, :max_speed, :name, :car

  def initialize
    @name = "Car_Name"
    @max_rpm = 8000
    @torque = 4100
    @max_gear = 8
    @max_speed = 210
  end


  def create_car
    puts "Use default car params?(1/0)"
    load_params if View.user_input != '1'
    View.remove(1)
    @car = Car.new(max_rpm: max_rpm, torque: torque, max_gear: max_gear, max_speed: max_speed, name: name)
  end

  def load_params
    puts "  Enter name:"
    @name = View.user_input
    View.remove(1)
    puts "  Enter max_speed:"
    @max_speed = View.user_input.to_i
    View.remove(1)
    puts "  Enter max_rpm:"
    @max_rpm = View.user_input.to_i
    View.remove(1)
    puts "  Enter torque:"
    @torque = View.user_input.to_i
    View.remove(1)
    puts "  Enter max_gear:"
    @max_gear = View.user_input.to_i
    View.remove(1)
  end


end
