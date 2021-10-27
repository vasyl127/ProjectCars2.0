
class Engine
  attr_reader :rpm, :max_rpm, :torque

  def initialize(max_rpm, torque)
    @rpm = 0
    @max_rpm = max_rpm
    @torque = torque
  end

  def ch_rpm(value)
    @rpm = value
  end

  def ch_max_rpm(value)
    @max_rpm = value
  end

  def ch_torque(value)
    @torque = value
  end


end
