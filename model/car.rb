
class Car
  attr_reader :speed, :max_speed, :odo, :name

  def initialize(max_speed, name)
    @speed = 0
    @odo = 0
    @max_speed = max_speed
    @name = name
  end

  def ch_speed(value)
    @speed = value
  end

  def ch_max_speed(value)
    @max_speed = value
  end

  def ch_odo(value)
    @odo = value
  end

  def ch_name(value)
    @name = value
  end


end
