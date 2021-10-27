
class Gearbox
  attr_reader :gear, :max_gear

  def initialize(max_gear)
    @gear = 0
    @max_gear = max_gear
  end

  def ch_gear(value)
    @gear = value
  end

  def ch_max_gear(value)
    @max_gear = value
  end


end
