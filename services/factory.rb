require_relative '../view/view'
require_relative '../model/car'
require_relative 'validator'


class Factory
  attr_reader :max_rpm, :torque, :max_gear, :max_speed, :name, :car

  def initialize
    # @name = "Default_Name"
    # @max_rpm = 4000
    # @torque = 2100
    # @max_gear = 5
    # @max_speed = 160
    go_to_default_params
  end

  def car_params
    "Car params
Name      --> #{name}
MAX RPM   --> #{max_rpm}
Torque    --> #{torque}
Max Gear  --> #{max_gear}
Max Speed --> #{max_speed}

"
  end

  def create_car
    puts car_params
    puts "Do you want to change default params?(1/0)"
    if View.user_input == '1'
      View.remove(8)
      load_params
    else
      View.remove(8)
    end
    @car = Car.new(max_rpm: max_rpm, torque: torque, max_gear: max_gear, max_speed: max_speed, name: name)
    go_to_default_params
  end

  def go_to_default_params
    @name = "Default_Name"
    @max_rpm = 4000
    @torque = 2100
    @max_gear = 5
    @max_speed = 160
  end

  def load_params
    load_name
    load_max_rpm
    load_torque
    load_max_gear
    load_max_speed
  end

  def load_name
    puts car_params
    puts "  Enter name:"
    string = View.user_input
    while !Validator.name_valid?(string)
      string = View.user_input
    end
    @name = string
    View.remove(8)
  end

  def load_max_speed
    puts car_params
    puts "  Enter max_speed:"
    string = View.user_input
    while !Validator.max_speed_valid?(string)
      string = View.user_input
    end
    @max_speed = string.to_i
    View.remove(8)
  end

  def load_max_rpm
    puts car_params
    puts "  Enter max_rpm:"
    string = View.user_input
    while !Validator.max_rpm_valid?(string)
      string = View.user_input
    end
    @max_rpm = string.to_i
    View.remove(8)
  end

  def load_torque
    puts car_params
    puts "  Enter torque:"
    string = View.user_input
    while !Validator.torque_valid?(string, max_rpm)
      string = View.user_input
    end
    @torque = string.to_i
    View.remove(8)
  end

  def load_max_gear
    puts car_params
    puts "  Enter max_gear:"
    string = View.user_input
    while !Validator.max_gear_valid?(string)
      string = View.user_input
    end
    @max_gear = string.to_i
    View.remove(8)
  end

end
