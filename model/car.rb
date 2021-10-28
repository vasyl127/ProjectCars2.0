require_relative 'engine'
require_relative 'gearbox'


class Car
  attr_reader :speed, :max_speed, :odo, :name, :engine, :gearbox

  def initialize(config)
    @speed = 0
    @odo = 0
    @max_speed = config[:max_speed]
    @name = config[:name]
    @engine = Engine.new(config)
    @gearbox = Gearbox.new(config)
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
