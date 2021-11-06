require_relative '../view/view'

class Validator
class << self

  def name_valid?(string)
    if string != ''
      true
    else
      error(string)
      false
    end
  end

  def max_rpm_valid?(string)
    if validate(string) && string.to_i <= 12000
      true
    else
      error_max_rpm(string)
      false
    end
  end

  def max_speed_valid?(string)
    if validate(string) && string.to_i <= 400
      true
    else
      error_max_speed(string)
      false
    end
  end

  def torque_valid?(string, max_rpm)
    if validate(string) && max_rpm >= string.to_i
      true
    else
      error_torque(string)
      false
    end
  end

  def max_gear_valid?(string)
    if validate(string) && string.to_i <= 9 && string.to_i >= 1
      true
    else
      error_max_gear(string)
      false
    end
  end

  def validate(string)
    if string =~ /^[0-9]*$/ && string != ''
      true
    else
      error(string)
      false
    end
  end

  def error(string)
    puts "Error with string: '#{string}'
Please, try again"
    View.click_enter
    View.remove(2)
  end

  def error_torque(string)
    puts "Error with string: '#{string}'
Incorect Torque value"
    View.click_enter
    View.remove(2)
  end

  def error_max_gear(string)
    puts "Error with string: '#{string}'
Don't have this gearbox in storage"
    View.click_enter
    View.remove(2)
  end

  def error_max_speed(string)
    puts "Error with string: '#{string}'
It's so fast"
    View.click_enter
    View.remove(2)
  end

  def error_max_rpm(string)
    puts "Error with string: '#{string}'
Don't have this engine in storage"
    View.click_enter
    View.remove(2)
  end

end
end
