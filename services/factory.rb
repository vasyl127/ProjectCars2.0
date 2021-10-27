require_relative '../view/view'


class Factory
  attr_reader :max_rpm, :torque, :max_gear, :max_speed, :name



  def create_car
    load_car
    load_engine
    load_gearbox
  end

  def load_car
    puts "Enter name:"
    @name = View.user_input
    puts "Enter max_speed:"
    @max_speed = View.user_input.to_i
  end

  def load_engine
    puts "Enter max_rpm:"
    @max_rpm = View.user_input.to_i
    puts "Enter torque:"
    @torque = View.user_input.to_i
  end

  def load_gearbox
    puts "Enter max_gear:"
    @max_gear = View.user_input.to_i
  end

end
